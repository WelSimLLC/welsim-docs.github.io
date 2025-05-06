# Defining materials
This section describes how to create material objects and define material properties in the WELSIM application.

## Overview
Material Module serves as a database for material properties used in a modeling project. The module not only provides a material library but also allow you to create a material using the given properties. The spreadsheet of a Material object is the primary user interface designed to let you create, save, and retrieve material models. The well-defined material object can be saved and used in the subsequent projects. 

Material Module is shown as a Material Project and Material Objects in the Project Explorer (tree) window. The solution system contains only one Material Project, which acts as a material repository in the modeling system. The Material Project may include multiple Material Objects, where the properties can be added or edited by users.

To access Material Object properties, you can choose one of the following methods:
* Double click on the **Material Object**.
* Right click on a **Material Object**, and select **Edit** item from the context menu.

### Modes of operation
* **Material for subsequent analysis**: You can create a material that can be consumed in the subsequent analysis. For example, a defined material can be assigned to the specific geometry bodies. 
* **Material Data for files**: You can create a material and export the material data into an external file. 

The data included in the **Material Module** is automatically saved as you save the project.

## User interface
The Material Editor spreadsheet is an essential portion of the WELSIM user interface, and it displays material-related components that allow users to edit material data easily.

### Editing mode

Presented in this section are two configurations for the material property editing. The first configuration method is based on the library as shown in Figure [fig:ch3_guide_mat_ui_lib], and the second configuration is designed to manually combine the properties for the material object as shown in Figure [fig:ch3_guide_mat_ui_build]. You can click on the **Library** or **Build** tab to switch these two editing modes.

!!! note
    1. You can click on category tabs to browse different materials. 
    2. Loading a material dataset from the library removes all pre-existing properties.

### Build outline tab
The Build Outline Tab shows an outline of the contents of the togglable material properties. You can add a property data entry to the material by toggling on the property entry or remove property by toggling off the property entry. 

### Properties pane
The Properties pane displays all properties that are going to be added to the **Material Object**. You can tune the property values at this pane. The columns in this spreadsheet pane are:

* **Name**: A read-only text field to display the property name.
* **Value**: A number field to display and input the value. 
* **Description**: A read-only text field to display the attribute of this property.

You can delete a property by right-clicking on a row and select Remove Rows from the pop-up context menu. 

The Material Properties pane provides the following command buttons to the bottom of the window:

* **OK**: Save the properties and exit the material editor.
* **Apply**: Save the current properties to the material database.
* **Cancel**: Exit the material editor without Saving.
* **Clear**: Remove all properties.


## Working with material data
### Exporting
You can export the complete material data to an external file. The following format is supported for export:

* XML in WELSIM Material (MatML 3.1) schema.
* JSON in WELSIM Material schema.
* OpenRadioss input script

To implement the exporting, you can use one of the following methods:

* Click the **Export Materials** button from the standard **Toolbar**.
* Click the **Export Materials** item from the **Material Menu**.
* Right-click the **Material Project** and select the **Export Materials** item from the context menu.

## MatEditor applicaiton
MatEditor is a free application allow you to create and edit material data for the computer aided engineering. It is a smaller and concise application but has most of features that material module of WELSIM has. More details about MatEditor, please visit [MatEditor](#mateditor) page.







