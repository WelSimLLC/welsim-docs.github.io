# Libraries and properties


## Definitions
We make use of the following terminology for materials:

| Term | Definition | 
| ---- | ---------- |
| Material | An identifier that contains a property or multiple properties |
| Property | An identifier the singular information (for example, Density) | 
| Property data | An identifier for tabular data (for example, Thermal Conductivity) |


## Sample libraries

MatEditor provides sample material data categorized into several libraries. However, you still need to validate that the data is consistent with the material you are using in your analysis.

The following materials are included:

* **General Materials**: A library of general use materials and consists mostly of metals.
* **General Nonlinear Materials**: A library of general use nonlinear materials for performing nonlinear analyses.
* **Hyperelastic Materials**: A library of materials containing test data which can be used to represent hyperelastic materails. The data doesn't correspond to any particular material.
* **Thermal Materials**: A library of materials containing thermal data.
* **Electromagnetic Materials**: A library of materials containing electromagnetic data, specific for use in an electromagnetic analysis.


## Supported properties
The supported material properties are listed by category here.

### Basics

* Density
* Isotropic Thermal Expansion
* Isotropic Instantaneous Thermal Expansion
* Orthotropic Thermal Expansion
* Orthotopic Instantaneous Thermal Expansion
* Constant Damping Coefficient
* Local Coordinates

### Linear Elastic

* Isotropic Elasticity
* Orthotropic Elasticity

### Hyperelastic Test Data

* Uniaxial Test Data
* Biaxial Test Data
* Shear Test Data
* Volumetric Test Data
* Uniaxial Plastic Strain Test Data
* Shear Test Data - Viscoelastic
* Bulk Test Data - Viscoelastic
* P-B Test Data

### Hyperelastic

* Arruda-Boyce
* Blatz-Ko
* Gent
* Mooney-Rivlin 2
* Mooney-Rivlin 3
* Mooney-Rivlin 5
* Mooney-Rivlin 9
* Neo-Hookean
* Ogden 1st Order
* Ogden 2nd Order
* Ogden 3rd Order
* Polynomial 1st Order
* Polynomial 2nd Order
* Polynomial 3rd Order
* Yeoh 1st Order
* Yeoh 2nd Order
* Yeoh 3rd Order

### Plasticity

* Bilinear Isotropic Hardening
* Multilinear Isotropic Hardening
* Bilinear Kinematic Hardening
* Multilinear Kinematic Hardening
* Chaboche Kinematic Hardening
* Anand Viscoplasticity
* Johnson-Cook Strength
* Zerilli-Armstrong Strength
* Hill Strength
* Rate-Dependent Multilinear Hardening
* Hill Orthotropic
* Cowper-Symonds Strength
* Zhao Stength
* Steinberg-Guinan Stength
* Gurson Model
* Barlat3 Model
* Yoshida-Uemori Strength
* Johnson-Holmquist Strength
* Barlat2000 Model
* Hensel-Spittel Yield
* Swift-Voce Model
* Vegter Model
* HoneyComb Model
* Swift Hardening
* Ramberg-Osgood Hardening


### Creep
* Strain Hardening
* Time Hardening
* Generalized Exponential
* Generalized Graham
* Generalized Blackburn
* Modified Time Hardening
* Modified Strain Hardening
* Generalized Garofalo
* Exponential Form
* Norton
* Combined Time Hardening
* Rational Polynomial
* Generalized Time Hardening

### Visco-elastic
* Boltzmann
* Generalized Maxwell-Kelvin-Voigt
* Generalized Maxwell-Kelvin
* Prony Shear Relaxation
* Prony Volumetric Relaxation
* William-Landel-Ferry Shift Function

### Life and Fatigue
* Strain Life Parameters
* Compressive Ultimate Strength
* Compressive Yield Strength
* LaRc0304 Constants
* Orthotropic Strain Limits
* Orthotropic Stress Limits
* Tensile Ultimate Strength
* Tensile Yield Strength
* Enthalpy

### Equations of State
* Compaction EOS
* Gruneisen EOS
* Ideal Gas EOS
* Linear EOS
* LSZK EOS
* Murnaghan EOS
* NASG EOS
* Noble-Abel EOS
* Osborne EOS
* Polynomial EOS
* Puff EOS
* Stiffened Gas EOS
* Tillotson EOS

### Failure 
* Forming Limit Diagram
* General Damage
* Hashin Failure
* Hosford-Coulomb Failure
* Johnson-Cook Failure
* Ladeveze Delamination
* Mullins Effect
* NXT Failure
* Orthotropic Bi-Quadratic Failure
* Orthotropic Brittle Failure
* Orthotropic Strain Failure
* Puck Failure
* SN Connect Failure
* Tuler-Butcher Failure
* Tensile Strain Failure
* Wierzbicki Failure
* Wilkins Failure

### Thermal 

* Isotropic Thermal Conductivity
* Orthotropic Thermal Conductivity
* Specific Heat
* Specific Gas Constant

### Electromagnetics

* B-H Curve
* Isotropic Relative Permeability
* Orthotropic Relative Permeability
* Isotropic Resistivity
* Orthotropic Resistivity
* Isotropic Relative Permittivity
* Orthotropic Relative Permittivity
* Isotropic Dielectric Loss Tangent 
* Isotropic Magnetic Loss Tangent
* Isotropic Relative Imaginary Permeability 
* Orthotropic Dielectric Loss Tangent
* Orthotropic Magnetic Loss Tangent
* Core Loss Model

### Fluid
* Dynamic Viscosity
* Kinematic Viscosity
* Lamalar Prandtl Number
* Turbulent Prandtl Number
* ALE
* JWL

