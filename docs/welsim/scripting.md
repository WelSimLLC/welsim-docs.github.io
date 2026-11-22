# Scripting and automation

Since WELSIM 3.4 the application core runs as a scriptable engine. Every object that
you create with the mouse — parts, meshes, materials, boundary conditions, studies,
results — is also reachable through a single JSON API, so the same model can be built
and inspected by a script, from a terminal, or by an AI agent.

Three front ends share that one API:

| Front end | Runs where | Best for |
| --- | --- | --- |
| [Python Console](#python-console) | Inside the WELSIM window | Quick automation, checking a model, learning the API |
| [WsmCli](#command-line-host-wsmcli) | Command line, no GUI | Batch runs, regression jobs, CI |
| [MCP server](#mcp-server-for-ai-agents) | Command line, talks to the open WELSIM window | AI agents (Claude, Hermes and other MCP clients) |

All three need the **Scripting & AI (MCP)** component of the installer, which installs
the Python runtime in `<install dir>\python`, the automation scripts in
`<install dir>\mcp`, and the engine `WelSimEngine.dll` and `WsmCli.exe` in
`<install dir>`.

Nothing leaves your computer. The interface between the front end and WELSIM is a
local socket on `127.0.0.1` protected by a per-session token, and WELSIM itself needs
no internet connection.

## Python Console

The console is a docking window, hidden by default. Open it with
**View → Windows → Python Console**.

* Type a line and press **Enter** to run it. The command and its output scroll up together.
* Press **Ctrl+Enter** for a new line (`... ` continuation prompt) when you want a multi-line block.
* Pasting several lines shows them in full and runs them on **Enter**.
* Press **Ctrl+L** to clear the terminal.
* Output is printed in the terminal: normal text, errors in red, information in grey.
* The namespace is persistent, so a variable you set stays available until you close WELSIM.

The console ships with helper functions that call WELSIM directly:

| Helper | What it does |
| --- | --- |
| `engine_info()` | Identifies the running WELSIM session (application, process id, open projects) |
| `api_describe()` | Lists every API method with its arguments |
| `doc_new()`, `doc_list()`, `doc_activate(name)`, `doc_close(name)` | Document lifecycle |
| `obj_add(command, msg=0)` | Runs an *add object* command (for example `Shape_Box`) and reports the created `{id, name, type}` |
| `cmd_run(name, msg=0)` | Runs any registered WELSIM command by name, exactly as the menu does; `msg` is the command action index, `0` is the normal one |
| `cmd_list(name_filter=None, module=None)`, `cmd_categories(name_filter=None)`, `cmd_find(pattern)` | Discovers command names |
| `call(method, args)` | Escape hatch: any API method, raw |

A short session:

```python
doc_new()                              # a fresh WELSIM project in the GUI
obj_add("Shape_Box")                   # the Box tool, same as the Geometry button
cmd_list(filter="Pressure")            # which commands exist for pressure loads
api_describe()                         # everything that can be called
```

Because the console drives the same API as the external clients, a snippet validated
in the console behaves identically in `WsmCli` or in an MCP agent.

## Command-line host: WsmCli

`WsmCli.exe` sits next to `runWelSim.exe`. It starts the same engine without the
graphics window, which is what you want on a build server or in a batch job.

```
WsmCli [--version] [--diagnose] [--selftest] [--license]
WsmCli --call <method> [json-args] [--call <method> [json-args]]...
WsmCli --serve [--token T] [--portfile PATH]
```

| Option | Meaning |
| --- | --- |
| `--version` | Engine and interface protocol versions |
| `--diagnose` | Initialise the engine, print a JSON snapshot, exit |
| `--selftest` | Engine + model types + license smoke test; prints `selftest: PASS` |
| `--license` | Report the license state |
| `--call` | Run one API method; repeat the option to run several calls in one engine process, in order |
| `--serve` | Keep the process alive as a local IPC server (NDJSON, token handshake) |

Examples:

```bat
WsmCli.exe --selftest
WsmCli.exe --diagnose
WsmCli.exe --call doc.new
```

The JSON argument is optional and must be quoted for your shell, for example
`WsmCli.exe --call obj.set "{\"name\":\"Box\",\"prop\":\"Label\",\"value\":\"bracket\"}"`.

## MCP server for AI agents

The Model Context Protocol (MCP) adapter exposes the **live WELSIM window** to an AI
agent. The agent asks for a document or an object, the adapter forwards the request to
the running WELSIM session, and the real command runs in the GUI:

```
AI agent --MCP/stdio--> welsim_mcp_server.py --local RPC--> WELSIM window
```

Requirements: WELSIM running, and Python 3.14 with the MCP SDK
(`python -m pip install mcp`). Any Python 3 that can import the shipped scripts works
for the console and `WsmCli` as well.

Point your MCP client at `<install dir>\mcp\welsim_mcp_server.py`:

=== "Claude Desktop, Claude Code and other JSON clients"

    ```json
    {
      "mcpServers": {
        "welsim": {
          "command": "C:/path/to/python.exe",
          "args": ["C:/Program Files/WELSIM/mcp/welsim_mcp_server.py"]
        }
      }
    }
    ```

=== "Hermes Agent (`config.yaml`)"

    ```yaml
    mcp_servers:
      welsim:
        command: "C:/path/to/python.exe"
        args: ["C:/Program Files/WELSIM/mcp/welsim_mcp_server.py"]
        timeout: 300
    ```

The agent sees a small set of generic tools rather than one tool per WELSIM command:

| Tool | Purpose |
| --- | --- |
| `welsim_status` | Is a WELSIM session reachable, and which one |
| `doc_new` / `doc_list` / `doc_activate` / `doc_close` | Document lifecycle |
| `object_add` | Add an object (for example a box), with the real created `{id, name, type}` |
| `command_run` | Run any registered WELSIM command by name |
| `command_list` / `command_categories` | Discover command names, by filter or module |
| `api_describe` | The raw method table |

WELSIM is discovered on every call, so WELSIM can be started, closed or restarted
between requests without reconfiguring the client. The session accepts **one**
automation connection at a time (the last client wins): do not drive WELSIM from two
agents at once.

## API methods

In the GUI, the methods operate on the open session:

| Method | Arguments |
| --- | --- |
| `engine.ping`, `engine.info`, `engine.quit` | status of the session; `engine.quit` closes the connection only, WELSIM keeps running |
| `api.describe` | lists all methods with their usage |
| `doc.list` | open projects and the current one |
| `doc.new` | optional `name`; creates a project the same way **File → New** does |
| `doc.activate`, `doc.close` | `name` of the project |
| `obj.add` | `command` to run plus optional `msg`; reports created `{id, name, type}` |
| `cmd.list` | optional `filter`, `module`; every registered command with its module, group and text |
| `cmd.run` | `name` of the command plus optional `msg` |

In batch mode (`WsmCli`) the same style of calls works without a window, and the
document and object methods are extended:

| Method | Arguments |
| --- | --- |
| `engine.ping`, `engine.info`, `engine.quit`, `engine.busy` | `engine.busy` reports or sets the busy flag; while busy, write methods are refused |
| `api.describe` | lists all methods with their usage |
| `doc.list`, `doc.new`, `doc.open`, `doc.save`, `doc.close`, `doc.refresh` | project files; `doc.save` without a path saves in place |
| `obj.list`, `obj.add`, `obj.remove`, `obj.props`, `obj.get`, `obj.set`, `obj.refresh` | objects by `name` in a document; `obj.set` takes `prop` and `value` |

`api_describe()` (or `api.describe`) always prints the authoritative list for the
host you are talking to, so check it after an upgrade.

---
<small>
Model Context Protocol is an open standard; WELSIM's adapter is local to your machine
and does not send your model data anywhere.
</small>
