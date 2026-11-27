# Preferences

The **Preferences** dialog collects the user settings of WELSIM. Settings entered here are stored per user, applied to the whole application, and kept between sessions.

Open it from the menu **File > Preferences...** (the *Std_DlgUserPref* command). The dialog has a page list on the left, the settings of the selected page on the right, and four buttons at the bottom:

| Button | Action |
| ------ | ------ |
| **OK** | Save all changes and close the dialog. |
| **Apply** | Save all changes and keep the dialog open. |
| **Cancel** | Close the dialog and discard every change made in this session of the dialog. |
| **Reset** | Clear **all** user settings and restore the factory defaults. WELSIM asks for confirmation first ("Do you want to clear all your user settings?"). |

Editing is staged: changing a control updates the in-memory state only; nothing is written to your user settings until you press **OK** or **Apply**.

The seven pages are described below.

## General

The General page has four tabs.

### Project Management

| Setting | Description |
| ------- | ----------- |
| **Default Folder for Permanent Files** | Folder where WELSIM saves new projects and other permanent files. Use **Browse** to change it. |
| **Folder for Temporary Files** | Folder for working/scratch files created during sessions, solves and post-processing. |
| **.wspz Compression Level** | Compression level used when a project is archived into a single `.wspz` package. Higher levels produce smaller archives at the cost of speed. |
| **Size of recent projects** | How many projects are kept in the *Recent Projects* list. |

### Appearance

| Setting | Description |
| ------- | ----------- |
| **Language** | User-interface language. Takes effect after restarting WELSIM. |
| **Number of significant digits** | Digits shown for numeric values in property fields and tables. |
| **Number of files in recently used files list** | Length of the recently-used-files list. |
| **Size of toolbar icons** | Icon size of the toolbars. |
| **User interface style** | UI theme/style of the application. |

### Units

| Setting | Description |
| ------- | ----------- |
| **Default Units** | The unit system used by every new document: Metric (kg, m, s, A, N, V) — MKS; Metric (kg, mm, s, mA, N, mV) — MMKS; Metric (g, cm, s, A, dyne, V) — CMGS; Metric (tonne, mm, s, mA, N, mV); Metric (kg, um, s, mA, uN, V); Metric (g, cm, us, A, N, V); Metric (kg, mm, ns, A, N, V); U.S. Customary (lbm, ft, s, F, A, lbf, V); U.S. Customary (lbm, in, s, F, A, lbf, V). |
| **Angular Velocity Unit** | rad/s or RPM. |
| **Angle Unit** | Degrees or Radians. |
| **Temperature Unit** | Celsius or Kelvin (for the metric systems). |
| **Unit Systems — View** | Opens the Unit Converter so you can inspect and convert between the unit systems. |

The unit system decides how values are displayed and interpreted in the Properties and Tabular Data windows — for example, entering `10` into a length field under MKS is shown as `10 m`.

### Miscellaneous

| Setting | Description |
| ------- | ----------- |
| **FFMPEG executable** | Path to `ffmpeg`, used to turn result animations into video files. |
| **Video frame rate** | Frame rate of the generated videos. |
| **Beta features** | Enable pre-release features. |
| **Report crash** | Send crash reports to WelSimulation. |
| **Check experimental version** | Let WELSIM check for experimental builds in addition to stable updates. |
| **Close dialog after inter-process communication** | Automatically close the progress dialog when an external solver finishes. |
| **Model Context Protocol folder** | See [Model Context Protocol folder](#model-context-protocol-folder) below. |

#### Model Context Protocol folder

WELSIM ships a small Python harness that drives the application from outside: the MCP/RPC automation bridge used by AI assistants and IDE integrations, and the regression-test infrastructure used to exercise the GUI. The **Model Context Protocol folder** is the single home of that shared Python code (the RPC server module, the console runner, the client and test helpers).

| | |
| --- | --- |
| **Default** | A folder named `mcp` next to the WELSIM executable, e.g. `C:\Program Files\WELSIM\v34\mcp`. The path is always absolute. |
| **Who uses it** | The built-in Python console, the RPC bridge that automation clients connect to, and regression test scripts all resolve their shared Python modules from this folder. |
| **Browse** | Pick a different folder, for example a deployment that keeps one shared harness for several WELSIM installations. |
| **Folder missing** | If the configured folder does not exist, WELSIM prints a warning in the **Output** window at startup telling you that the shared MCP/RPC/regression python code cannot be found. An empty or relative path in the settings is repaired to the default absolute folder at startup. |

Leave this setting at its default unless your deployment deliberately relocates the harness; restart WELSIM after changing it.

## Geometry

| Setting | Description |
| ------- | ----------- |
| **Geometry persistence — CAD file format** | Native CAD format used to store geometry inside a project (round-trip fidelity vs. file size). |
| **Import** | Options controlling how imported CAD files are read. |

## Mesh

| Setting | Description |
| ------- | ----------- |
| **Mesh Generator** | Which mesher WELSIM drives: the built-in mesher or external Gmsh. |
| **Gmsh Executable file** | Path to the Gmsh executable when Gmsh is selected (**Browse** to locate it). |
| **Inter-Processing via** | Data exchange channel used when meshing runs through an external mesher process. |
| **Mesh file format** | File format used for exchanged mesh files. |
| **File encoding** | ASCII or Binary mesh files. |
| **MFEM/Palace — Default Mesh Format** | Mesh format written for the MFEM/Palace electromagnetic workflows. |
| **Code_Aster — Default Mesh Format** | Mesh format written for the Code_Aster workflow. |

## Analysis

The Analysis page groups the default behavior of the solvers into six tabs.

| Tab | Settings |
| --- | -------- |
| **Connections** | Default **Type**, **Formulation** and **Behavior** applied to newly created connections. |
| **Convergence** | **Target Change** and **Allowable Change** used by the iterative nonlinear solvers to declare convergence. |
| **Frequency** | **Min Range (Hz)** / **Max Range (Hz)** and **Limit Search to Range** for eigenvalue searches, **Max Number of Modes**, and **Cyclic Phase Number of Steps**. |
| **Graphics** | Default post-processing display: **Edge Option**, **Contour Option**, **Mesh Visibility**, **Flat Contour Tolerance**, **Max Number of Annotations to Show**, and whether the **Min/Max annotations** are shown. |
| **Settings and Solution** | **Output Control** for static and transient structure (Stress and Strain, Nodal Forces, Calculate Reactions); **Result Animation** (use overall min/max, frame rate); **High Performance Computing** (maximum number of threads or a fixed thread count); **Save Options** (save the project before and/or after a solution). |
| **Report** | **Custom Report Generator Folder** for report generator scripts (**Browse**), **Max Number of Table Columns**, **Include Figures**, and default **Figure Dimensions** (chart width/height, graphics width/height and resolution in pixels). |

## Third-party

Paths to external solvers and post-processors. Each entry has **Browse** and **Auto search** (which locates a locally installed copy automatically). See [External solvers](../external_solvers.md) for what each program is used for.

| Group | Entries |
| ----- | ------- |
| **Solvers — Directory** | Elmer FEM home directory; OpenRadioss home directory. |
| **Solvers — Executable File** | CalculiX, Palace, Su2, Lammps executables. |
| **Post-Processors — Executable File** | ParaView, VisIt, Generic Mapping Tools (GMT), OVITO Basic. |

## 3D Graphics

| Group | Settings |
| ----- | -------- |
| **3D View Settings** | **Anti-Aliasing** quality, **WELSIM Logo color**, **Size of coordinate system symbol**, **Ruler color**. |
| **Camera Type** | Perspective or orthographic camera. |
| **Selection Color** | Color used to highlight picked geometry, plus **Pick radius (px)** — how close the mouse must be to pick. |
| **Background Color** | Graphics window background. |
| **Exploded View** | Explosion axis (X, Y, Z, XY, XZ, YZ, XYZ) and **Explosion Scale**. |

## Output

| Group | Settings |
| ----- | -------- |
| **Colors** | Text color in the Output window for **Normal messages**, **Log messages**, **Warnings** and **Error messages**. |
| **Output** | **Auto scroll down for new messages** — keep the Output window scrolled to the newest line. |

## Where settings are stored

Preferences are kept in your user profile (`%APPDATA%\WELSIM\...` on Windows, the equivalent under your home folder on Linux) — they follow your user account, not the installation. **Reset** wipes that file and puts every option back to its factory default.
