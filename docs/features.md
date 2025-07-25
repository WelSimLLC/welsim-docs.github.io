# Features
As a general-purpose engineering simulation software, WELSIM contains features that will allow you to conduct even the most complex of various simulation studies. 


## Specification
| Specification | Description |
| ------------- | ----------- |
| Operaton system | Microsoft Windows: 10/11, 64-bit <br/>  Linux: Ubuntu 22.04 LTS and higher versions, 64-bit <br/> 3D rendering driver: OpenGL 3.2 or higher |
| Physical memory | At least 4 GB; 32 GB and higher is recommended |
| Geometry modules | Imported geometry formats: STEP, STL, GDS <br/>Built-in geometry generation: Box, Cylinder, Sphere, Plane, Line, Circle, Vertex <br/> Boolean operations: Union, Intersection, Cut| 
| Supported automatic mesh | Tet10, Tet4, Tri6, Tri3 |

* [x] Project data: file with suffix "wsdb" and the associated folder (same file name).
* [x] Supported mesh export formats: UNV, MFEM, SU2, VTK.
* [x] Supported result export formats: VTK, Tecplot, Plain Text.
* [x] Supported solver scripts: [CalculiX](https://calculix.de), [Elmer FEM](https://elmerfem.org), [FrontISTR](https://frontistr.com), [LAMMPS](https://lammps.org), [MFEM](https://mfem.org), [OpenRadioss](https://openradioss.org), [Palace](https://awslabs.github.io/palace), and [SU2](https://su2code.github.io).


## Structural
| Structural analysis | Description |
| ------------- | ----------- |
| Types | Static, transient, modal |
| Materials | Isotropic elastic, hyper-elastic, plastic, visco-elastic, creep |
| Deformation types | Small, finite | 
| Contact types| Bonded, frictionless, frictional; Small, finite sliding |
| Boundary conditions | Constraints, displacement, force, pressure, velocity, acceleration |
| Body conditions | Body force, acceleration, standard earth gravity, rotational velocity |
| Results | Deformations, stresses, strains, velocity, acceleration |
| Probe results | Reaction force (total, x, y, z) |

* [x] Nonlinear materials.
* [x] Contact analysis.
* [x] Multi-body analysis.
* [x] Multi-step quasi-static analysis.
* [x] Implicit dynamics.


## Explicit Structural Dynamics (using OpenRadioss)
| Structural analysis | Description |
| ------------- | ----------- |
| Materials | Isotropic elasto-plastic (Johnson-Cook, Zerillii-Armstrong, Gray, Cowper-Symonds, Yoshida-Uemori, Hensel-Spittel, Voce), Isotropic linear elastic (Hooke's law, Johnson-Cook), hyper-elastic (Ogden, Neo-Hookean, Mooney–Rivlin), visco-elastic (Boltamann, Generalized Maxwell-Kelvin), creep, explosive (JWL), Rock (Drucker-Prager), Hill orthotropic, etc |
| Equation of state | Compaction, Gruneisen, ideal gas, linear, LSZK, Murnaghan, NASG, Noble, Polynomial, Puff, Sesame, Tillotson |
| Failure models | Alter, Biquad, Chang, Cockcroft, EMC, Energy, Fabric, forming limit diagram, Gurson, Hashin, Johnson, Ladeveze, Mullins effect with Ogden and Roxburgh criteria, NXT, orthotropic biquad, Puck, Spalling, Wierzbicki |
| Element type | Solid, shell |
| Contact types | Bonded, frictionless, frictional; Small, finite sliding |
| Boundary, body and initial conditions** | Constraints, displacement, force, pressure, velocity, acceleration, temperature, initial velocity, initial acceleration, etc. |
| Results**| Deformations, stresses, strains, velocity, acceleration, contact force, temperature, etc |

* [x] More details about the supported OpenRadioss materials are [here]().


## Thermal (using FrontISTR)

| Thermal analysis | Description |
| ------------- | ----------- |
| Types | Static, transient |
| Materials | Linear, nonlinear |
| Initial conditions | Initial temperature |
| Boundary conditions | Temperature, convection, radiation, heat flux, heat flow, perfectly insulated |
| Body conditions | Internal heat generation |
| Results | Temperature |

* [x] Multi-body analysis.
* [x] Temperature-dependent nonlinear material.
* [x] Implicit transient analysis.
* [ ] Orthotropic thermal conductivity material.
* [ ] Heat flux results.

## Computational Fluid Dynamics (using SU2)
| Fluid analysis | Description |
| ------------- | ----------- |
| Types | Steady-state, transient |
| Governing equation | Incompressible and compressible Euler, Navier-Stokes, RANS | 
| Boundary conditions | Wall, inlet, outlet, pressure, velocity, temperature, convection, heat flux |
| Results | Velocity, pressure, mass density, pressure coefficient, mach number, energy |

* [x] Incompressible fluids.
* [x] Compressible fluids.


## Electromagnetic (using Palace)

| Electromagnetic analysis | Description |
| ------------------------ | ----------- |
| Types | Electrostatic, magnetostatic, eigenmode, driven, full-wave transient |
| Materials | Linear |
| Boundary conditions | Ground, voltage, symmetry, zero charge, surface charge density, electric displacement, insulting, magnetic vector potential, magnetic flux density |
| Results | Voltage, electric field, electric displacement, magnetic vector potential, magnetic flux density, magnetic field, energy density |

* [x] Vector result display.
* [x] Parallel computing.
* [ ] Multi-body analysis.
* [ ] Nonlinear materials.


## Molecular Dynamics (using LAMMPS)
| Molecular dynamics analysis | Description |
| ------------------------ | ----------- |
| Units Type | LJ, Real, Metal, SI, CGS, Electron, Micro, Nano |
| Atom Style | Amoeba, Angle, Atomic, Body, Bond, Charge, Dielectric, Dipole, Electron, Ellipsoid, Full, Line, Molecular, Peridynamics, Sphere, Spin, Wavepacket, Hybrid |
| Analysis type | Static, frequency, buckle, green, modal dynamic, steady state dynamics, complex frequency, heat transfer |
| Pair style | Hybrid, Zero, Body, Born-Mayer-Huggins, Buckingham, Coulomb, Dissipative particle dynamics, Embedded atom method, Gaussian, Granular, Hydrogen bonding, Lennard-Jones, Hydrodynamic, lubrication forces, MEAM, N-M potential, Peridynamics, Spring |
| Boundary, body, and initial conditions | Force, wall, acceleration, temperature, velocity, gravity, pour particles, initial displacement |



## Need new features?
Feel free to send questions, comments, requests, bug reports, and success stories. Asking for a new feature usually results in us adding it to our TODO list, or if it's already on the list, assigning it higher priority.

