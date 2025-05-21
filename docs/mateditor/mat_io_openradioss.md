# OpenRadioss format

The format of exported material scripts is based on the OpenRadioss version 2022, more details please refer to the OpenRadioss user reference manual.

The import of OpenRadioss scripts is not supported yet in MatEditor/WELSIM.


## Supported OpenRadioss units

At present, MatEditor supports eight types of unit systems commonly used in engineering simulation, which are as follows.

* Metric kg-m-s
* Metric g-cm-s
* Metrickg-mm-s
* Metric tonne-mm-s
* Metric decatonne-mm-s
* Metric kg-um-s
* US Customary lbm-ft-s
* US Customary lbm-in-s
* Metric g-cm-us


## Supported OpenRadioss materials

### Basic
* Density
* Linear Elasticity

### Hyperelasticity and Viscoelasticity
* LAW34 — Boltzmann
* LAW35 — Maxwell-Kelvin-Voigt
* LAW40 — Maxwell-Kelvin
* LAW42 — Odgen 1/2/3
* LAW92 — Arruda-Boyce
* LAW94 — Yeoh 1/2/3
* LAW100 — Polynomial, Neo-Hookean, Mooney-Rivlin2

### Plasticity
* LAW2 — Density + Isotropic Elasticity + Johnson-Cook
* PLAS_ZERIL — Zerilli-Armstrng
* LAW22 — Density + Isotropic Elasticity + Johnson-Cook + General Damage
* LAW27 — Density + Isotropic Elasticity + Johnson-Cook + Orthotropic Brittle Failure
* LAW28 — Density + HoneyComb
* LAW32 — Hill
* LAW36 — Density + Isotropic Elasticity + Rate-Dependent Multilinear Hardening
* LAW44 — Cowper-Symonds
* LAW93 — Orthotropic Hill
* LAW48 — Zhao
* LAW49 — Steinberg-Guinan
* LAW52 — Gurson
* LAW57 — Barlet3
* LAW78 — Yoshida-Uemori
* LAW79 — Johnson-Holmquist
* LAW84 — Swift-Voce
* LAW103 — Hensel-Spittel
* LAW110 — Vegter

### Concrete
* LAW24(CONC) - Density + Isotropic Elasticity + Concrete Model


### Failure Models
* ALTER — Glass Failure
* BIQUD — BiQuadratic
* COCKCROFT — Cockcroft
* CONNECT-Connect
* EMC — ExtendedMohr-Coulomb
* ENERGY-Energy
* FABRIC — Fabric
* FLD — Forming Limit Diagram
* GURSON — Gurson
* HASHIN — Hashin
* HC_DSSE — Ladeveze Delamination
* JOHNSON-Johnson-Cook
* MULLINS_OR — Mullins Effect
* NXT — NXT
* ORTHBIQUAD — Orthotropic Biquad
* ORTHSTRAIN — Orthotropic Strain
* PUCK — Puck
* TBUTCHER — Tuler-Butcher
* TENSSTRAIN — Tensile Strain
* WILKINS — Wilkins
* WIERZBICKI — Wierzbicki

### Equation of State (EOS)
* Compaction EOS
* Gruneisen EOS
* Ideal Gas EOS
* Linear EOS
* LSZK EOS
* Murnaghan EOS
* NASG EOS
* Nobel-Abel EOS
* Osborne EOS
* Polynomial EOS
* Puff EOS
* Stiff-Gas EOS

### Fluids
* LAW06 - Kinematic Viscosity
* ALE - ALE


**More materials will be added upon user's request.**

---
