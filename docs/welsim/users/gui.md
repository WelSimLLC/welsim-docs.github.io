# Application user interface
This section describes the fundamental components of the WELSIM application interface, their usage, and behaviors.


## WELSIM application window
The functional components of the graphical user interface include the following as listed in Table below.

| Window Component | Description |
| ---------------- | ----------- | 
| Main Menus | This menu includes all application level actions such as **File** and **About** |
| Standard Toolbar | This toolbar contains commonly used actions such as **Mesh** and **Solve** |
| Graphics Toolbar | This toolbar contains graphics related actions such as **Zoom** and **Selection** |
| Project Explorer (Tree) Window | This window contains a list of simulation objects that represents the modeling settings. Since it contains the branches and trunk, this windows is also called tree outline. The context menu for each object could vary. The object can be renamed, deleted, duplicated, copied and pasted |
| Properties Window | This window displays the properties of each object in the tree list. The user can view or edit the property values |
| Graphics View | This window shows and manipulates the visual content of the simulation entities. This window can display: 3D geometry, mesh, annotation, coordinate system symbol, spreadsheet, etc |
| Output Window | This window display the messages from the system or solvers | 
| Tabular Data Window | This window lists the data that is input from user or output from the solvers. The listed data is always consistent with the curves in the Chart window |
| Chart Window | This window plots the graphics that is input from user or output from the solvers. The curves are always consistent with the table data in the Tabular Data window |
| Context Menu | This menu shows up as user right mouse button click on objects, graphics, toolbars, etc. Different entities may show different context |
| Status Bar | This widget shows the message and status on the bottom area of the application interface | 


## Windows management
The WELSIM window owns panes that can carry project objects, properties, graphics, output, tabular data, and chart views.Window management functionalities enable you to dock, hide, show, move, and resize the windows. 

### Hiding and showing
The windows can be hidden or shown by setting the view controller. As shown in Figures below, there are two ways to control the window views:

1. Browse the **View Menu** > **Windows**, toggle the windows that you would show or hide.
2. Right mouse button clicks on the **Toolbar**, you can toggle the windows.

You also can click the cross button on the title bar to hide the window. 

![finite_element_analysis_welsim_gui_window1](../../img/3_guide/ch3_guide_window1.png "Show or hide the windows through View Menu.")
![finite_element_analysis_welsim_gui_window2](../../img/3_guide/ch3_guide_window2.png "Show or hide the windows through right click on Toolbar.")

### Docking and undocking
You can drag a window's title bar to move a window pane. Once you start to drag the window, the activated window is moving with your mouse. You can release the button on the target area to settle the new docking area. You can double-click a window's title bar to move it around the screen. The size of the window can be adjusted easily by dragging the borders or corners. You also can click the undocking button on the title bar to undock the window. 

### Moving and resizing
You can drag a window's title bar to move and undock a window pane. Once you start to drag the window, the potential dock target area appears in the allowed space. At this moment, you can release the button to dock the window on the target area. 


## Main windows
Besides the menu and toolbar widgets of the user interface, some other widgets are available. Those windows appear by default or when specific options are activated. The availability of those windows is controlled by the **VIEW** > **Windows** menu. This section discusses the following windows:

* Project Explorer (Tree list)
* Properties View
* Graphics Window
* Output Window
* Tabular Data Window
* Chart Window
* Spreadsheet Window

As the user selects a tree object in the Project Explorer window, all attributes for the selected object in Properties View, Tabular Data, and Chart Window are displayed or updated. The Properties window contains two tabs, and the Data tab shows the attributes about the object data, the Display tab lists the specifications about the graphics. The Graphics window shows the three-dimensional geometry model, depending on the tree object selection, shows information about the object details, highlighted areas, and annotations. The Output window displays the messages from the system or solvers. The Spreadsheet window shows the worksheet data for specific tree objects. 

Those user interface components are described in the following sections:

### Project explorer
The object Tree list represents the logical steps of the conducted simulation study. All branches relate to the parenting object. For instance, a key object called Study contains Study Settings and boundary condition objects. The user can right click on an object to activate a context menu that relates to the clicked object. The objects can be copied, pasted, duplicated, and renamed. 

An example of the Project Explorer window is shown in Figure below.

![finite_element_analysis_welsim_gui_tree1](../../img/3_guide/ch3_guide_tree1.png "An example of Project Explorer window pane")

!!! note
    The tree outline contains all elements that applied in the simulation study. The root object displays the number of projects in the solution. The Material project node includes all material specification. The FEM project contains the analysis settings, multiple FEM projects are allowed in the solution.

#### Knowing the tree objects
The tree objects in the Project Explorer window have the following conventions:

* Object Icon appears to the left of the object in the tree list. The icon is intended for users to identify the type of object. For example, icons for computational results always consist of three colors (red, green, and blue), which can help distinguish other objects.
* A right-head arrow symbol to the left of the object indicates that this object contains child sub-objects. Clicking the arrow to expand the object and display the children.
* A down-head arrow symbol to the left of the object indicates that the object expends all child objects. Clicking the arrow to collapse the sub-objects.
* To delete an object from the tree list, you can right click on the target object and select **Delete**.

#### Object status symbols
The status icons are smaller than the tree object icon and located to the right bottom corner of the object icon. These symbols are intend to provide a quick visual reference to the status of the object. The details of the status symbols are described in Table below.

| Status Name | Symbol Icon | Description |
| ----------- | ----------- | ----------- |
| Underdefined | ![finite_element_analysis_welsim_status_undefined](../../img/3_guide/ch3_guide_status_underdefined.png){:width="100%"} | A study object or its child objects requires user input values |
| Error | ![finite_element_analysis_welsim_status_error](../../img/3_guide/ch3_guide_status_error.png){:width="100%"} | A fixed supported object may stop the simulation due to the confliction with other settings, user needs to resolve the confliction to continue the modeling |
| OK | ![finite_element_analysis_welsim_status_ok](../../img/3_guide/ch3_guide_status_ok.png){:width="100%"} | A mesh settings object is well defined or any action about this object is succeed |
| Suppressed | ![finite_element_analysis_welsim_status_suppressed](../../img/3_guide/ch3_guide_status_suppressed.png){:width="100%"} | An object is suppressed, such object becomes deactivated and won't participate the simulation. User can unsuppress the object |
| Needs to be Updated | ![finite_element_analysis_welsim_status_needtoupdate](../../img/3_guide/ch3_guide_status_needtoupdate.png){:width="100%"} | An answers object or its child objects are not evaluated. Waiting for user to update |


#### Suppressing/Unsuppressing objects
Most of the objects in the Project Explorer window can be suppressed or unsuppressed by users. A suppressed object means that it is excluded from the further analysis. For example, suppressing a boundary condition excludes the boundary condition from the study and the further solutions. You also can unsuppress the object with the restored object attributes. 

There are two ways to suppress/unsuppress an object:

* Right-click the object, and then select Suppress from the context menu. Or
* In the property view of the object, set the Suppressed option to True. Conversely, you can unsuppress objects by setting the Suppressed option to False.


### Properties view
The Properties View is located in the bottom left corner of the main user interface by default, and the user can change the location by dragging the window pane. This view window provides the user with details and information that relate to the selected object in the [Project Explorer](#project-explorer). Some properties are read-only that cannot be changed by the users, and some properties allow users to input values. An example of Properties View of the object is shown in Figures below.

![finite_element_analysis_welsim_properties_view1](../../img/3_guide/ch3_guide_properties_view1.png "An example of Properties View for the object of contact. The Data tab of the properties.")
![finite_element_analysis_welsim_properties_view2](../../img/3_guide/ch3_guide_properties_view2.png "An example of Properties View for the object of contact. The Display tab of the properties.")


#### Features
The features of the Properties View include:

* Resizable and movable.
*  Drop-down cells for Boolean or Enumeration list.
*  Buttons to display a dialog box (such as color picker).
*  OK/Cancel buttons for geometry selection.
*  Property cell can change background color according to the content. 

#### Group property
The **Group Property** is a read-only and occupy the entire row of the Properties pane, as shown in Figure below.

![finite_element_analysis_welsim_group_property](../../img/3_guide/ch3_guide_group_title.png "An example of group field in the Properties pane, displayed with dark gray color.")

The group provides you better user experience by organizing the properties into distinct categories. 


#### Undefined or invalid properties
In the Properties View, the undefined or invalid fields are highlighted in yellow as shown in Figure below.

![finite_element_analysis_welsim_invalid_property](../../img/3_guide/ch3_guide_properties_invalid.png "An example of undefined fields highlighted in yellow.")

Once the property is well defined and becomes valid, highlight yellow color disappears.


#### Drop-down list
The combo property shows the drop-down list as user clicks the attribute as shown in Figure below. 

![finite_element_analysis_welsim_dropdown_property](../../img/3_guide/ch3_guide_properties_dropdown.png "An example of drop-down property")

!!! note 
    You can adjust the width of the columns by dragging the separator between the columns.


#### Text entry
In the text entry field, you can input strings, numbers, or integers, depending on the type of the cell as shown in Figure below.

![finite_element_analysis_welsim_text_property](../../img/3_guide/ch3_guide_properties_textentry.png "An example of text entry property.")

The invalid value for the specific cell will be discarded, or the cell shows red background.


#### Geometry selection
Geometry Selection allows users to scope topological entities from the graphics window. An example of Geometry Selection property is shown in Figure below. 

![finite_element_analysis_welsim_property_sel2](../../img/3_guide/ch3_guide_properties_geo_sel2.png "An example of Geometry Selection property.")

After selecting appropriate geometry entities, you can click the OK button to set the current selection into the field. Clicking the Cancel button does not change the pre-existing selection.


### 3D Graphics window
The 3D Graphics window displays the geometry, annotation, mesh, result, etc. The components in the graphics window could be: 

* 3D Graphics
* A scale rule
* A legend and a coutour controller (for result display)
* 2D Annotations (for boundary conditions, result display)
* 3D Annotations (for boundary conditions)
* Global coordinate system symbol
* Graphical toolbar
* Multi-purpose tabs
* WELSIM logo and version number

An example view of the Grpahics window is shown in Figure below.

![finite_element_analysis_welsim_graphics_full](../../img/3_guide/ch3_guide_graphics_full.png "A full view of the Graphics window.")

#### 3D View Controls
The blue bar across any 3D View shows a pushpin icon on its left. When the mouse rolls over this icon, a panel for configuring the 3D View is displayed. The panel is hidden when the mouse moves away. For persistent display of this panel, just click the pushpin icon.
![finite_element_analysis_welsim_graphics_3dview](../../img/3_guide/graphics_3d_controls.png "A view of the 3D View Controls.")

* **Center 3D view** (small square) centers the slice on the currently visible 3D view content and all loaded volumes (even if volumes that are not visible). The field of view (zoom factor) is not adjusted, therefore it may be necessary to zoom in/out to see all objects. To reset the center and field of view at the same time, click in the 3D view and hit r key.

* **Viewpoint direction** switches orientation of the view between standard directions. Clicking on Left, Right, Anterior, Posterior, Superior, Inferior button will make the 3D content viewed from that direction.

* **View link** button synchronizes properties across 3D views (viewpoint position, direction, ruler, orientation marker, etc. settings).

* **Orthographic/perspective rendering** mode toggle. Orthographic mode (parallel projection) is useful for assessing size, because displayed object size does not depend on distance from the viewpoint. Perspective mode provides better depth perception, because objects that are closer appear larger.

* **Ruler** controls display of ruler. Only available in orthographic rendering mode.

* **Stereo viewing** enables stereoscopic display. Red/blue and anaglyph modes just require inexpensive red/blue colored glasses. Other modes require special 3D display hardware. Note that SlicerVirtualReality extension offers superior stereo viewing and interaction experience, with fully immersive 3D visualization by a single click of a button, and rich interaction with objects in the scene using 3D controllers.

* More options (…)
    * Use depth peeling must be enabled for correct rendering of semi-transparent surfaces (in models, markups, etc). It may make rendering updates slightly slower and artifacts when volume rendering is used in the view.
    * Show/Hide frames per second (FPS) displays rendering speed in the corner of the view.
    * Show/Hide the logo of WELSIM
    * Show/Hide the version

* **Orientation Marker** controls display of human, cube, etc in lower right corner.

* **Visibility options** controls visibility of view background color and displayed components.

* **Spin** continuously spins the view around.

* **Rock** continuously rocks the view left-to-right.

* **Zoom in/out** slightly zooms in/out the view. Convenient buttons for touchscreens.


#### Context menu from RMB
Right mouse clicking shows you a context menu, which contains operations such as Zoom To Fit, Isometric View, Image to Clipboard, different camera views.

![finite_element_analysis_welsim_graphics_context_menu](../../img/3_guide/graphics_3d_rmb_context_menu.png "A view of the context menu of Graphics.")


### Tabular data window
**Tabular Data** window is designed in better reviewing the input and output data. When you select the following objects in the tree window, both Tabular Data and Chart windows display data on the interface. 

* Material properties
* Boundary conditions
* Body conditions
* Results
* Probe results

The listed data in Tabular Data window is consistent with the curves in the [Chart window](#chart-window). As an example shown in Figure below, you can see the maximum and minimum values at all time steps are consistent between those two windows. 

![finite_element_analysis_welsim_tabular_data_view1](../../img/3_guide/ch3_guide_tabular_view1.png "An example of Tabular Data window showing result data.")


### Chart window
The Chart window displays the curves for the selected tree object. The curves are consistent with the data in the [Tabular Data window](#tabular-data-window). An example of Chart window drawing the maximum and minimum values along time is shown in Figure below.

![finite_element_analysis_welsim_chart_view1](../../img/3_guide/ch3_guide_chart_view1.png "An example of Chart window showing result data.")

!!!note
    The Table and Chart share the same data, and both update synchronously. 

### Spreadsheet window
The spreadsheet window provides object data in the form of tables, charts, or text to you. This widget usually contains the summarized data for a collection of properties. Note that not all objects contain a spreadsheet window, only the object that has large data may own a spreadsheet window. The behaviors of the spreadsheet window are:

1. A spreadsheet designed to show large data on one field does not automatically display the data. You can open the spreadsheet window by double-clicking specific objects, such as Material and Study Setting objects. 
2. A new tab shows up as the spreadsheet window is open. You can close the window by clicking the cross button on the tab, or by pressing the OK button on the spreadsheet.

An example of the spreadsheet window is shown in Figure below.

![finite_element_analysis_welsim_spreadsheet_view1](../../img/3_guide/ch3_guide_spreadsheet_view1.png "An example of Spreadsheet window showing study settings for multi-steps.")


### Output window
The output window prompts you with feedback concerning the results of your actions in using WELSIM. In the current version, the output window mainly displays the message from the solvers. An example of output window displaying the solver messages is shown in Figure below.

![finite_element_analysis_welsim_output_view1](../../img/3_guide/ch3_guide_output_view1.png "An example of output window displaying messages from solver.")

The Output window pane contains several buttons, there are:

* Save Output Text: saves the output text into an external file.
* Clear Text: clears the text field.
* Stop Interprocess: discontinues the solver process.


## Main menus
The main menus contain the following items as shown in Figure below.

![finite_element_analysis_welsim_main_menu](../../img/3_guide/ch3_guide_main_menus.png "The main menus of the WELSIM application.")

### File menu
The FILE menu includes the following actions:

* **New**: Creates a new finite element analysis project.
* **Open**: Resumes the WELSIM solution from an external “*.wsdb” file.
* **Save**: stores the WELSIM solution to an external “.wsdb” file.
* **Save As**: stores the WELSIM solution to another external “.wsdb” file.
* **Close Project**: deletes the current finite element project.
* **Close All**: deletes all projects in the solution.
* **Quit**: Exit the application.

The items of the File menu is shown in Figure below.

![finite_element_analysis_welsim_menu_file](../../img/3_guide/ch3_guide_menu_file.png "Items in the File Menu.")


### View menu
The VIEW menu includes the following actions:

* **Zooms**: adjusts display scale of the graphics field, contains sub-items: Zoom Extents, Zoom In, Zoom Out, Box Zoom. 
* **Views**: changes the viewpoint to the graphics display field. Includes sub-items: Isometric, Top, Right, Front.
* **Graphics Window**: changes the mode of the graphics window. Includes sub-items: Docked, Undocked, and Full Screen.
* **Toolbars**: determines to show the toolbars on the uesr interface. The available toolbars include File, Material, Geometry, FEM, Structural, Thermal, Electromagnetic, Tools, and Help. 
* **Windows**: controls the display of the windows. The options that can be toggled are Project Explorer, Properties, Output, Tabular Data, and Chart windows.
* **Status Bar**: toggles the display of the status bar to the bottom of the main window.

The items of the View menu is shown in Figure below.

![finite_element_analysis_welsim_menu_view](../../img/3_guide/ch3_guide_menu_view.png "Items in the View Menu.")



### Material menu
The **MATERIAL** menu includes the following actions:

* **New Material Project**: adds a new material project if the tree has no material project.
* **Add Material**: defines a new material object.
* **Export Materials**: outputs material data into an external file with JSON format.

The items of the **Material Menu** is shown in Figure below.

![finite_element_analysis_welsim_menu_material](../../img/3_guide/ch3_guide_menu_material.png "Items in the Material Menu.")


### Geometry menu
The **GEOMETRY** menu includes the following actions:

* **Import**: creates new geometries from the external files with STEP or IGES format.
* **Export**: saves geometries into external STEP file.
* **Add Box**: creates a new 3D box shape.
* **Add Cylinder**: creates a new 3D cylinder shape.
* **Add Plate**: creates a new 3D plate shape.
* **Add Line**: creates a new 3D line shape.
* **Generate Solid**: create a 3D solid shape according to the enclosed surface shape.
* **Union**: consolidates multiple geometries into one geometry.
* **Intersection**: creates a geometry that is the common area of multiple geometries.
* **Difference**: creates a geometry that is differentiated between the selected geometries.
* **Show**: displays the selected geometry objects.
* **Hide**: hides the selected geometry objects.
* **Show All**: displays all geometries.
* **Hide All**: hides all geometries.

The items of the Geometry Menu is shown in Figure below.

![finite_element_analysis_welsim_menu_geometry](../../img/3_guide/ch3_guide_menu_geometry.png "Items in the Geometry Menu.")


### FEM menu
The **FEM Menu** includes the following actions:

* **Mesh All**: generates the mesh for the entire domain.
* **Clear Generated Mesh**: removes all generated mesh.
* **Check Mesh**: examines the quality of the generated mesh.
* **Add Mesh Settings**: adds a global mesh settings object to the tree. 
* **Add Mesh Method**: adds a local mesh method object to the tree.
* **Mesh Method**: generates the mesh for the geometries that are scoped in the mesh method object.
* **Connections**: adds a Connections object if no connection object is presented. 
* **Add Contact**: adds a Contact Pair object to the tree.
* **Add Study Settings**: adds a Study Settings object to the tree if no study settings object is presented.
* **Compute**: solves the finite element model.
* **Clear Calculated Solution**: remove the solved data in the current project.
* **User Defined Result**: adds a user-defined result object to the tree.
* **Evaluate Result**: evaluates the selected result objects.
* **Evaluate All**: evaluate all result objects in current project.
* **Clear Result**: remove the generated result data.
* **Export Result**: export the result data into an external file in ASCII format.

The items of the FEM Menu is shown in Figure below.

![finite_element_analysis_welsim_menu_fem](../../img/3_guide/ch3_guide_menu_fem.png "Items in the FEM Menu.")


### Structural menu
The **STRUCTURAL** menu includes the following actions:

* **Constraint**: adds a fixed support boundary condition object. It essentially sets displacement to zero.
* **Displacement**: adds a displacement boundary condition object.
* **Force**: adds a force boundary condition object.
* **Pressure**: adds a pressure boundary condition object.
* **Fixed Rotation**: adds a fixed rotation boundary condition object, specifically for the shell model.
* **Velocity**: adds a velocity boundary condition object, specifically for the transient structural analysis.
* **Acceleration**: adds a velocity boundary condition object, specifically for the transient structural analysis.
* **Body Force**: adds a body force condition object.
* **Acceleration**: adds a body acceleration condition object.
* **Earth Gravity**: adds a standard earth gravity condition object.
* **Rotational Velocity**: adds a rotational velocity object.
* **Displacement Result**: adds a displacement result object.
* **Stress Result**: adds a stress result object.
* **Strain Result**: adds a strain result object.
* **Velocity Result**: adds a velocity result object. It is available for the transient structural analysis.
* **Acceleration Result**: adds an acceleration result object. It is available for the transient structural analysis.
* **Rotation Result**: adds a ratation result object. It is available for the shell structure.
* **Reaction Force Probe**: adds a force reaction probe result.
* **Reaction Moment Probe**: adds a moment reaction probe result. It is available for the shell structure.

The items of the Structural menu is shown in Figure below.

![finite_element_analysis_welsim_menu_structural](../../img/3_guide/ch3_guide_menu_structural.png "Items in the Structural Menu.")


### Thermal menu
The THERMAL menu includes the following actions:

* **Temperature**: adds a temperature boundary condition object.
* **Heat Flux**: adds a heat flux boundary condition object.
* **Convection**: adds a heat convection boundary condition object.
* **Radiation**: adds a heat radiation boundary condition object.
* **Initial Temperature**: adds a initial temperature condition object. It is available for transient thermal analysis.
* **Temperature Result**: adds a temperature result object. 

The items on the Thermal menu is shown in Figure below.

![finite_element_analysis_welsim_menu_thermal](../../img/3_guide/ch3_guide_menu_thermal.png "Items in the Thermal Menu.")


### Electromagnetic menu
The ELECTROMAGNETIC menu includes the following actions:

* **Ground**: adds a ground boundary condition object. It essentially sets the voltage to zero.
* **Voltage**: adds a voltage boundary condition object.
* **Symmetry**: adds a symmetry boundary condition object.
* **Zero Charge**: adds a zero charge boundary condition object.
* **Surface Charge Density**: adds a surface charge density boundary condition object.
* **Electric Displacement**: adds an electric displacement boundary condition object.
* **Insulating**: adds an insulating boundary condition object. It essentially sets zero magnetic potential.
* **Magnetic Potential**: adds a magnetic potential boundary condition object.
* **Magnetic Flux Density**: adds a magnetic flux density boundary condition object.
* **Voltage Result**: adds a voltage result object.
* **Electric Field Result**: adds an electric field result object. 
* **Electric Displacement Result**: adds an electric displacement result object.
* **Magnetic Potential Result**: adds a magnetic potential result object.
* **Magnetic Field Result**: adds a magnetic field result object.
* **Magnetic Induction Field Result**: adds a magnetic induction field result object.
* **Energy Density Result**: adds an energy density result object.

The items of the Electromagnetic menu is shown in Figure below.

![finite_element_analysis_welsim_menu_em](../../img/3_guide/ch3_guide_menu_em.png "Items in the Electromagnetic Menu.")


### Tools menu
The TOOLS menu includes the following actions:

* Export Input Script: generates solver input scripts to the designated directory.
* Reveal Files in Explorer: opens the local directory that contains project files.

The items of the Tools menu is shown in Figure below.

![finite_element_analysis_welsim_menu_tools](../../img/3_guide/ch3_guide_menu_tools.png "Items in the Tools Menu.")


### Help menu
The HELP menu includes the following actions:

* Documentation: opens the default internet web browser, and visits [online documentation](http://docs.welsim.com).
* Website:  opens the default internet web browser, and visits [official website](https://welsim.com).
* License Manager: opens WELSIM license manager interface. You can activate the application with the license key or update the license here. 
* About: provides copyright and application version information.

The items of the Help menu is shown in Figure below.

![finite_element_analysis_welsim_menu_help](../../img/3_guide/ch3_guide_menu_help.png "Items in the Help Menu.")


## Toolbars
Toolbars are displayed across the top of the main user interface. Toolbars are dockable, and you can drag the toolbar to your preferred field. 

### File toolbar
The File toolbar contains application-level commands as shown in Figure below. Each icon button and its description follows:

* ![finite_element_analysis_welsim_gui_newdoc](../../img/icons/welsim_gui_newdoc.svg): creates a new finite element analysis project.
* ![finite_element_analysis_welsim_gui_save](../../img/icons/welsim_save.svg): saves solution into an external “*.wsdb” file.
* ![finite_element_analysis_welsim_gui_opendoc](../../img/icons/welsim_gui_opendoc.svg): resumes solution from an external “*.wsdb” file.
* ![finite_element_analysis_welsim_gui_closedoc](../../img/icons/welsim_gui_closedoc.svg): closes the current analysis project.

![finite_element_analysis_welsim_toolbar_file](../../img/3_guide/ch3_guide_toolbar_file.png "File Toolbar in the Main Window.")

### Material toolbar
The Material toolbar contains material-related simulation commands as shown in Figure below. Each icon button and its description follows:

* ![finite_element_analysis_welsim_materialobject](../../img/icons/welsim_materialobject.svg): creates a new material object. 
* ![finite_element_analysis_welsim_exportmaterial](../../img/icons/welsim_exportmaterial.svg): exports all material data into an external JSON file.

![finite_element_analysis_welsim_toolbar_material](../../img/3_guide/ch3_guide_toolbar_material.png "Material Toolbar in the Main Window.")

### Geometry toolbar
The Geometry toolbar contains geometry-related commands as shown in Figure below. Each icon button and its description follows:

* ![finite_element_analysis_welsim_gui_import](../../img/icons/welsim_gui_import_part.svg): imports the geometries from an external STEP or IGES file.
* ![finite_element_analysis_welsim_gui_export_part](../../img/icons/welsim_gui_export_part.svg): exports the geometries into an external STEP file.
* ![finite_element_analysis_welsim_part_box](../../img/icons/welsim_part_box.svg): creates a box shape.
* ![finite_element_analysis_welsim_part_cylinder](../../img/icons/welsim_part_cylinder.svg): creates a cylinder shape.
* ![finite_element_analysis_welsim_part_face](../../img/icons/welsim_part_face.svg): creates a plate shape.
* ![finite_element_analysis_welsim_part_line](../../img/icons/welsim_part_line.svg): creates a line shape.
* ![finite_element_analysis_welsim_part_union](../../img/icons/welsim_part_union.svg): consolidates the selected geometries into one part.
* ![finite_element_analysis_welsim_part_intersec](../../img/icons/welsim_part_intersec.svg): creates geometry from the commonly shared field of multiple geometries.
* ![finite_element_analysis_welsim_part_diff](../../img/icons/welsim_part_diff.svg): creates geometry from the difference among multiple geometries.

![finite_element_analysis_welsim_toolbar_geometry](../../img/3_guide/ch3_guide_toolbar_geometry.png "Geometry Toolbar in the Main Window.")


### FEM toolbar
The FEM toolbar contains finite element analysis commands as shown in Figure below. Each icon button and its description follows:

* ![finite_element_analysis_welsim_gui_import](../../img/icons/welsim_mesh.svg): generates the mesh for the entire domain.
* ![finite_element_analysis_welsim_gui_import](../../img/icons/welsim_clear_mesh.svg): clear the generated mesh.
* ![finite_element_analysis_welsim_gui_import](../../img/icons/welsim_mesh_check.svg): examines the mesh quality.
* ![finite_element_analysis_welsim_gui_import](../../img/icons/welsim_mesh_method.svg): creates a mesh method object, which is used for the local mesh settings.
* ![finite_element_analysis_welsim_gui_import](../../img/icons/welsim_mesh_method.svg): generates the mesh for the scoped geometries in mesh method object.
* ![finite_element_analysis_welsim_gui_import](../../img/icons/welsim_contact.svg): creates a new contact pair object.
* ![finite_element_analysis_welsim_gui_import](../../img/icons/welsim_solve.svg): solves the finite element model.
* ![finite_element_analysis_welsim_gui_import](../../img/icons/welsim_rst_user.svg): creates a new user-defined result object.
* ![finite_element_analysis_welsim_gui_import](../../img/icons/welsim_eval_result.svg): evaluates the selected result objects.
* ![finite_element_analysis_welsim_gui_import](../../img/icons/welsim_eval_allresult.svg): evaluates all result objects in current project.

![finite_element_analysis_welsim_toolbar_fem](../../img/3_guide/ch3_guide_toolbar_fem.png "FEM Toolbar in the Main Window.")


### Structural toolbar
The Structural toolbar contains structural analysis commands as shown in Figure below. Each icon button and its description follows:

* ![finite_element_analysis_welsim_bc_fixed](../../img/icons/welsim_bc_fixed.svg): creates a fixed support boundary condition object.
* ![finite_element_analysis_welsim_bc_displacement](../../img/icons/welsim_bc_displacement.svg): creates a displacement boundary condition object.
* ![finite_element_analysis_welsim_bc_force](../../img/icons/welsim_bc_force.svg): creates a force boundary condition object.
* ![finite_element_analysis_welsim_bc_pressure](../../img/icons/welsim_bc_pressure.svg): creates a pressure boundary condition object.
* ![finite_element_analysis_welsim_bc_fixed_rot](../../img/icons/welsim_bc_fixed_rot.svg): creates a fixed rotation boundary condition object.
* ![finite_element_analysis_welsim_bc_velocity](../../img/icons/welsim_bc_velocity.svg): creates a velocity boundary condition object. It is available for the transient structural analysis.
* ![finite_element_analysis_welsim_bc_acceleration](../../img/icons/welsim_bc_acceleration.svg): creates a acceleration boundary condition object. It is available for the transient structural analysis.
* ![finite_element_analysis_welsim_dc_bodyforce](../../img/icons/welsim_dc_bodyforce.svg): creates a body force domain condition object.
* ![finite_element_analysis_welsim_dc_acceleration](../../img/icons/welsim_dc_acceleration.svg): creates an acceleration domain condition object.
* ![finite_element_analysis_welsim_dc_gravity](../../img/icons/welsim_dc_gravity.svg): creates a standard earth gravity domain condition object.
* ![finite_element_analysis_welsim_dc_rotvelocity](../../img/icons/welsim_dc_rotvelocity.svg): creates a rotational velocity domain condition object.
* ![finite_element_analysis_welsim_result_disp](../../img/icons/welsim_result_disp.svg): creates a displacement result object.
* ![finite_element_analysis_welsim_result_stress](../../img/icons/welsim_result_stress.svg): creates a stress result object.
* ![finite_element_analysis_welsim_result_strain](../../img/icons/welsim_result_strain.svg): creates a strain result object.
* ![finite_element_analysis_welsim_rst_velocity](../../img/icons/welsim_rst_velocity.svg): creates a velocity result object. It is available for the transient structural analysis.
* ![finite_element_analysis_welsim_rst_acceleration](../../img/icons/welsim_rst_acceleration.svg): creates a velocity result object. It is available for the transient structural analysis.
* ![finite_element_analysis_welsim_rst_reaction_force](../../img/icons/welsim_rst_reaction_force.svg): creates a rotation result object. It is available for the shell model.
* ![finite_element_analysis_welsim_rst_reaction_force](../../img/icons/welsim_rst_reaction_force.svg): creates a force reaction probe object. 
* ![finite_element_analysis_welsim_rst_reaction_moment](../../img/icons/welsim_rst_reaction_moment.svg): creates a moment reaction probe object. It is available for the shell model.

![finite_element_analysis_welsim_toolbar_structural](../../img/3_guide/ch3_guide_toolbar_structural.png "Structural Toolbar in the Main Window.")


### Thermal toolbar
The Thermal toolbar contains thermal analysis commands as shown in Figure below. Each icon button and its description follows:

* ![finite_element_analysis_welsim_bc_temperature](../../img/icons/welsim_bc_temperature.svg): creates a temperature boundary condition object.
* ![finite_element_analysis_welsim_bc_heatflux](../../img/icons/welsim_bc_heatflux.svg): creates a heat flux boundary condition object.
* ![finite_element_analysis_welsim_bc_heat_convection](../../img/icons/welsim_bc_heat_convection.svg): creates a heat convection boundary condition object.
* ![finite_element_analysis_welsim_bc_radiation](../../img/icons/welsim_bc_radiation.svg): creates a heat radiation boundary condition object.
* ![finite_element_analysis_welsim_initial_temperature](../../img/icons/welsim_initial_temperature.svg): creates an initial temperature boundary condition object. It is available for the transient thermal analysis.
* ![finite_element_analysis_welsim_result_temperature](../../img/icons/welsim_result_temperature.svg): creates a temperature result object.

![finite_element_analysis_welsim_toolbar_thermal](../../img/3_guide/ch3_guide_toolbar_thermal.png "Thermal Toolbar in the Main Window.")


### Electromagnetic toolbar
The Electromagnetic toolbar contains electric and magnetic analyses commands as shown in Figure below. Each icon button and its description follows:

* ![finite_element_analysis_welsim_bc_ground](../../img/icons/welsim_bc_ground.svg): creates a ground boundary condition object.
* ![finite_element_analysis_welsim_bc_voltage](../../img/icons/welsim_bc_voltage.svg): creates a velocity boundary condition object.
* ![finite_element_analysis_welsim_bc_em_symmetry](../../img/icons/welsim_bc_em_symmetry.svg): creates a symmetry boundary condition object.
* ![finite_element_analysis_welsim_bc_zero_charge](../../img/icons/welsim_bc_zero_charge.svg): creates a zero charge boundary condition object.
* ![finite_element_analysis_welsim_bc_surface_charge](../../img/icons/welsim_bc_surface_charge.svg): creates a surface charge density boundary condition object.
* ![finite_element_analysis_welsim_bc_electricdisp](../../img/icons/welsim_bc_electricdisp.svg): creates an electric displacement boundary condition object.
* ![finite_element_analysis_welsim_bc_em_insulting](../../img/icons/welsim_bc_em_insulting.svg): creates an insulating boundary condition object.
* ![finite_element_analysis_welsim_bc_magneticpotential](../../img/icons/welsim_bc_magneticpotential.svg): creates a magnetic potential boundary condition object.
* ![finite_element_analysis_welsim_bc_magneticfluxdensity](../../img/icons/welsim_bc_magneticfluxdensity.svg): creates a magnetic flux density boundary condition object.
* ![finite_element_analysis_welsim_rst_voltage](../../img/icons/welsim_rst_voltage.svg): creates a voltage result object.
* ![finite_element_analysis_welsim_rst_efield](../../img/icons/welsim_rst_efield.svg): creates an electric field result object.
* ![finite_element_analysis_welsim_rst_dfield](../../img/icons/welsim_rst_dfield.svg): creates an electric displacement result object.
* ![finite_element_analysis_welsim_rst_magneticpotential](../../img/icons/welsim_rst_magneticpotential.svg): creates a vector magnetic potential result object.
* ![finite_element_analysis_welsim_rst_hfield](../../img/icons/welsim_rst_hfield.svg): creates a magnetic field result object.
* ![finite_element_analysis_welsim_rst_bfield](../../img/icons/welsim_rst_bfield.svg): creates a magnetic induction field result object.
* ![finite_element_analysis_welsim_rst_emenergydensity](../../img/icons/welsim_rst_emenergydensity.svg): creates an electromagnetic energy density result object.

![finite_element_analysis_welsim_toolbar_em](../../img/3_guide/ch3_guide_toolbar_em.png "Electromagnetic Toolbar in the Main Window.")


### Tool toolbar
The Tool toolbar contains assistance commands as shown in Figure below. Each icon button and its description follows:

```
To be added ...
```


### Help toolbar
The Help toolbar contains assistance commands as shown in Figure below. Each icon button and its description follows:

* ![finite_element_analysis_welsim_gui_onlinedoc](../../img/icons/welsim_gui_onlinedoc.svg): opens the default internet web browser, and visits [online documentation](http://docs.welsim.com).
* ![finite_element_analysis_welsim_gui_website](../../img/icons/welsim_gui_website.svg): opens the default internet web browser, and visits [official website](https://welsim.com).
* ![finite_element_analysis_welsim_gui_licmgr](../../img/icons/welsim_gui_licmgr.svg): opens WELSIM license manager interface. You can activate the application with the license key or update the license here. 
* ![finite_element_analysis_welsim_about](../../img/icons/welsim.svg): displays the copyrights and version information of WELSIM application.

![finite_element_analysis_welsim_toolbar_help](../../img/3_guide/ch3_guide_toolbar_help.png "Help Toolbar in the Main Window.")


### Graphics toolbar
The Graphics toolbar contains graphical operation commands as shown in Figure below. Each icon button and its description follows:

* ![finite_element_analysis_welsim_gui_zoomall](../../img/icons/welsim_gui_zoomall.svg): fits the entire model in the graphics window.
* ![finite_element_analysis_welsim_gui_zoomin](../../img/icons/welsim_gui_zoomin.svg): displays a closer view of the geometries.
* ![finite_element_analysis_welsim_gui_zoomout](../../img/icons/welsim_gui_zoomout.svg): displays a more distant view of the geometries.
* ![finite_element_analysis_welsim_gui_zoombox](../../img/icons/welsim_gui_zoombox.svg): displays the selected area of a model in a box that you define.
* ![finite_element_analysis_welsim_view_axo](../../img/icons/welsim_view_axo.svg): displays the 3D model in an isometric view.
* ![finite_element_analysis_welsim_view_xy](../../img/icons/welsim_view_xy.svg): displays the 3D model in an XY-plane view.
* ![finite_element_analysis_welsim_view_yz](../../img/icons/welsim_view_yz.svg): displays the 3D model in a YZ-plane view.
* ![finite_element_analysis_welsim_view_xz](../../img/icons/welsim_view_xz.svg): displays the 3D model in an XZ-plane view.
* ![finite_element_analysis_welsim_select_volume](../../img/icons/welsim_select_volume.svg): set the volume selectable. 
* ![finite_element_analysis_welsim_select_face](../../img/icons/welsim_select_face.svg): set the face selectable.
* ![finite_element_analysis_welsim_select_edge](../../img/icons/welsim_select_edge.svg): set the edge selectable.
* ![finite_element_analysis_welsim_select_vertex](../../img/icons/welsim_select_vertex.svg): set the vertex selectable.

![finite_element_analysis_welsim_toolbar_graphics](../../img/3_guide/ch3_guide_toolbar_graphics.png "Graphics Toolbar in Graphics Window.")


## Working with graphics
The following lists the tips for working with WELSIM graphics:

* You can use the ruler, presented at the bottom of the graphics window, to estimate the scale of the geometry size. 
* You can rotate the view of geometries by holding and dragging the left mouse button.
* You can select or deselect multiple topological entities by pressing CTRL or SHIFT key.
* You can pan the view by dragging your right mouse button or arrow keys.
* You can zoom in/out the view by scrolling the mouse wheel or using +/- and CTRL keys.
* You can rotate the view by using the left mouse button.
* You can open a context menu of views by right-clicking on the graphics field.

### PreSelecting geometry
This section discusses the pre-selection features in the Graphics window. 

#### Highlighting
As you hover the cursor over a geometry entity, the graphics highlights the selection and shows the location of the pointer. The pre-selection is controlled by the selection filter, and only the allowed entity types can be pre-selected and highlighted.

As shown in Figure below, the face are highlighted in green color at pre-selection mode.

![finite_element_analysis_welsim_graphics_presel](../../img/3_guide/ch3_guide_graphics_presel.png "Preselection feature as the user hovers the mouse cursor over a geometry entity (face).")

### Selecting geometry
This section discusses how to select and pick geometry in the Graphics window. 

#### Picking
You can pick visible geometries by left clicking on the entities. A valid picking sets the geometry selection property for specific objects, such as boundary conditions. 

You can hold the Ctrl or Shift key down to add or remove multiple selections from the current selections. A pick in the free space clears the current selection.

#### Selection filters
The selection filters control the user selection mode and provide an easy interface for users to pick or select the geometry entities. A pressed button in the selection filter toolbar denotes a selectable geometry type. The following describes the filters. 

* Volumes: Allows selection of the entire body. Highlighted by body surfaces in green. Depressing this filter releases the Faces, Edges, and Vertices filters.
* Faces: Allows selection of faces. Highlighted by surfaces in green. Depressing this filter releases the Volumes filters.
* Edges: Allows selection of edges. Highlighted by lines in green. Depressing this filter releases the Volumes filters.
* Vertices: Allows selection of vertices. Highlighted by points in green. Depressing this filter releases the Volumes filters.


### Controlling graphical view
The section describes the controlling and manipulating the graphical view with mouse and keys.

* **Zoom**: Middle scrolling.
* **Pan**: Right clicking, or arrow keys.
* **Rotate**: Left clicking and dragging.

#### View annotations
Graphics window may contain these types of annotations:

* **2D annotation**: statically locates at the left top of the graphics windows. This annotation shows texts about the object type and name and color indicator for specific objects such as boundary conditions. 

* **3D annotation**: dynamically locates on the geometry area, the position can be changed as the user rotates, zooms or pans the view. 

