# FrontISTR format

The format of exported material scripts is based on the FrontISTR 5.6, more details please refer to the FrontISTR user reference manual.

## Supported FrontISTR units

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


## Supported FrontISTR materials

### Basic
* Density
* ISOTROPIC ELASTIC - Linear Elasticity
* ORTHOTROPIC ELASTIC - Orthotropic Elasticity


### Hyperelasticity 
* NEOHOOKE — Neo-Hookean
* MOONEY-RIVLIN — Mooney-Rivlin2
* ARRUDA-BOYCE — Arruda-Boyce
<!-- * MOONEY-RIVLIN-ANISO — Mooney-Rivlin3 -->


### Plasticity
* MISES BILINEAR — Density + Isotropic Elasticity + Isotropic Bilinear
* MISES KINEMATIC — Density + Isotropic Elasticity + Kinematic Bilinear
* MISES MULTILINEAR — Density + Isotropic Multilinear
* SWIFT — Density + Isotropic Elasticity + Swift Hardening
* RAMBERG-OSGOOD — Density + Isotropic Elasticity + Ramberg-Osgood


### Creep Models
* NORTON — Density + Isotropic Elasticity + Norton


**More materials will be added upon user's request.**

---
