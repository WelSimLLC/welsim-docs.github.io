# Usage in WELSIM

## Basic meshing process

The following steps provide the fundamental workflow for using the Meshing module as part of a finite element analysis in WELSIM. 

1. Create a finite element project and set the appropriate project type in the Properties of FEM Project object, such as *Static Structural*. 

2. Define appropriate material data for your analysis. The system provide a Structural Steel material, and you can create a new material object. Double-click, or Right click the material object. The Material Editing workspace appears, where you can add or edit material data as necessary.

3. Import geometry to your system or build new geometry. Assign the material to the geometry.

4. Click on the **Mesh** object in the Tree to access Meshing application functionality and apply mesh controls. 

5. Define loads and boundary conditions. Set up your analysis using that application's tools and features.

6. You can solve your analysis by clicking solve button.

7. Review your analysis results.

!!!note
    You should save your data periodically (**File>Save Project**). The data will be saved as a .wsdb file and associated folder. 


