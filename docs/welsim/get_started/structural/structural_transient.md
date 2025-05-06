# Transient structural analysis
This example shows you how to conduct a 3D transient structural analysis for an assembly. 

## Defining materials

In this multi-body analysis, we assign **Structural Steel** and **Aluminum** materials to different parts. Since a **Structural Steel** object is already added as you initialize a **FEM Project**, you only need to insert an aluminum material object by clicking **Add Material** from **Toolbar** or **FEM Menu**. 

To edit the material properties, you can double-click the **Material** object, or right-click on the Material object and select the **Edit** command from the context menu. In the material editor, you select the **Library** tab > **General Materials** > **Aluminum Alloy**, then click **Import** button or double-click the **Aluminum Alloy** entry. The material properties are set as shown in Figure below. Click the **OK** to save and exit the material editing. 

You can rename this new material object to **Aluminum** by press **F2** key or right-clicking.


## Specifying analysis 
In the **Properties View** of the **FEM Project** object, you set the **Analysis Type** property to **Transient**. A **Transient Structural** analysis is defined as shown in Figure below.

![finite_element_analysis_welsim_ex2_analysis_type](../../../img/3_guide/ch2_start_ex2_analysis_type.png "Defining a Transient Structural analysis at the Properties View of FEM Project object.")


## Preparing geometry
Next, you can import the geometry file “h_section_multibody.step” and assign the materials to the corresponding parts. As shown in Figure below, three Part objects in the Geometry group represent three bodies in the Graphics window, respectively. You assign the Aluminum material to the Part2, which is the connection body in the middle, the rest bodies are assigned with Structural Steel material.

## Setting mesh
To obtain a fine mesh for the analysis, you set the Mesh Settings properties Quadratic to True, and Maximum Size to 5e-3, as shown in Figure below.

Next, you add a Mesh Method object from the Toolbar or FEM Menu. In the property of this object, you select the left body for the Geometry property, and set Maximum Size value to 3e-3, as shown in Figure below. 

Clicking the Mesh command from the Toolbar or FEM Menu, you can mesh the geometries. There are 21,117 nodes, and 12,427 Tet10 elements generated as shown in Figure below.

## Specifying contacts 
Next, you need to define two Contact Pairs to bond the three parts into one uni-body for the analysis. Clicking the Add Contact command from the Toolbar or FEM Menu, you add two Contact Pair objects into the tree. You can rename these two objects to Contact1 and Contact2, respectively. Then you select the surfaces for Master and Target Geometry properties as shown in Figures below. 

!!! Note 
    Defining contacts is optional, adding a contact or not is up to your specific model. 


## Defining analysis settings
In this transient analysis, you define 18 steps and set the End Time for each step, as shown in Figure below.

![finite_element_analysis_welsim_ex2_study_prop](../../../img/3_guide/ch2_start_ex2_study_prop.png "The Properties View of the Study object shows the Number of Steps. The Spreadsheet of the Study Settings object shows all step and time at one page.")

Next, you select the Study Settings object in the tree and set the Substeps property to 18, which determines the total number of substeps of the transient analysis. A screen capture of the defined properties is shown in Figure below.

![finite_element_analysis_welsim_ex2_study_settings_prop](../../../img/3_guide/ch2_start_ex2_study_settings_prop.png "The Properties View of the Study Settings object shows the Number of Substeps is 18.")


## Imposing conditions
Next, you impose two boundary conditions, a **Constraint** (Fixed Support) and an **Acceleration** by clicking the corresponding commands from the **Toolbar** or **Structural Menu**. In the **Properties View** of the **Constraint** object, select the left bottom surface for the **Geometry** property, as shown in Figure below.

In the **Properties View** of **Acceleration** object, set the **Acceleration** value for the current step, and repeat this value definition for each Step. After defining the acceleration values for all steps, you scope a surface on Part2 for the **Geometry** property, as shown in Figure below.

![finite_element_analysis_welsim_ex2_bc_acceleration](../../../img/3_guide/ch2_start_ex2_bc_acceleration.png "Imposing an acceleration boundary condition on a surface of Part2. The Tabular Data and Chart windows show the input acceleration values over time.")


## Solving the model
To solve the model, you can click the **Compute** command from the **Toolbar**, **FEM Menu**, or right-click on the **Answers** object and select **Compute** command from context menu. Depending on the complexity of the model, the solving process can be completed in seconds to hours. The **Output** window displays the solver messages and indicates the status of the solving process. As shown in Figure below, this model is solved successfully.

### Evaluating results
To evaluate the deformation of the structure, you can add a **Deformation** object to the tree by clicking the **Deformation** item from the **Toolbar**, **Structural Menu**. A result object may provide multiple sub-result types. For example, a Deformation result object allows you to specify one deformation type from the candidates **Deformation X**, **Y**, **Z**, and **Total**. 

After setting the result **Type** to **Deformation Z**, double-clicking on the result object displays the resulting contour in the **Graphics** window as shown in Figure below. You can click the **Evaluate** item from the **Toolbar** or **FEM Menu** to evaluate the result. 

![finite_element_analysis_welsim_ex2_rst_deformation_z18](../../../img/3_guide/ch2_start_ex2_rst_deformation_z18.png "Evaluating and displaying the displacement Z at final step.")

Adding a stress result object is similar. Clicking the Stress result from **Toolbar** or **Structural Menu**, you insert a stress object to the tree. Evaluating the default **von-Mises Stress** Type, you obtain the von-Mises stress contour on bodies in the **Graphics** window as shown in Figure below. The **Maximum** and **Minimum** values of stress data are displayed in the **Properties View**, **Tabular Data**, and **Chart** windows.

![finite_element_analysis_welsim_ex2_rst_stress_vm18](../../../img/3_guide/ch2_start_ex2_rst_stress_vm18.png "Evaluating and displaying the von-Mises stress result at final step.")

!!!info 
    This project file is located at examples/quick_structural_transient_solid_01.wsdb.

