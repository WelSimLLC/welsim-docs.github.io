# Graphical user interface
The **MatEditor** workspace is an independent interface and display relavant items as you configured.

## Layout reference
Presented below are two layout configurations for the MatEditor view. The first configuration is displayed by clicking on "**Library**" tab in toolbox. The second configure is shown by clicking on "**Build**" tab in toolbox. You can switch this two layout mode by clicking the tabs.

![finite_element_analysis_mateditor_gui1](../img/mateditor/finite_element_analysis_mateditor_gui1.png "MatEditor GUI 1.")

![finite_element_analysis_mateditor_gui2](../img/mateditor/finite_element_analysis_mateditor_gui2.png "MatEditor GUI 2.")



| Legend | Name | Description |
| ------ | ---- | ----------- |
| A | [Menu Bar](#menu-bar) | Operations for MatEditor. |
| B | [Toolbar](#toolbar) | Selected operations that often used for MatEditor. |
| C | [Material Outline Pane](#material-outline-pane) | Material items that are created in MatEditor. |
| D | [Library Outline Pane](#library-outline-pane) | Displays the available prebuild material sources. |
| E | [Property Outline Pane](#property-outline-pane) | Displays the available material property sources that can be included into a material. |
| F | [Properties Pane](#properties-pane) | Displays the properties of the current material. |
| G | [Table Pane](#table-pane) | Shows the tabular data for the selected item in the Properties pane. |
| H | [Chart Pane](#chart-pane) | Shows the chart of the item selected in the Properties pane. |


## Menu bar
The following items in the menu bar are provided by MatEditor:

### File
* **New**: Create a new material object in the tree window.
* **Open**: Retrieve material data from an external XML file. This command remove all existing material data in the system.
* **Save**: Save current material data into an external XML file.
* **Save as**: Save current material data into an designated folder and in a specific XML file name.
* **Exit**: Close the software.

### View
* **Windows**: Toggle on/off the display of Project Explorer, Tabular Data, and Chart windows. 
* **Status Bar**: Toggle on/off the display of status bar on the window bottom.

### Edit
* **Activate**: Set the selected material object as current.
* **Duplicate**: Create a new material object and copy all propeties from the selected to the newly created material.
* **Delete**: Remove the selected material object(s).
* **Delete All**: Remove all material objects.

### Units
This menu provides all avilable unit systems and units. Once one unit (system) is chosen, the default unit is determined. The units for the newly created material data will be automatically set to the chosen unit(system).

### Tools
* **Export MatML file**: Export current material data to the MatML file.
* **Export Abaqus/CalculiX Script**: Export current material data to the Abaqus format file.
* **Export Elmer FEM Script**: Export current material data to the Elmer FEM format file.
* **Export OpenRadioss Script**: Export current material data to the OpenRadioss format file.

### Help
* **Help**: Direct the user to the online user manual. 
* **Frequently Asked Question**: Browse the website [https://github.com/WelSimLLC/WelSim-Apps/wiki/MatEditor-FAQ](https://github.com/WelSimLLC/WelSim-Apps/wiki/MatEditor-FAQ).
* **Report an Issue**: Browse the website [https://github.com/WelSimLLC/WelSim-Apps/issues](https://github.com/WelSimLLC/WelSim-Apps/issues).
* **Check for Updates**: Check the updates.
* **Follow on X.com**: Visit the website [https://x.com/getwelsim](https://x.com/getwelsim).
* **About MatEditor**: Display the software and hardware information dialog.


## Toolbar
The following item in the toolbar is provided by MatEditor:

| Icon | Name | Description |
| ------ | ---- | ----------- |
| ![finite_element_analysis_mateditor_icon_new](../img/mateditor/finite_element_analysis_mateditor_icon_new.png "MatEditor New icon.") | New | Create a new material object in the tree window. |
| ![finite_element_analysis_mateditor_icon_open](../img/mateditor/finite_element_analysis_mateditor_icon_open.png "MatEditor Open icon.") | Open | Retrieve material data from an external XML file. This command remove all existing material data in the system. |
| ![finite_element_analysis_mateditor_icon_save](../img/mateditor/finite_element_analysis_mateditor_icon_save.png "MatEditor Save icon.") | Save | Save current material data into an external XML file.|
| ![finite_element_analysis_mateditor_icon_abaqus](../img/mateditor/logo_abaqus.png "MatEditor Abaqus icon.") | Export Abaqus/CalculiX scripts | Save current material data into an external Abaqus/CalculiX file.|
| ![finite_element_analysis_mateditor_icon_elmer](../img/mateditor/logo_elmer.png "MatEditor Elmer FEM icon.") | Export Elmer FEM scripts | Save current material data into an external Elmer FEM file.|
| ![finite_element_analysis_mateditor_icon_openradioss](../img/mateditor/welsim_open_radioss_icon.png "MatEditor OpenRadioss icon.") | Export OpenRadioss scripts | Save current material data into an external OpenRadioss file.|
| ![finite_element_analysis_mateditor_icon_help](../img/mateditor/finite_element_analysis_mateditor_icon_help.png "MatEditor Help icon.") | Help | Direct the user to the online user manual. |
| ![finite_element_analysis_mateditor_icon_about](../img/mateditor/finite_element_analysis_mateditor_icon_about.png "MatEditor About icon.") | About | Display the software and hardware information dialog. |


## Toolbox
MatEditor Toolbox contains two tabs: **Library** and **Build**. These two tabs function as:

* **Library**: contains default material data that allows user to directly use. Clicking this tab displays the [Library Outline Pane](#library-outline-pane).
* **Build**: contains all supported material properties that enable user to compose material data. Clicking this tab displays the [Property Outline Pane](#property-outline-pane).


## Material outline pane
The Outline pane shows an outline of the contents of the created material data source. You can perform the following actions in this pane:

* Create a new material
* Delete a material
* Rename a material
* Edit a material
* Duplicate a material

### Items status
The itmes column shows the name of the items contained in the data source. When the name of material object is in bold, the material is activated for editing. 

## Library outline pane
The Library Outline pane shows an outline of availble predefined materials. These materials are grouped into several categories. 

![finite_element_analysis_mateditor_library_outline](../img/mateditor/finite_element_analysis_mateditor_library_outline.png "MatEditor library outline.")

## Property outline pane
The Property Outline pane shows an outline of availble material properties. These material properties are grouped into several categories. 

![finite_element_analysis_mateditor_property_outline](../img/mateditor/finite_element_analysis_mateditor_property_outline.png "MatEditor property outline.")

## Properties pane
The Properties pane shows the properties for the item selected in the [Property Outline](#property-outline-pane) pane. You can perform the following actions in this pane:

* Add additional properties, tabular data (from the Property Outline and Table panes)
* Delete a property
* Modify constant data
* [Suppress](mat_workflow.md#suppression) a property

### Property column
The property column lists the properties for the item selected in the Property Outline pane. Clicking a property will change the contents of the Table pane and Chart pane. 

#### Material property
The status of the material property is indicated as follows:

* ![finite_element_analysis_mateditor_icon_property](../img/mateditor/finite_element_analysis_mateditor_icon_property.png "MatEditor property icon."): The material property is described in a single property data (see the Material Definitions topic).
 	<!-- Some data contained in this material property requires attention (see the Validation and Filtering topics).
 	The material property is described in a collection of property data (see the Material Definitions topic).
 	Indicates that the collection of property data requires attention (see the Validation and Filtering topics). -->

### Value column
The value column is used to change data for a property or indicates that the data for the property is tabular (![finite_element_analysis_mateditor_icon_tabular](../img/mateditor/finite_element_analysis_mateditor_icon_tabular.png "MatEditor tabular icon.")). 

### Unit column
The unit column displays the unit of the data shown in the value column . If the column is editable (see [Units Menu](#unit-menu)), changing the unit will convert the value into the selected unit (there is no net change in the data, so the solution is still valid).

### Suppression column
The suppression column shows the suppression status of the item and may also be used to switch the status (see [Suppression](#suppression)).

## Table pane
The Table pane shows the tabular data for the item selected in the Properties pane. If there are independent variables (for instance, Temperature) for the selected item and the item is constant, you may change it to a table by entering a value into the independent variables data cell. If a row is shown with an index of *, you may add additional rows of data. 

![finite_element_analysis_mateditor_table](../img/mateditor/finite_element_analysis_mateditor_table.png "MatEditor table.")

!!!note
    You also can change the unit by clicking the header of table

## Chart pane

The Chart pane shows the chart of the selected item in the Properties pane. The chart data is idenital to the table data.




