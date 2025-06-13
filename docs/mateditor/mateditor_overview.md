# Overview

**MatEditor** is a free material editor software program for engineers. This tool provides you comprehensive material properties those are often used in engineering simulation and finite element analysis.

![finite_element_analysis_mateditor_gui](../img/mateditor/finite_element_analysis_mateditor_overview.png "MatEditor user interface")

The module not only provides a material library but  allow you to create a material using the given properties. The properties view of a Material object is the primary user interface designed to let you create, save, and retrieve material models. The well-defined material object can be saved and used in the subsequent projects. 


## Specification

| Specification | Description |
| ------------- | ----------- |
| Operation system | Microsoft Windows 7 to 10; 64-bit |
| Physical memory | At least 4 GB |

Supported unit systems :

* [x] SI: (kg, m, s, K, A, N, V)
* [x] MKS Standard: (kg, m, s, °C, A, N, V)
* [x] NMMTON Standard: (tonne, mm, s, °C, A, N, mV)
* [x] BIN Standard: (lbm, in, s, °F, A, lbf, V)
* [ ] US Engineering: (lb, in, s, R, A, lbf, V)
* [x] CGS Standard: (g, cm, s, °C, A, dyne, V)
* [x] NMM Standard: (kg, mm, s, °C, mA, N, mV)
* [x] UMKS Standard: (kg, µm, s, °C, mA, µN, V)
* [x] NMMDAT Standard: (decatonne, mm, s, °C, mA, N, mV)
* [x] BFT Standard: (lbm, ft, s, °F, A, lbf, V)
* [ ] CGS Consistent: (g, m, s, °C, A, dyne, V)
* [ ] NMM Consistent: (tonne, m, s, °C, mA, t⋅mm/s2, mV)
* [ ] UMKS Consistent: (kg, m, s, °C, pA, µN, pV)
* [ ] BIN Consistent: (slinch, in, s, °C, A, slinch⋅in/s2, V)
* [ ] BFT Consistent: (slug, ft, s, °C, A, slug⋅ft/s2, V)
* [x] CGuS Standard: (g, cm, $\mu$s, °C, A, dyne, V)


## Graphical user interface
The ease-of-use Material Module contains the following graphical user interface components: 

* **Toolbox**: provdies two options (**Library** and **Build** tabs) for you to edit material data. 
* **Library outline pane**: lists predefined materials for you to quickly add material data.
* **Property outline pane**: shows an outline of the contents of the togglable material properties. You can add a property data entry to the material by toggling on the property entry or remove property by toggling off the property entry. 
* **Properties view pane**: displays all properties that are going to be added to the **Material Object**. You can tune the property values at this pane. 
* **Table pane**: allows you to define and review tabular data for material properies.
* **Chart pane**: displays the property tabular data in vivid. 


## Material properties
The supported material properties are listed in the table below.

| Category | Materials |
| -------- | --------- |
| Basic | Density, Isotropic Thermal Expansion, Isotropic Instantaneous Thermal Expansion, Orthotropic Thermal Expansion, Orthotropic Instantaneous Thermal Expansion, Constant Damping Coefficient, Local Coordinates, Mass  |
| Linear Elastic | Isotropic Elasticity, Orthotropic Elasticity, Viscoelastic |
| Test Data | Uniaxial Test Data, Biaxial Test Data, Shear Test Data, Volumetric Test Data, SimpleShear Test Data, Uniaxial Tension Test Data, Uniaxial Compression Test Data, Visco Bulk Test Data, Visco Hear Test Data, P-B Test Data|
| Hyperelastic | Arruda-Boyce, Blatz-Ko, Gent, Mooney-Rivlin 2/3/5/9, Neo-Hookean, Ogden 1st/2nd/3rd Order, Polynomial 1st/2nd/3rd Order, Yeoh 1st/2nd/3rd Order |
| Plasticity | Bilinear Isotropic Hardening, Multilinear Isotropic Hardening, Bilinear Kinematic Hardening, Multilinear Kinematic Hardening, Anand Viscoplasticity, Barlat3, Barlat2000, Concreate Model, Cowper-Symonds Strength, Deshpande-Fleck Model, Gary Model, Gurson Model, Hensel-Spittel Yield, Hill Anisotropic MCC, Hill Orthotropic, Hill Orthotropic Thermal, HoneyComb, Johnson-Cook Strength, Johnson-Holmquist Strength, Johnson-Voce-Prucker, Paperboard Model, Plastic Elastomer, Ramberg-Osgood Hardening, Rate-Dependent Multilinear Hardening, Steel Phase Transformation, Steinberg-Guinan Strength, Swift Hardening, Swift-Voce Model, Vegter Model, Yoshida-Uemori Strength, Zerilli-Armstrong Strength, Zhao Strength |
| Creep | Strain Hardening, Time Hardening, Generalized Exponential, Generalized Graham, Generalized Blackburn, Modified Time Hardening, Modified Strain Hardening, Generalized Garofalo, Exponential Form, Norton, Combined Time Hardening, Rational Polynomial, Generalized Time Hardening |
| Visco-elastic | Boltzmann, Maxwell-Kelvin, Maxwell-Kelvin-Voigt, Prony Shear Relaxation, Prony Volumetric Relaxation, Tool Narayanaswamy Fictive (Temperature Shift) Function, William-Landel-Ferry Shift Function |
| Equations of State | EOS Compaction, EOS Gruneisen, EOS Ideal Gas, EOS Ideal Gas VT, EOS Linear, EOS LSZK, EOS Murnaghan, EOS NASG, EOS Noble-Abel, EOS Osborne, EOS Polynomial, EOS Puff, EOS Sesame, EOS Stiff Gas, EOS Tillotson | 
| Failure | Crack Softening Failure, Alter Failure, Biquad Failure, Cockcroft Failure, Connect Failure, EMC Failure, Energy Failure, Fabric Failure, FLD Failure, General Damage Failure, Gurson Failure, Hashin Failure, Johnson Failure, Lad Dama Failure, NXT Failure, Puck Failure,  Wierzbicki Failure, Wilkins Failure, Plastic Strain Failure, Tensile Pressure Failure |
| Thermal | Enthalpy, Isotropic Thermal Conductivity, Orthotropic Thermal Conductivity, Specific Heat Cp, Specific Heat Cv, Specific Heat Rho0Cp |
| Electromagnetics | B-H Curve, Isotropic Relative Permeability, Orthotropic Relative Permeability, Isotropic Resistivity, Orthotropic Resistivity, Isotropic Dielectric Loss Tangent, Isotropic Electrical Conductivity,  Orthotropic Electrical Conductivity, Isotropic MagneticLoss Tangent, Orthotropic Magnetic Loss Tangent， Orthotropic Dielectric Loss Tangent, Isotropic Relative Imaginary Permeability, Isotropic Relative Permittivity, Orthotropic Relative Permeability，Orthotropic Relative Permittivity， Orthotropic Resistivity |
| Fluids | Dynamic Viscosity, Kinematic Viscosity, Lamalar Prandtl Number, Turbulent Prandtl Number, ALE, JWL | 


## Predefined materials
WELSIM also provide predefined materials, which covers most of commonly used materials. Users can choose these materials and apply to the successive finite element analysis.

| Category | Materials |
| -------- | --------- |
| General Materials | Structural Steel, Stainless Steel, Aluminum Alloy, Concrete, Copper Alloy, Gray Cast Iron, Titanium Alloy |
| Nonlinear Materials | Aluminum Alloy NL, Concrete NL, Copper Alloy NL, Stainless Steel NL, Structural Steel NL, Titanium Alloy NL |
| Hyperelastic Materials | Elastomer Mooney-Rivlin, Elastomer Neo-Hookean, Elastomer Ogden, Elastomer Yeoh, Neoprene Rubber |
| Thermal Materials | Brass, Bronze, Copper, Diamond, Ferrite, Nodular Cast Iron, Solder, Teflon, Tungsten, Wood |
| Electromagnetic Materials | SS416, Supermendure, Sapphire, TDK K1, TDK M33, TDK N30, TDK N41, TDK N45, TDK N48, TDK N49, TDK N87, TDK N97, TDK PC200, TDK T38, TDK T66 |
| Core Loss Materials | Electrical Steel NGO(AK Stel's M19), Electrical Steel GO (ATI's M6), Cobalt Steel (Carpenter's 50A), Metglas 2605SA1, Nickel Steel (Carpenter's 49 NGO), Low Carbon Steel (Mild Steel), Iron Powder Core (Micrometal's 30 Material), Alloy Powder Core (Magnetic's KoolMu 40mu), Ferrite (Magnetics' P Material)| 
| Fluid Materials | Water Liquid, Water Vapor, Argon, Argon Liquid, Ash, Air |
| Atoms | H, He, LI, Be, B, C, N, O, F, Ne, Na |


## Working with material data
### Exporting
You can export the complete material data to an external XML file. The following format is supported for export:

* XML in WELSIM Material (MatML 3.1) schema.
* JSON in WELSIM Material schema.
* OpenRadioss input script


## Download
MatEditor software is available from our [official website](https://welsim.com/download).

