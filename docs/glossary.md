# Glossary


## A

* **ACCELERATION：** The second time derivative of the displacement (the first time derivative of the velocity).
* **ADAPTIVE FINITE ELEMENT METHOD/ADAPTIVE MESHING**： An adaptive finite element solver iteratively performs finite element analysis, determines the areas of the mesh where the solution is not sufficiently accurate and refines the mesh in those areas until the solution obtains the prescribed degree of accuracy. Adaptive Meshing involves automatically improving the mesh where necessary to meet specified convergence criteria.
* **ASPECT RATIO**: The ratio of the longest to shortest side lengths on an element.
* **ASSEMBLY**: Geometric:Two or more parts mated together. FEA: The process of assembling the element matrices together to form the global matrix. Typically element stiffness matrices are assembled to form the complete stiffness matrix of the structure.
* **AUTOMATIC MESH GENERATION**: The process of generating a mesh of elements over the volume that is being analyzed. There are two forms of automatic mesh generation: Free Meshing -Where the mesh has no structure to it. Free meshing generally uses triangular and tetrahedral elements.
Mapped Meshing -Where large regions, if not all, of the volume is covered with regular meshes. This can use any form of element. Free meshing can be used to fill any shape. Mapped meshing can only be used on some shapes without elements being excessively distorted.
* **AXISYMMETRY**: If a shape can be defined by rotating a cross- section about a line (e.g. a cone) then it is said to be axisymmetric. This can be used to simplify the analysis of the system. Such models are sometimes called two and a half dimensional since a 2D cross- section represents a 3D body.



## B

* **BARLOW POINTS**： The set of Gauss integration points that give the best estimates of the stress for an element. For triangles and tetrahedra these are the full Gauss integration points. For quadrilateral and brick elements they are the reduced Gauss points.
* **BASIS SPACE**： When an element is being constructed it is derived from a simple regular shape in non-dimensional coordinates. The coordinates used to define the simple shape form the basis space. In its basis space a general quadrilateral is a 2×2 square and a general triangle is an isosceles triangle with unit side lengths.
* **BEAM ELEMENT**: A line element that has both translational and rotational degrees of freedom. It represents both membrane and bending actions.
* **BENDING**: Bending behavior is where the strains vary linearly from the centerline of a beam or center surface of a plate or shell.There is zero strain on the centerline for pure bending. Plane sections are assumed to remain plane. If the stresses are constant normal to the centerline then this is called membrane behavior.
* **BENDING STRESS**: A compressive and/or tensile stress resulting from the application of a nonaxial force to a structural member.
* **BODY FORCE VECTOR**: Mechanical loadings within the interior of the volume, typically inertia loadings in a stiffness analysis.
* **BOUNDARY CONDITIONS**: The boundary conditions of a function are values of the function at the edge of the range of some of its variables. Knowledge of some of the boundary conditions is needed to solve an engineering problem or to find an unknown function. 
* **BOUNDARY ELEMENT/INTEGRAL**: A method of solving differential equations by taking exact solutions to the field equations loaded by a point source and then finding the strengths of sources distributed around the boundary of the body required to satisfy the boundary conditions on the body.
* **BUBBLE FUNCTIONS**: Element shape functions that are zero along the edges of the element. They are non-zero within the interior of the element.
* **BUCKLING (SNAP THROUGH)**: The situation where the elastic stiffness of the structure is cancelled by the effects of compressive stress within the structure. If the effect of this causes the structure to suddenly displace a large amount in a direction normal to the load direction then it is classical bifurcation buckling. If there is a sudden large movement in the direction of the
loading it is snap through buckling.


## C

* **CAE**: computer aided engineering.
* **CENTRAL DIFFERENCE METHOD**: A method for numerically integrating second order dynamic equations of motion. It is widely used as a technique for solving non-linear dynamic problems.
* **CHARACTERISTIC VALUE**: Same as the eigenvalue.
* **CHARACTERISTIC VECTOR**: Same as the eigenvector.
* **CHOLESKY FACTORISATION (SKYLINE)**: A method of solving a set of simultaneous equations that is especially well suited to the finite element method. It is sometimes called a skyline solution. Choose to optimize the profile o f the matrix if a renumbering scheme is used.
* **COEFFICIENT OF VISCOUS DAMPING**: The system parameter relating force to velocity.
* **COMPATIBILITY OF STRAINS**: Compatibility of strain is satisfied if strains that are continuous before loading are continuous after.
* **COMPLETE DISPLACEMENT FIELD**: When the functions interpolating the field variable (typically the displacements) form a complete nth order polynomial in all directions.
* **COMPLEX EIGENVALUES**: The eigenvectors of a damped system. For proportionally damped systems they are the same as the undamped eigenvectors. For non-proportionally damped systems with damping in all modes less th an critical they are complex numbers and occur as complex conjugate pairs.
* **COMPLEX EIGENVECTORS**: The eigenvalues of any damped system. If the damping is less than critical they will occur as complex conjugate pairs even for proportionally damped systems. The real part of the complex eigenvalue is a measure of the damping in the mode and should always be negative. The imaginary part is a measure of the resonant frequency.
* **COMPOSITE MATERIAL**: A material that is made up of discrete components, typically a carbon-epoxy composite material or a glass-fiber material. Layered material and foam materials are also forms of composite materials.
* **COMPUTATIONAL FLUID DYNAMICS (CFD)**: A computer-based numerical study of turbulent fluid flow using approximate methods such as the finite element method, the fine difference method, the boundary element method, the finite volume methods, and so on.
* **CONDITION NUMBER**: The ratio of the highest eigenvalue to the lowest eigenvalue of a matrix. The exponent of this number gives a measure of the number of digits required in the computation to maintain numerical accuracy. The higher the condition number the more chance of numerical error and the slower the rate of convergence for iterative solutions.
* **CONDITIONAL/UNCONDITIONAL STABILITY**: Any scheme for numerically integrating dynamic equations of motion in a step-by- step form is conditionally stable if there is a maximum time step value that can be used. It is unconditionally stable (but not necessarily accurate) if any length of time step can be used.
* **CONJUGATE GRADIENT METHOD**: A method for solving simultaneous equations iteratively. It is closely related to the Lanczos method for finding the first few eigenvalues and eigenvectors of a set of equations.
* **CONSISTENT DISPLACEMENTS AND FORCES**: The displacements and forces act at the same point and in the same direction so that the sum of their products give a work quantity. If consistent displacements and forces are used the resulting stiffness and mass matrices are symmetric.
* **CONSTANT STRAIN CONSTANTSTRESS**: For structural analysis an element must be able to reproduce a state of constant stress and strain under a suitable loading to ensure that it will converge to the correct solution. This is tested for using the patch test.
* **CONSTITUTIVE RELATIONSHIPS**: The equations defining the material behavior for an infinitesimal volume of material. For structures these are the stress -strain laws and include Hookes law for elasticity and the Prandle-Reuss equations for plasticity.
* **CONSTRAINT EQUATIONS (MULTI POINT CONSTRAINTS)**: If one group of variables can be defined in terms of another group then the relationship between the two are constraint equations. Typically the displacements on the face of an element can be constrained to remain plane but the plane itself can move.
* **CONSTRAINTS**: Known values of, or relationships between, the displacements in the coordinate system.
* **CONTACT PROBLEMS**: A contact problem occurs when two bodies that are originally apart can come together, or two bodies that are originally connected can separate.
* **CONTINUOUS MASS MODELS**: The system mass is distributed between the degrees of freedom. The mass matrix is not diagonal.
* **CONTOUR PLOTTING**: A graphical representation of the variation of a field variable over a surface, such as stress, displacement, or temperature. A contour line is a line of constant value for the variable. A contour band is an area of a single color for values of the variable within two limit values.
* **CONVERGENCE REQUIREMENTS**: For a structural finite element to converge as the mesh is refined it must be able to represent a state of constant stress and strain free rigid body movements exactly. There are equivalent requirements for other problem types.
* **CRANK-NICHOLSON SCHEME**: A method for numerically integrating first order dynamic equations of motion. It is widely used as a technique for solving thermal transient problems.
* **CRITICAL ENERGY RELEASE**: This is a material property defining the minimum energy that a propagating crack must release in order for it to propagate. Three critical energies, or modes of crack propagation, have been identified. Mode 1 is the two surfaces of the crack moving apart. Mode 2 is where the two surfaces slide from front to back. Mode 3 is where the to surfaces slide sideways.
* **CRITICALLY DAMPED SYSTEM CRITICAL DAMPING**: The dividing line between under damped and over damped systems where the equation of motion has a damping value that is equal to the critical damping.
* **CYCLIC SYMMETRY**: A generalization of axisymmetry. The structure is composed of a series of identical sectors that are arranged circumferentially to form a ring. A turbine disc with blades attached is atypical example.


## D

* **DAMPED EIGENVALUES**: Same as complex eigenvalues.
* **DAMPED EIGENVECTORS**: Same as complex eigenvectors.
* **DAMPED NATURAL FREQUENCY**: The frequency at which the damped system vibrates naturally when only an initial disturbance is applied.
* **DAMPING**: Any mechanism that dissipates energy in a vibrating system.
* **DAMPING FACTOR (DECAY FACTOR)**: The damping factor is the ratio of the actual damping to the critical damping. It is often specified as a percentage. If the damping factor is less than one then the system can undergo free vibrations. The free vibrations will decay to zero with time. If the damping factor is greater than one then the decay is exponential and no vibrations occur. For most structures the damping factor is very small.
* **DEGENERATE ELEMENTS**: Elements that are defined as one shape in the basis space but they are a simpler shape in the real space. A quadrilateral can degenerate into a triangle. A brick element can degenerate into a wedge, a pyramid or a tetrahedron. Degenerate elements should be avoided in practice.
* **DEGREES OF FREEDOM**: The number of equations of equilibrium for the system. In dynamics, the number of displacement quantities which must be considered in order to represent the effects of all of the significant inertia forces. Degrees of freedom define the ability of a given node to move in any direction in space.
There are six types of DOF for any given node:
3 possible translations (one each in the X,Y and Z directions) and 3 possible rotations (one rotation about each of the X,Y, and X axes).
DOF are defined and restricted by the elements and constraints associated with each node.
* **DET(J) DET J**: The Jacobian matrix is used to relate derivatives in the basis space to the real space. The determinant of the Jacobian – det(j) -is a measure of the distortion of the element when mapping from the basis to the real space.
* **DEVIATORIC STRESS STRESS DEVIATORS**: A measure of stress where the hydrostatic stress has been subtracted from the actual stress. Material failures that are flow failures (plasticity and creep) fail independently of the hydrostatic stress. The failure is a function of the deviatoric stress.
* **DIAGONAL GENERALIZED MATRIX**: The eigenvectors of a system can be used to define a coordinate transformation such that, in these generalized coordinates the coefficient matrices (typically mass and stiffness) are diagonal.
* **DIE-AWAY LENGTH**: If there is a stress concentration in a structure the high stress will reduce rapidly with distance from the peak value. The distance over which it drops to some small value is called the die-away length. A fine mesh is required over this die-away length for accurate stress results.
* **DIRECT INTEGRATION**: The name for various techniques for numerically integrating equations of motion. These are either implicit or explicit methods and include central difference, Crank-Nicholson, Runge-Kutta, Newmark beta and Wilson theta.
* **DISCRETE PARAMETER MODELS (DISCRETISED APPROACH)**: The model is defined in terms of an ordinary differential equation and the system has a finite number of degrees of freedom.
* **DISCRETIZATION**: The process of dividing geometry into smaller pieces (finite elements) to prepare for analysis, i.e. Meshing.
* **DISPLACEMENT METHOD (DISPLACEMENT SOLUTION)** :A form of discrete parameter model where the displacements of the system are the basic unknowns.
* **DISPLACEMENT**: The distance, translational and rotational, that a node travels from its initial position to its post-analysis position. The total displacement is represented by components in each of the 3 translational directions and the 3 rotational directions.
* **DISPLACEMENT PLOTS**: Plots showing the deformed shape of the structure. For linear small deflection problems the displacements are usually multiplied by a magnifying factor before plotting the deformed shape.
* **DISPLACEMENT VECTOR**: The nodal displacements written as a column vector.
* **DOMAIN**: In mathematics, a domain is the set of independent variables for which a function is defined. In finite element analysis, a domain is a continuous system (region) over which the laws of physics govern. In structural engineering, a domain could be a beam or a complete building frame. In mechanical engineering, a domain could be a piece of machine parts or a thermal field. 

* **DRUCKER-PRAGER EQUIVALENT STRESSES**: An equivalent stress measure for friction materials (typically sand). The effect of hydrostatic stress is included in the equivalent stress.
* **DYNAMIC ANALYSIS**: An analysis that includes the effect of the variables changing with time as well as space.

* **DYNAMIC FLEXIBILITY MATRIX**: The factor relating the steady state displacement response of a system to a sinusoidal force input. It is the same as the recep tance.
* **DYNAMIC MODELLING**: A modeling process where consideration as to time effects in addition to spatial effects are included. A dynamic model can be the same as a static model or it can differ significantly depending upon the nature of the problem.
* **DYNAMIC RESPONSE**: The time dependent response of a dynamic system in terms of its displacement, velocity or acceleration at any given point of the system.
* **DYNAMIC STIFFNESS MATRIX**: If the structure is vibrating steadily at a frequency w then the dynamic stiffness is (K+iwC w2M) It is the inverse of the dynamic flexibility matrix.
* **DYNAMIC STRESSES**：Stresses that vary with time and space.
* **DYNAMIC SUBSTRUCTURING**： Special forms of substructuring used within a dynamic analysis. Dynamic substructuring is always approximate and causes some loss of accuracy in the dynamic solution.


## E

* **EIGENVALUE PROBLEM**： Problems that require calculation of eigenvalues and eigenvectors for their solution. Typically solving free vibration problems or finding buckling loads.
* **ELASTIC FOUNDATION**： If a structure is sitting on a flexible foundation the supports are treated as a continuous elastic foundation. The elastic foundation can have a significant effect upon the structural response.
* **ELASTIC STIFFNESS**： If the relationship between loads and displacements is linear then the problem is elastic. For a multi-degree of freedom system the forces and displacements are related by the elastic stiffness matrix.
* **ELECTRIC FIELDS**： Electro-magnetic and electro-static problems form electric field problems.
* **ELEMENT：** An element is a portion of the problem domain, and is typically some simple shape like a triangle or quadrilateral in 2D, or tetrahedron or hex solid in 3D.

* **ELEMENT ASSEMBLY**： Individual element matrices have to be assembled into the complete stiffness matrix. This is basically a process of summing the element matrices. This summation has to be of the correct form. For the stiffness method the summation is based upon the fact that element displacements at common nodes must be the same.
* **ELEMENT STRAINS/STRESSES**： Stresses and strains within elements are usually defined at the Gauss points (ideally at the Barlow points) and the node points. The most accurate estimates are at the reduced Gauss points (more specifically the Barlow points). Stresses and strains are usually calculated here and extrapolated to the node points.
* **ENERGY METHODS HAMILTONS PRINCIPLE**： Methods for defining equations of equilibrium and compatibility through consideration of possible variations of the energies of the system. The general form is Hamiltons principle and sub-sets of this are the principle of virtual work including the principle of virtual displacements (PVD) and the principle of virtual forces (PVF).
* **ENGINEERING/MATHEMATICAL NORMALIZATION**： Each eigenvector (mode shape or normal mode) can be multiplied by an arbitrary constant and still satisfy the eigenvalue equation. Various methods of scaling the eigenvector are used Engineering normalization -The vector is scaled so that the largest absolute value of any term in the eigenvector is unity. This is useful for inspecting printed tables of eigenvectors. Mathematical normalization -The vector is scaled so that the diagonal
modal mass matrix is the unit matrix. The diagonal modal stiffness matrix is the system eigenvalues. This is useful for response calculations.
* **EQUILIBRIUM EQUATIONS**：Internal forces and external forces must balance. At the infinitesimal level the stresses and the body forces must balance. The equations of equilibrium define these force balance conditions.
* **EQUILIBRIUM FINITE ELEMENTS**： Most of the current finite elements used for structural analysis are defined by assuming displacement variations over the element. An alternative approach assumes the stress variation over the element. This leads to equilibrium finite elements.
* **EQUIVALENT MATERIAL PROPERTIES**： Equivalent material properties are defined where real material properties are smeared over the volume of the element. Typically, for composite materials the discrete fiber and matrix material properties are smeared to give average equivalent material properties.
* **EQUIVALENT STRESS**： A three dimensional solid has six stress components. If material properties have been found experimentally by a uniaxial stress test then the real stress system is related to this by combining the six stress components to a single equivalent stress. There are various forms of equivalent stress for different situations. Common ones are Tresca, Von-Mises, Mohr-Coulomb and Drucker-Prager.
* **EULERIAN/LAGRANGIAN METHOD**： For non-linear large deflection problems the equations can be defined in various ways. If the material is flowing though a fixed grid the equations are defined in Eulerian coordinates. Here the volume of the element is constant but the mass in the element can change. If the grid moves with the body then the equations are defined in Lagrangian coordinates. Here the mass in the element is fixed but the volume changes.
* **EXACT SOLUTIONS**： Solutions that satisfy the differential equations and the associated boundary conditions exactly. There are very few such solutions and they are for relatively simple geometries and loadings.
* **EXPLICIT/IMPLICIT METHOD**： These are methods for integrating equations of motion. Explicit methods can deal with highly non-linear systems but need small steps. Implicit methods can deal with mildly nonlinear problems but with large steps.
* **EXTRAPOLATION INTERPOLATION**： The process of estimating a value of a variable from a tabulated set of values. For interpolation values inside the table are estimated. For extrapolation values outside the table are estimated. Interpolation is generally accurate and extrapolation is only accurate for values slightly outside the table. It becomes very inaccurate for other cases.



## F

* **FACETED GEOMETRY**： If a curved line or surface is modeled by straight lines or flat surfaces then the modeling is said to produce a faceted geometry.
* **FAST FOURIER TRANSFORM**： A method for calculating Fourier transforms that is computationally very efficient.
* **FIELD PROBLEMS**： Problems that can be defined by a set of partial differential equations are field problems. Any such problem can be solved approximately by the finite element method.
* **FINITE DIFFERENCES**： A numerical method for solving partial differential equations by expressing them in a difference form rather than an integral form. Finite difference methods are very similar to finite element methods and in some cases are identical.
* **FINITE ELEMENT MODELING (FEM)**： The process of setting up a model for analysis, typically involving graphical generation of the model geometry, meshing it into finite elements, defining material properties, and applying loads and boundary conditions.
* **FINITE VOLUME METHODS**： A technique related to the finite element method. The equations are integrated approximately using t he weighted residual method, but a different form of weighting function is used from that in the finite element method. For the finite element method the Galerkin form of the weighted residual method is used.
* **FIXED BOUNDARY CONDITIONS**： All degrees of freedom are restrained for this condition. The nodes on the fixed boundary can not move: translation or rotation.
* **FLEXIBILITY MATRIX FORCE METHOD**： The conventional form of the finite element treats the displacements as unknowns, which leads to a stiffness matrix form. Alternative methods treating the stresses (internal forces) as unknowns lead to force methods with an associated flexibility matrix. The inverse of the stiffness matrix is the flexibility matrix.
* **FORCED RESPONSE**： The dynamic motion results from a time varying forcing function.
* **FORCING FUNCTIONS**： The dynamic forces that are applied to the system.
* **FOURIER EXPANSIONS FOURIER SERIES**： Functions that repeat themselves in a regular manner can be expanded in terms of a Fourier series.
* **FOURIER TRANSFORM**： A method for finding the frequency content of a time varying signal. If the signal is periodic it gives the same result as the Fourier series.
* **FOURIER TRANSFORM PAIR**：The Fourier transform and its inverse which, together, allow the complete system to be transformed freely in either direction between the time domain and the frequency domain.
* **FRAMEWORK ANALYSIS**： If a structure is idealized as a series interconnected line elements then this forms a framework analysis model. If the connections between the line elements a re pins then it is a pin-jointed framework analysis. If the joints are rigid then the lines must be beam elements.
* **FREE VIBRATION**： The dynamic motion which results from specified initial conditions. The forcing function is zero.
* **FREQUENCY DOMAIN**： The structures forcing function and the consequent response is defined in terms of their frequency content. The inverse Fourier transform of the frequency domain gives the corresponding quantity in the time domain.
* **FRONTAL SOLUTION WAVEFRONT SOLUTION**： A form of solving the finite element equations using Gauss elimination that is very efficient for the finite element form of equations.


## G

* **GAP/CONTACT ELEMENT**: These are special forms of non-linear element that have a very high stiffness in
compression and a low stiffness in tension. They are used to model contact conditions
between surfaces. Most of these elements also contain a model for sliding friction between
the contacting surfaces. Some gap elements are just line springs between points and
others are more general forms of quadrilateral or brick element elements. The line spring
elements should only be used in meshes of first order finite elements.
* **GAUSS POINT EXTRAPOLATION GAUSS POINT STRESSES**: Stresses calculated internally within the element at the Gauss integration points are called
the Gauss point stresses. These stresses are usually more accurate at these points than
the nodal points.

* **GAUSS POINTS GAUSS WEIGHTS**: The Gauss points are the sample points used within the elements for the numerical
integration of the matrices and loadings. They are also the points at which the stresses
can be recovered. The Gauss weights are associated factors used in the numerical
integration process. They represent the volume of influence of the Gauss points. The
positions of the Gauss points, together with the associated Gauss weights, are available in
tables for integrations of polynomials of various orders.
* **GAUSSIAN ELIMINATION**: A form of solving a large set of simultaneous equations. Within most finite element
systems a form of Gaussian elimination forms the basic solution process.
* **GAUSSIAN INTEGRATION GAUSSIAN QUADRATURE**: A form of numerically integrating functions that is especially efficient for integrating
polynomials. The functions are evaluated at the Gauss points, multiplied by the Gauss
weights and summed to give the integral.
* **GENERALIZED COORDINATES**: A set of linearly independent displacement coordinates which are consistent with the
constraints and are just sufficient to describe any arbitrary configuration of the system. Generalized coordinates are usually patterns of displacements, typically the system
eigenvectors.
* **GENERALIZED MASS**: The mass associated with a generalized displacement.
* **GENERALIZED STIFFNESS**: The stiffness associated with a generalized displacement.
* **GEOMETRIC PROPERTIES**: Various shape dependent properties of real structures, such as thickness, cross sectional
area, sectional moments of inertia, centroid location and others that are applied as
properties of finite elements.
* **GEOMETRIC/STRESS STIFFNESS**: The component of the stiffness matrix that arises from the rotation of the internal stresses
in a large deflection problem. This stiffness is positive for tensile stresses and negative for
compressive stresses. If the compressive stresses are sufficiently high then the structure
will buckle when the geometric stiffness cancels the elastic stiffness.
* **GEOMETRICAL ERRORS**: Errors in the geometrical representation of the model. These generally arise from the
approximations inherent in the finite element approximation.
* **GLOBAL STIFFNESS MATRIX**: The assembled stiffness matrix of the complete structure.

* **GROSS DEFORMATIONS**: Deformations sufficiently high to make it necessary to include their effect in the solution process. The problem requires a large deflection non-linear analysis.
* **GOVERNING EQUATIONS**: The governing equations for a system are the equations derived from the physics of the system. Many engineering systems can be described by governing equations, which determine the system's characteristics and behaviors.
* **GUARD VECTORS**: The subspace iteration (simultaneous vector iteration) method uses extra guard vectors in addition to the number of vectors requested by the user. These guard the desired vectors from being contaminated by the higher mode vectors and speed up convergence.
* **GUI**: GUI stands for graphical user interface, which provides a visual tool to build a finite element model for a domain with complex geometry and boundary conditions. 


## H

* **HARDENING STRUCTURE**: A structure where the stiffness increases with load.
* **HARMONIC LOADING**: A dynamic loading that is periodic and can be represented by a Fourier series.
* **HEAT CONDUCTION**: The analysis of the steady state heat flow within solids and fluids. The equilibrium balance
between internal and external heat flows.
* **HERMITIAN SHAPE FUNCTIONS**: Shape functions that provide both variable and variable first derivative continuity
(displacement and slope continuity in structural terms) across element boundaries.
* **HEXAHEDRON ELEMENTS**: Type of 3D element which has six quadrilateral faces.
* **HIGH/LOW ASPECT RATIO**: The ratio of the longest side length of a body to the shortest is termed its aspect ratio. Generally bodies with high aspect ratios (long and thin) are more ill conditioned for numerical solution than bodies with an aspect ratio of one.
* **HOOKES LAW**: The material property equations relating stress to strain for linear elasticity. They involve
the material properties of Young’s modulus and Poisson ratio.
* **HOURGLASS MODE**: Zero energy modes of low order quadrilateral and brick elements that arise from using
reduced integration. These modes can propagate through the complete body.
* **H-CONVERGENCE**: Convergence towards a more accurate solution by subdividing the elements into a number of smaller elements. This approach is referred to as H-convergence because of improved discretization due to reduced element size.
* **H-METHOD**: A finite element method which requires an increasing number of elements to improve the solution.
* **H/P-REFINEMENT**: Making the mesh finer over parts or all of the body is termed h-refinement. Making the element order higher is termed p-refinement.
* **HYBRID ELEMENTS**: Elements that use stress interpolation within their volume and displacement interpolation around their boundary.
* **HYDROSTATIC STRESS**: The stress arising from a uniform pressure load on a cube of material. It is the average value of the direct stress components at any point in the body.
* **HYSTERETIC DAMPING**: A damping model representing internal material loss damping. The energy loss per unit cycle is independent of frequency. It is only valid for harmonic response.


## I

* **ILL-CONDITIONING ERRORS**: Numerical (rounding) errors that arise when using ill-conditioned equations.
* **ILL-CONDITIONING ILL-CONDITIONED EQUATIONS**: Equations that are sensitive to rounding errors in a numerical operation. The numerical
operation must also be defined. Equations can be ill conditioned for solving simultaneous
equations but not for finding eigenvalues.
* **IMPULSE RESPONSE FUNCTION**: The response of the system to an applied impulse.
* **IMPULSE RESPONSE MATRIX**: The matrix of all system responses to all possible impulses. It is always symmetric for
linear systems. It is the inverse Fourier transform of the dynamic flexibility matrix.
* **INCREMENTAL SOLUTION**: A solutions process that involves applying the loading in small increments and finding the
equilibrium conditions at the end of each step. Such solutions are generally used for
solving non-linear problems.
* **INELASTIC MATERIAL BEHAVIOR**: A material behavior where residual stresses or strains can remain in the body after a
loading cycle, typically plasticity and creep.
* **INERTANCE (ACCELERANCE)**: The ratio of the steady state acceleration response to the value of the forcing function for a
sinusoidal excitation.
* **INERTIA FORCE**: The force that is equal to the mass times the acceleration.
* **INITIAL BUCKLING**: The load at which a structure first buckles.
* **INITIAL STRAINS**: The components of the strains that are non-elastic. Typically thermal strain and plastic
strain.
* **INTEGRATION BY PARTS**: A method of integrating a function where high order derivative terms are partially
integrated to reduce their order.
* **INTERPOLATION FUNCTIONS SHAPE FUNCTIONS**: The polynomial functions used to define the form of interpolation within an element. When
these are expressed as interpolations associated with each node they become the
element shape functions.
* **ISOPARAMETRIC ELEMENT**: Elements that use the same shape functions (interpolations) to define the geometry as
were used to define the displacements. If these elements satisfy the convergence
requirements of constant stress representation and strain free rigid body motions for one
geometry then it will satisfy the conditions for any geometry.
* **ISOTROPIC MATERIAL**: Materials where the material properties are independent of the co-ordinate system.


## J

* **JACOBI METHOD**: A method for finding eigenvalues and eigenvectors of a symmetric matrix.
* **JACOBIAN MATRIX**: A square matrix relating derivatives of a variable in one coordinate system to the
derivatives of the same variable in a second coordinate system. It arises when the chain
rule for differentiation is written in matrix form.
* **J-INTEGRAL METHODS**: A method for finding the stress intensity factor for fracture mechanics problems.
* **JOINTS**: The interconnections between components. Joints can be difficult to model in finite
element terms but they can significantly affect dynamic behavior.


## K

* **KINEMATIC BOUNDARY CONDITIONS**: The necessary displacement boundary conditions for a structural analysis. These are the
essential boundary conditions in a finite element analysis.
* **KINEMATICALLY EQUIVALENT FORCES (LOADS)**: A method for finding equivalent nodal loads when the actual load is distributed over a
surface of a volume. The element shape functions are used so that the virtual work done
by the equivalent loads is equal to the virtual work done by the real loads over the same
virtual displacements. This gives the most accurate load representation for the finite
element model. These are the non-essential stress boundary conditions in a finite element
analysis.
* **KINEMATICALLY EQUIVALENT MASS**: If the mass and stiffness are defined by the same displacement assumptions then a
kinematically equivalent mass matrix is produced. This is not a diagonal (lumped) mass
matrix.
* **KINETIC ENERGY**: The energy stored in the system arising from its velocity. In some cases it can also be a
function of the structural displacements.



## L

* **LAGRANGE INTERPOLATION LAGRANGE SHAPE FUNCTIONS**： A method of interpolation over a volume by means of simple polynomials. This is the basis of most of the shape function definitions for elements.
* **LAGRANGE MULTIPLIER TECHNIQUE**： A method for introducing constraints into an analysis where the effects of the constraint are represented in terms of the unknown Lagrange multiplying factors.
* **LANCZOS METHOD**： A method for finding the first few eigenvalues and eigenvectors of a set of equations. It is very well suited to the form of equations generated by the finite element method. It is closely related to the method of conjugate gradients used for solving simultaneous equations iteratively.
* **LEAST SQUARES FIT**： Minimization of the sum of the squares of the distances between a set of sample points and a smooth surface . The finite element method gives a solution that is a least squares fit to the equilibrium equations.
* **LINEAR DEPENDENCE**： One or more rows (columns) of a matrix are linear combinations of the other rows (columns). This means that the matrix is singular.
* **LINEAR ANALYSIS**： Linear Finite Element Analysis is based on the following assumptions: (1) Static; (2) Small displacements; (3) Material is linearly elastic. 
* **LINEAR SYSTEM**： When the coefficients of stiffness, mass and damping are all constant then the system is linear. Superposition can be used to solve the response equation.
* **LOADINGS：The** loads applied to a structure that result in deflections and consequent strains and stresses.
* **LOCAL STRESSES**： Areas of stress that are significantly different from (usually higher than) the general stress level.
* **LOWER BOUND SOLUTION UPPER BOUND SOLUTION**： The assumed displacement form of the finite element solution gives a lower bound on the maximum displacements and strain energy (i.e. these are under estimated) for a given set of forces. This is the usual form of the finite element method. The assumed stress form of the finite element solution gives an upper bound on the maximum stresses and strain energy (i.e. these are over estimated) for a given set of displacements.
* **LUMPED MASS MODEL**: When the coefficients of the mass matrix are combined to produce a diagonal matrix. The total mass and the position of the structures center of gravity are preserved.


## M

* **MASS**: The constant(s) of proportionality relating the acceleration(s) to the force(s). For a discrete parameter multi degree of freedom model this is usually given as a mass matrix.
* **MASS ELEMENT**: An element lumped at a node representing the effect of a concentrated mass in different coordinate directions.
* **MASS MATRIX**: The matrix relating acceleration to forces in a dynamic analysis. This can often be approximated as a diagonal matrix with no significant loss of accuracy.
* **MASTER FREEDOMS**: The freedoms chosen to control the structural response when using a Guyan reduction or sub structuring methods.
* **MATERIAL LOSS FACTOR**: A measure of the damping inherent within a material when it is dynamically loaded.
* **MATERIAL PROPERTIES**: The physical properties required to define the material behavior for analysis purposes. For stress analysis typical required material properties are Young’s modulus, Poisson’s ratio, density and coefficient of linear expansion. The material properties must have been obtained by experiment.
* **MATERIAL STIFFNESS MATRIX MATERIAL FLEXIBILITY MATRIX**: The material stiffness matrix allows the stresses to be found from a given set of strains at a point. The material flexibility is the inverse of this, allowing the strains to be found from a given set of stresses. Both of these matrices must be symmetric and positive definite.
* **MATRIX DISPLACEMENT METHOD**: A form (the standard form) of the finite element method where displacements are assumed over the element. This gives a lower bound solution.
* **MATRIX FORCE METHOD**: A form of the finite element method where stresses (internal forces) are assumed over the element. This gives an upper bound solution.
* **MATRIX INVERSE**: If matrix A times matrix B gives the unit matrix then A is the inverse of B (B is the inverse of A). A matrix has no inverse if it is singular.
* **MATRIX NOTATION MATRIX ALGEBRA**: A form of notation for writing sets of equations in a compact manner. Matrix notation highlights the generality of various classes of problem formulation and solution. Matrix algebra can be easily programmed on a digital computer.
* **MATRIX PRODUCTS**: Two matrices A and B can be multiplied together if A is of size (j*k) and B is of size (k*l). The resulting matrix is of size (j*l).
* **MATRIX TRANSPOSE**: The process of interchanging rows and columns of a matrix so that the j’th column becomes the j’th row.
* **MEAN SQUARE CONVERGENCE**: A measure of the rate of convergence of a solution process. A mean square convergence indicates a rapid rate of convergence.
* **MEMBRANE**: Membrane behavior is where the strains are constant from the center line of a beam or center surface of a plate or shell. Plane sections are assumed to remain plane. A membrane line element only has stiffness along the line, it has zero stiffness normal to the line. A membrane plate has zero stiffness normal to the plate. This can cause zero energy (no force required) displacements in these normal directions. If the stresses vary linearly along the normal to the centerline then this is called bending behavior.

* **Mesh (Grid)**: The elements and nodes, together, form a mesh (grid), which is the central data structure in FEA.
* **MESH DENSITY MESH REFINEMENT**: The mesh density indicates the size of the elements in relation to the size of the body being analyzed. The mesh density need not be uniform all over the body There can be areas of mesh refinement (more dense meshes) in some parts of the body. Making the mesh finer is generally referred to as h -refinement. Making the element order higher is referred to as p -refinement.
* **MESH GENERATION ELEMENT GENERATION**: The process of generating a mesh of elements over the structure. This is normally done automatically or semi-automatically.
* **MESH SPECIFICATION**: The process of choosing and specifying a suitable mesh of elements for an analysis.
* **MESH SUITABILITY**: The appropriate choice of element types and mesh density to give a solution to the required degree of accuracy.
* **MINDLIN ELEMENTS**: A form of thick shell element.
* **MOBILITY**: The ratio of the steady state velocity response to the value of the forcing function for a sinusoidal excitation.
* **MODAL DAMPING**: The damping associated with the generalized displacements defined by the eigenvectors. Its value has no physical significance since the eigenvector contains an arbitrary normalizing factor.
* **MODAL MASS**: The mass associated with the generalized displacements defined by the eigenvectors. Its value has no physical significance since the eigenvector contains an arbitrary normalizing factor but the ratio of modal stiffness to modal mass is always the eigenvalue.
* **MODAL STIFFNESS**: The stiffness associated with the generalized displacements defined by the eigenvectors. Its value has no physical significance since the eigenvector contains an arbitrary normalizing factor but the ratio of modal stiffness to modal mass is always the eigenvalue.
* **MODAL TESTING**: The experimental technique for measuring resonant frequencies (eigenvalues) and mode shapes (eigenvectors).
* **MODE PARTICIPATION FACTOR**: The generalized force in each modal equation of a dynamic system.
* **MODE SHAPE**: Same as the e igenvector. The mode shape often refers to the measure mode, found from a modal test.
* **MODELLING**: The process of idealizing a system and its loading to produce a numerical (finite element) model.
* **MODIFIED NEWTON-RAPHSON**: A form of the Newton-Raphson process f or solving non-linear equations where the tangent stiffness matrix is held constant for some steps. It is suitable for mildly non-linear problems.
* **MOHR COULOMB EQUIVALENT STRESS**: A form of equivalent stress that includes the effects of friction in granular (e.g. sand) materials.
* **MULTI DEGREE OF FREEDOM**: The system is defined by more than one force/displacement equation.
* **MULTI-POINT CONSTRAINTS**: Where the constraint is defined by a relationship between more than one displacement at different node points.


## N

* **NATURAL FREQUENCY**: The frequency at which a structure will vibrate in the absence of any external forcing. If a model has n degrees of freedom then it has n natural frequencies. The eigenvalues of a dynamic system are the squares of the natural frequencies.
* **NATURAL MODE**: Same as the eigenvector.
* **NEWMARK METHOD NEWMARK BETA METHOD:** An implicit solution method for integrating second order equations of motion. It can be made unconditionally stable.
* **NEWTON COTES FORMULAE**: A family of methods for numerically integrating a function.
* **NEWTON-RAPHSON NON-LINEAR SOLUTION**: A general technique for solving non-linear equations. If the function and its derivative are known at any point then the Newton-Raphson method is second order convergent.
* **NODAL VALUES**: The value of variables at the node points. For a structure typical possible nodal values are force, displacement, temperature, velocity, x, y, and z.
* **NODE**: A node is a point in the domain, and is often the vertex of several elements. A node is also called a nodal point.
computers to generate finite element mesh automatically. There are many different algorithms for automatic mesh generation. Click here to see some automatically generated mesh samples.
* **NON-CONFORMING ELEMENTS**: Elements that do not satisfy compatibility either within the element or across element boundaries or both. Such elements are not generally reliable although they might give very good solutions in some circumstances.
* **NON-HOLONOMIC CONSTRAINTS**: Constraints that can only be defined at the level of infinitesimal displacements. They cannot be integrated to give global constraints.
* **NON-LINEAR SYSTEM/ANALYSIS**: Nonlinear Finite Element Analysis considers material nonlinearity and/or geometric nonlinearity of an engineering system. Geometric nonlinear analysis is also called large deformation analysis.
* **NON-STATIONARY RANDOM**: A force or response that is random and its statistical properties vary with time.
* **NON-STRUCTURAL MASS**: Mass that is present in the system and will affect the dynamic response but it is not a part of the structural mass (e.g. the payload).
* **NORM**: A scalar measure of the magnitude of a vector or a matrix.
* **NUMERICAL INTEGRATION**: The process of finding the approximate integral of a function by numerical sampling and summing. In the finite element method the element matrices are usually formed by the Gaussian quadrature form of numerical integration.


## O

* **OPTIMAL SAMPLING POINTS**: The minimum number of Gauss points required to integrate an element matrix. Also the Gauss points at which the stresses are most accurate (see reduced Gauss points).
* **OVER DAMPED SYSTEM**: A system which has an equation of motion where the damping is greater than critical. It has an exponentially decaying, non-oscillatory impulse response.
* **OVERSTIFF SOLUTIONS**: Lower bound solutions. These are associated with the assumed displacement method.


## P

* **PARTICIPATION FACTOR**: The fraction of the mass that is active for a given mode with a given distribution of dynamic loads. Often this is only defined for the specific load case of inertia (seismic) loads.
* **PATCH TEST**: A test to prove that a mesh of distorted elements can represent constant stress situations and strain free rigid body motions (i.e. the mesh convergence requirements) exactly.
* **PDEs**:  partial differential equations.
* **PERIODIC RESPONSE FORCE**: A response (force) that regularly repeats itself exactly.
* **PHASE ANGLE**: The ratio of the in phase component of a signal to its out of phase component gives the tangent of the phase angle of the signal relative to some reference.
* **PLANE STRAIN/STRESS**: A two dimensional analysis is plane stress if the stress in the third direction is assumed zero. This is valid if the dimension of the body in this direction is very small, e.g. a thin plate. A two dimensional analysis is plane strain if the strain in the third direction is assumed zero. This is valid if the dimension of the body in this direction is very large, e.g. a cross- sectional slice of a long body.
* **PLATE BENDING ELEMENTS**: Two-dimensional shell elements where the in plane behavior of the element is ignored. Only the out of plane bending is considered.
* **POISSONS RATIO**: The material property in Hooke s law relating strain in one direction arising from a stress in a perpendicular direction to this. Poissons' ratio can be defined in WELSIM material module.
* **POST-PROCESSING**: The interrogation of the results after the analysis phase. This is usually done with a combination of graphics and numerics.
* **POTENTIAL ENERGY**: The energy associated with the static behavior of a system. For a structure this is the strain energy.
* **POWER METHOD**: A method for finding the lowest or the highest eigenvalue of a system.
* **PRANDTL-REUSS EQUATIONS**: The equations relating an increment of stress to an increment of plastic strain for a metal undergoing plastic flow.
* **PREPROCESSING**: The process of preparing finite element input data involving model creation, mesh generation,material definition, and load and boundary condition application.
* **PRIMARY COMPONENT**: Those parts of the structure that are of direct interest for the analysis. Other parts are secondary components.
* **PRINCIPAL CURVATURE**: The maximum and minimum radii of curvature at a point.
* **PRINCIPAL STRESSES**: The maximum direct stress values at a point. They are the eigenvalues of the stress tensor.
* **PROPORTIONAL DAMPING**: A damping matrix that is a linear combination of the mass and stiffness matrices. The eigenvectors of a proportionally damped system are identical to those of the undamped system.
* **P-METHOD**: A method of finite element analysis that uses P- convergence to iteratively minimize the error of analysis.
* **QR METHOD**: A technique for finding eigenvalues. This is currently the most stable method for finding eigenvalues but it is restricted in the size of problem that it can solve.
* **RANDOM VIBRATIONS**: The applied loading is only known in terms of its statistical properties. The loading is nondeterministic in that its value is not known exactly at any time but its mean, mean square, variance and other statistical quantities are known.


## R

* **RANK DEFICIENCY**: A measure of how singular a matrix is.
* **RAYLEIGH DAMPING**: Damping that is proportional to a linear combination of the stiffness and mass. This assumption has no physical basis but it is mathematically convenient to approximate low damping in this way when exact damping values are not known.
* **RAYLELGH QUOTIENT**: The ratio of stiffness times displacement squared (2*strain energy) to mass times
displacement squared. The minimum values of the Rayleigh quotient are the eigenvalues.
* **REACTION FORCES**: The forces generated at support points when a structure is loaded. Reaction force is supported in WELSIM.
* **REFERENCE TEMPERATURE**: The reference temperature defines the temperature at which strain in the design does not result from thermal expansion or contraction. For many situations, reference temperature is adequately defined as room temperature. Define reference temperature in the properties of an environment.
* **REDUCED INTEGRATION**: If an element requires an l*m*n Gauss rule to integrate the element matrix exactly then (l-1)*(m-1)*(n-1) is the reduced integration rule. For many elements the stresses are most accurate at the reduced integration points. For some elements the matrices are best evaluated by use of the reduced integration points. Use of reduced integration for integrating the elements can lead to zero energy and hour glassing modes.
* **RESPONSE SPECTRUM METHOD**: A method for characterizing a dynamic transient forcing function and the associated solution technique. It is used for seismic and shock type loads.
* **RIGID BODY DEFORMATIONS**: A non-zero displacement pattern that h as zero strain energy associate with it.
* **RIGID BODY DISPLACEMENT**: A non-zero displacement pattern that has zero strain energy associate with it.
* **RIGID BODY MODES**: If a displaced shape does not give rise to any strain energy in the structure then this a rigid body mode. A general three-dimensional unsupported structure has 6 rigid body modes, 3 translation and 3 rotation.
* **RIGID LINKS/OFFSETS**: This is a connection between two non-coincident nodes assuming that the connection is infinitely stiff. This allows the degrees of freedom at one of the nodes (the slave node) to be deleted from the system. It is a form of multi-point constraint.
* **ROUNDOFF ERROR**: Computers have a fixed word length and hence only hold numbers to a certain number of significant figures. If two close numbers are subtracted one from another then the result loses the first set of significant figures and hence loses accuracy. This is round off error.


## S

* **SECANT STIFFNESS**: The stiffness defined by the slope of the line from the origin to the current point of interest on a load/deflection curve.
* **SECONDARY COMPONENTS**: Components of a structure not of direct interest but they may have some influence of the behavior of the part of the structure that is of interest (the primary component) and have to be included in the analysis in some approximate form.
* **SEEPAGE FLOW**: Flows in porous materials
* **SEISMIC ANALYSIS**: The calculation of the dynamic displacement and stress response arising from earthquake excitations.
* **SELECTED REDUCED INTEGRATION**: A form of Gaussian quadrature where different sets of Gauss points are used for different strain components.
* **SELF ADJOINT EQUATIONS**: A form of matrix products that preserves symmetry of equations. The product A*B*A(transpose) is self -adjoint if the matrix B is symmetric. The result of the product will be symmetric for any form of A that is of a size compatible with B. This form o f equation occurs regularly within the finite element method. Typically it means that for a structural analysis the stiffness (and mass) matrices for any element or element assembly will be
symmetric.
* **SELF EQUILIBRATING LOADS**: A load set is self -equilibrating if all of its resultants are zero. Both translation and moment resultants are zero.
* **SEMI-LOOF ELEMENT**: A form of thick shell element.
* **SHAKEDOWN**: If a structure is loaded cyclically and initially undergoes some plastic deformation then it is said to shakedown if the behavior is entirely elastic after a small number of load cycles.
* **SIMULTANEOUS VECTOR ITERATION**: A method for finding the first few eigenvalues and eigenvectors of a finite element system. This is also known as subspace vector iteration.
* **SINGLE DEGREE OF FREEDOM**: The system is defined by a single force/displacement equation.
* **SINGLE POINT CONSTRAINT**: Where the constraint is unique to a single node point.
* **SINGULAR MATRIX**: A square matrix that cannot be inverted.
* **SKEW DISTORTION (ANGULAR DISTORTION)**: A measure of the angular distortion arising between two vectors that are at right angles in the basis space when these are mapped to the real coordinate space. If this angle approaches zero the element becomes ill-conditioned.
* **SOLUTION DIAGNOSTICS**: Messages that are generated as the finite element solution progresses. These should always be checked for relevance but the are often only provided for information purposes
* **SOLUTION EFFICIENCY**: A comparative measure between two solutions of a given problem defining which is the ‘best’. The measures can include accuracy, time of solution, memory requirements and disc storage space.
* **SPARSE MATRIX METHODS**: Solution methods that exploit the sparse nature of finite element equations. Such methods include the frontal solution and Cholesky (skyline) factorization for direct solutions, conjugate gradient methods for iterative solutions and the Lanczos method and subspace iteration (simultaneous vector iteration) for eigenvalue solutions.
* **SPECTRAL DENSITY**: The Fourier transform of the correlation function. In random vibrations it gives a measure of the significant frequency content in a system. White noise has a constant spectral density for all frequencies.
* **SPLINE CURVES**: A curve fitting technique that preserves zero, first and second derivative continuity across segment boundaries.
* **STATIC ANALYSIS**: Analysis of stresses and displacements in a structure when the applied loads do not vary with time.
* **STATICALLY DETERMINATE STRUCTURE**: A structure where all of the unknowns can be found from equilibrium considerations alone.
* **STATICALLY EQUIVALENT LOADS**: Equivalent nodal loads that have the same equilibrium resultants as the applied loads but do not necessarily do the same work as the applied loads.
* **STATICALLY INDETERMINATE STRUCTURE REDUNDANT**: A structure where all of the unknowns can not be found from equilibrium considerations alone. The compatibility equations must also be used. In this case the structure is said to be redundant.
* **STATIONARY RANDOM EXCITATION**: A force or response that is random but its statistical characteristics do not vary with time.
* **STEADY-STATE HEAT TRANSFER**: Determination of the temperature distribution of a mechanical part having reached thermal equilibrium with the environmental conditions. There are no time varying changes in the resulting temperatures.
* **STIFFNESS**: A set of values which represent the rigidity or softness of a particular element. Stiffness is determined by material type and geometry.
* **STIFFNESS MATRIX**: The parameter(s) that relate the displacement(s) to the force(s). For a discrete parameter multi degree of freedom model this is usually given as a stiffness matrix.
* **STRAIN**: A dimensionless quantity calculated as the ratio of deformation to the original size of the body.
* **STRAIN ENERGY**: The energy stored in the system by the stiffness when it is displaced from its equilibrium position.
* **STRESS**: The intensity of internal forces in a body (force per unit area) acting on a plane within the material of the body is called the stress on that plane.
* **STRESS ANALYSIS**: The computation of stresses and displacements due to applied loads. The analysis may be elastic, inelastic, time dependent or dynamic.
* **STRESS AVERAGING STRESS SMOOTHING**: The process of filtering the raw finite element stress results to obtain the most realistic estimates of the true state of stress.
* **STRESS CONCENTRATION**: A local area of the structure where the stresses are significantly higher than the general stress level. A fine mesh of elements is required in such regions if accurate estimates of the stress concentration values are required.
* **STRESS CONTOUR PLOT**: A plot of a stress component by a series of color filled contours representing regions of equal stress. WELSIM can plot stress contour.
* **STRESS DISCONTINUITIES/ERROR ESTIMATES**: Lines along which the stresses are discontinuous. If the geometry or loading changes abruptly along a line then the true stress can be discontinuous. In a finite element solution the element assumptions means that the stresses will generally be discontinuous across element boundaries. The degree of discontinuity can then be used to form an estimate of the error in the stress within the finite element calculation.
* **STRESS EXTRAPOLATION**: The process of taking the stress results at the optimum sampling points for an element and extrapolating these to the element node points.
* **STRESS INTENSITY FACTORS**: A measure of the importance of the stress at a sharp crack tip (where the actual stress values will be infinite) used to estimate if the crack will propagate.
* **STRESS/STRAIN VECTOR/TENSOR**: The stress (strain) vector is the components of stress (strain) written as a column vector. For a general three dimensional body this is a (6×1) matrix. The components of stress (strain) written in tensor form. For a general three dimensional body this forms a (3×3) matrix with the direct terms down the diagonal and the shear terms as the off-diagonals.
* **STRESS-STRAIN LAW**: The material property behavior relating stress to strain. For a linear behavior this is Hookes law (linear elasticity). For elastic plastic behavior it is a combination of Hookes law and the Prandtl-Reuss equations.
* **SUBSPACE VECTOR ITERATION**: A method for finding the first few eigenvalues and eigenvectors of a finite element system. This is also known as simultaneous vector iteration.
* **SUBSTRUCTURING**: An efficient way of solving large finite element analysis problems by breaking the model into several parts or substructures, analyzing each one individually, and then combining them for the final results.
* **SUBSTRUCTURING SUPER ELEMENT METHOD**: Substructuring is a form of equation solution method where the structure is split into a series of smaller structures -the substructures. These are solved to eliminate the internal freedoms and the complete problem solved by only assembling the freedoms on the common boundaries between the substructures. The intermediate solution where the internal freedoms of a substructure have been eliminated gives the super element matrix
for the substructure.
* **SURFACE MODELING**: The geometric modeling technique in which the model is created in terms of its surfaces only without any volume definition.


## T

* **TEMPERATURE CONTOUR PLOTS**: A plot showing contour lines connecting points of equal temperature.
* **TETRAHEDRON/TETRAHEDRAL ELEMENT**: A three dimensional four sided solid element with triangular faces.
* **THERMAL CAPACITY**: The material property defining the thermal inertia of a material. It relates the rate of change of temperature with time to heat flux.
* **THERMAL CONDUCTIVITY**: The material property relating temperature gradient to heat flux. Temperature-dependent thermal conductivity is supported in WELSIM.
* **THERMAL LOADS**: The equivalent loads on a structure arising from thermal strains. These in turn arise from a temperature change.
* **THERMAL STRAINS**: The components of strain arising from a change in temperature.
* **THERMAL STRESS ANALYSIS**: The computation of stresses and displacements due to change in temperature.
* **THIN/THICK SHELL ELEMENT**: In a shell element the geometry is very much thinner in one direction than the other two. It can then be assumed stresses can only vary linearly at most in the thickness direction. If the through thickness shear strains can be taken as zero then a thin shell model is formed. This uses the Kirchoff shell theory If the transverse shear strains are not ignored then a thick shell model is formed. This uses the Mindlin shell theory. For the finite element method the thick shell theory generates the most reliable form of shell elements. There are two forms of such elements, the Mindlin shell and the Semi-Loof shell.
* **TIME DOMAIN**: The structures forcing function and the consequent response is defined in terms of time histories. The Fourier transform of the time domain gives the corresponding quantity in the frequency domain.
* **TRANSIENT FORCE**: A forcing function that varies for a short period of time and then settles to a constant value.
* **TRANSIENT RESPONSE**: The component of the system response that does not repeat itself regularly with time.
* **TRANSITION ELEMENT**: Special elements that have sides with different numbers of nodes. They are used to couple elements with different orders of interpolation, typically a transition element with two nodes on one edge and three on another is used to couple a 4-node quad to an 8-node quad.
* **TRANSIENT HEAT TRANSFER**: Heat transfer problems in which temperature distribution varies as a function of time.
* **TRIANGULAR ELEMENTS**: Two dimensional or surface elements that have three edges.
* **TRUSS ELEMENT**: A one dimensional line element defined by two nodes resisting only axial loads.


## U

* **ULTIMATE STRESS**: The failure stress (or equivalent stress) for the material.
* **UNDAMPED NATURAL FREQUENCY**: The square root of the ratio of the stiffness to the mass (the square root of the eigenvalue). It is the frequency at which an undamped system vibrates naturally. A system with n degrees of freedom has n natural frequencies.
* **UNDER DAMPED SYSTEM**: A system which has an equation of motion where the damping is less than critical. It has an oscillatory impulse response.
* **UPDATED/TOTAL LAGRANGIAN**: The updated Lagrangian coordinate system is one where the stress directions are referred to the last known equilibrium state. The total Lagrangian coordinate system is one where the stress directions are referred to the initial geometry. Both algorithms are supported in WELSIM.

 
## V

* **VARIABLE BANDWIDTH (SKYLINE)**: A sparse matrix where the bandwidth is not constant. Some times called a skyline matrix.
* **VIRTUAL DISPLACEMENTS**: An arbitrary imaginary change of the system configuration consistent with its constraints.
* **VIRTUAL WORK/DISPLACEMENTS/FORCES**: Techniques for using work arguments to establish equilibrium equations from compatibility equations (virtual displacements) and to establish compatibility equations from equilibrium (virtual forces).
* **VISCOUS DAMPING**: The damping is viscous when the damping force is proportional to the velocity.
* **VOLUME/VOLUMETRIC DISTORTION**: The distortion measured by the determinant of the Jacobian matrix, det J.
* **VON MISES STRESS**: An “averaged” stress value calculated by adding the squares of the 3 component stresses (X, Y and Z directions) and taking the square root of their sums. This value allows for a quick method to locate probable problem areas with one plot.
* **VON MISES/TRESCA EQUIVALENT STRESS**: Equivalent stress measures to represent the maximum shear stress in a material. These are used to characterize flow failures (e.g. plasticity and creep) in WELSIM. From test results the VonMises form seems more accurate but the Tresca form is easier to handle.

 
## W

* **WHIRLING STABILITY**: The stability of rotating systems where centrifugal and Coriolis are also present.
* **WILSON THETA METHOD**: An implicit solution method for integrating second order equations of motion. It can be made unconditionally stable.

 
## Y

* **YOUNG’S MODULUS**: The material property relating a uniaxial stress to the corresponding strain.


## Z

* **ZERO ENERGY/STIFFNESS MODES**: Non-zero patterns of displacements that have no energy associated with them. No forces are required to generate such modes, Rigid body motions are zero energy modes. Buckling modes at their buckling loads are zero energy modes. If the elements are not fully integrated they will have zero energy displacement modes. If a structure has one or more zero energy modes then the matrix is singular. 



