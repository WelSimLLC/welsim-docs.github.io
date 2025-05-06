# Configuring study settings
This section describes the **Study** and **Study Settings** configuration.

## General settings
When you start a new FEM Project, the Study and Study Settings objects are inserted in the tree automatically. With these objects selected, you can define many solving options in the Properties View window. For example, you can define the properties of Steps, Substeps, Solver, etc.

### Step controls
Step Controls define the analysis steps for both static and transient analysis. These properties in the **Study** object has such characteristics:

* **Number of Steps** must be positive.
* **Current Step** must be less than or equal to the **Number of Steps**. Note that **Current Step** property of Study object is adjustable, and determines the **Current Step** properties in other objects such as **Study Settings**, and boundary conditions.
* **Current End Time** must be greater than the **Current End Time** in the last step.

### Nonlinear controls
For the nonlinear analysis, the properties of the Nonlinear Settings Controls determine the convergence of the solution. Those properties are mainly related to the Newton-Raphson algorithm. 

* **Relative Tolerance**: The default value is **1e-4**.
* **Absolute Tolerance**: The default value is **1e-5**.
* **Maximum Iterations**: The default value is **40**.

### Solver controls
Solver Controls determines the attributes of the linear algebra solvers. The following lists the related properties:

* **Solver Method**: provides user to select a solver from the options Conjugate Gradient, BiCGStab, GMRES, GPBiCG, MUMPS, Direct, DIRECTmkl, where MUMPS, Direct, and DIRECTmkl are the direct solver, and the rest are iterative solver. The default solver is MUMPS.
* **Number of Iterations**: defines the maximum number of the linear algebra solver iterations.
* **Residual Threshold**: defines the residual threshold for the linear algebra solver. 

### Output controls
The Output Controls determines the output rules of solving and results. The available options are:

* **Output Time Log**: outputs the log for each time step. The default is **false**.
* **Output Iteration Log**: outputs the log each iteration step. The default is **false**.
* **Generate Result Files**: generates ASCII format result file. The default is **false**.
* **Output Frequency**: determines the frequency of the result data output. The default value is **1**, which outputs result data every step.
* **Reorder Result Element**: changes the higher order elements to the linear elements in the mesh data of the result file. The deatil is **false**.


<!-- ## Steps and Step Controls -->

<!-- ## Study Settings for Explicit Dynamics Analysis -->
