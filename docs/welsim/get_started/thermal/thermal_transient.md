# Transient thermal analysis
This example shows you how to conduct a 3D transient thermal analysis for an assembly. Transient thermal analysis uses *FrontISTR* as the default solver. It also supports using *CalculiX* or *Elmer FEM* as a solver.


### Selecting units
In the beginning, we select the MKS unit system for the subsequential simulation. Clicking **Preferences** from the **Toolbar** or **Menu**, and setting the **Metric (kg, m, s, A, N, V)**.
![welsim_preferences_unit_kgms](../../../img/3_guide/welsim_preferences_unit_kgms.png "Selecting MKS unit system from the preferences.")

## Defining materials
In this multi-body analysis, we assign **Structural Steel** and **Aluminum** materials to different parts. Since a **Structural Steel** object is already added as you initialize a **FEM Project**, you only need to insert an aluminum material object by clicking **Add Material** from **Toolbar** or **FEM Menu**. 

To edit the material properties, you can double-click the **Material** object, or right-click on the Material object and select the **Edit** command from the context menu. In the material editor, you select the **Library** tab > **General Materials** > **Aluminum Alloy**, then click **Import** button or double-click the **Aluminum Alloy** entry. The material properties are set as shown in Figure below. Click the **OK** to save and exit the material editing. 

You can rename this new material object to **Aluminum** by press **F2** key or right-clicking.

![finite_element_analysis_welsim_ex1_mat_al](../../../img/3_guide/ch2_start_ex1_mat_al.png "Defining a new Aluminum material from the material library.")


## Specifying analysis
In the **Properties View** of the **FEM Project** object, you set the **Physics Type** property to **Thermal** and **Analysis Type** property to **Transient**. A Transient Thermal analysis is defined as shown in Figure below.

![finite_element_analysis_welsim_ex5_analysis_type](../../../img/3_guide/ch2_start_ex5_analysis_type.png "Defining a Transient Thermal analysis at the Properties View of FEM Project object.")


## Preparing geometry
Next, you can import the geometry file “h_section_multibody.step” and assign the materials to the corresponding parts. As shown in Figure, three Part objects in the Geometry group represent three bodies in the Graphics window, respectively. You assign the Aluminum material to the Part2, which is the connection body in the middle, the rest bodies are assigned with Structural Steel material.

![finite_element_analysis_welsim_ex1_geom_mat](../../../img/3_guide/ch2_start_ex1_geom_mat.png "Importing an assembly model and assign Aluminum material to the middle connection part.")


## Setting mesh
To obtain a fine mesh for the analysis, you set the **Mesh Settings** properties Quadratic to True, and **Maximum Size** to **3e-3**.

![finite_element_analysis_welsim_ex1_mesh_settings](../../../img/3_guide/ch2_start_ex1_mesh_settings.png "Global mesh settings.")

Clicking the Mesh command from the **Toolbar** or **FEM Menu**, you can mesh the geometries. There are 42,329 nodes, and 25,920 Tet10 elements generated.

![finite_element_analysis_welsim_ex1_mesh_data](../../../img/3_guide/ch2_start_ex1_mesh_data.png "The Mesh object shows the generated mesh for a three-part assembly. It is consist of 21117 nodes, and 12427 Tet10 elements.")


## Specifying contacts 
Next, you need to define two **Contact Pairs** to bond the three parts into one uni-body for the analysis. Clicking the **Add Contact** command from the **Toolbar** or **FEM Menu**, you add two **Contact Pair** objects into the tree. You can rename these two objects to Contact1 and Contact2, respectively. Then you select the surfaces for **Master** and **Target Geometry** properties as shown in Figures below. 

![finite_element_analysis_welsim_ex1_contact1](../../../img/3_guide/ch2_start_ex1_contact1.png "Defining the Master and Target surfaces for the first contact pair.")
![finite_element_analysis_welsim_ex1_contact2](../../../img/3_guide/ch2_start_ex1_contact2.png "Defining the Master and Target surfaces for the second contact pair.")


## Defining analysis settings
In this transient analysis, you define 1 step and set the **Current End Time** value to 600, as shown in Figure below.

![finite_element_analysis_welsim_ex5_study_prop](../../../img/3_guide/ch2_start_ex5_study_prop.png "The Properties View of the Study object define Current End Time.")

In the Properties View of **Study Settings** object in the tree, you can use the default settings as shown in Figure below.

![finite_element_analysis_welsim_ex5_study_settings_prop](../../../img/3_guide/ch2_start_ex5_study_settings_prop.png "The Properties View of the Study Settings object shows the Auto Timing is On.")


## Imposing conditions
Next, you can add an Initial Temperature object from the Toolbar or Thermal Menu. The initial temperature value is 300 as shown in Figure below.

![finite_element_analysis_welsim_ex5_initial_temp_prop](../../../img/3_guide/ch2_start_ex5_initial_temp_prop.png "The Properties View of the Initial Temperature object.")

Next, you impose three boundary conditions, a **Temperature**, **Heat Flux**, and a **Heat Convection** by clicking the corresponding commands from the **Toolbar** and **Thermal Menu**. In the Properties View of the **Temperature** object, you select the bottom surface of **Part1** for the **Geometry** property. Next set the **Temperature** value to 0, and define **Initial Status** to **Equal to Step 1**, as shown in Figure below.

![finite_element_analysis_welsim_ex5_temp](../../../img/3_guide/ch2_start_ex5_bc_temp.png "Imposing a temperature boundary condition on a surface of Part1. The Tabular Data and Chart windows show the input temperature value over time.")

In the Properties View of **Heat Flux** object, set the Heat Flux value to **-5000** and **Initial Status** to **Equal to Step 1**. Next, you scope a surface on Part1 for the **Geometry** property, as shown in Figure below.

![finite_element_analysis_welsim_ex5_bc_heatflux](../../../img/3_guide/ch2_start_ex5_bc_heatflux.png "Imposing a heat flux boundary condition on a surface of Part1. The Tabular Data and Chart windows show the input Heat Flux values over time.")

In the Properties View of **Heat Convection** object, set the **Convection Coefficient** value to **1000**, Ambient Temperature value to **22.3**, and **Initial Status** to **Equal to Step 1**. After defining these property values, you scope a surface on **Part2** for the **Geometry** property, as shown in Figure below.

![finite_element_analysis_welsim_ex5_bc_convection](../../../img/3_guide/ch2_start_ex5_bc_convection.png "Imposing a heat convection boundary condition on a surface of Part2. The Tabular Data and Chart windows show the input Convection Coefficient and Ambient Temperature values over time. ")


## Solving the model
To solve the model, you can click the **Compute** command from the **Toolbar**, **FEM Menu**, or right-click on the **Answers** object and select **Compute** command from context menu. Depending on the complexity of the model, the solving process can be completed in seconds to hours. The **Output** window displays the solver messages and indicates the status of the solving process. As shown messages in Output window, this model is solved successfully.

## Evaluating results
To evaluate the temperature of the model, you can add a **Temperature** object to the tree by clicking the **Temperature** item from the **Toolbar**, **Thermal Menu**. 

After inserting the result object and settings the **Set Number** to **15**, double-clicking on the result object displays the resulting contour in the **Graphics** window as shown in Figure below. You can click the **Evaluate** item from the **Toolbar** or **FEM Menu** to evaluate the result. 

![finite_element_analysis_welsim_ex5_rst_temp15](../../../img/3_guide/ch2_start_ex5_rst_temp15.png "Evaluating and displaying the temperature result at final step.")

