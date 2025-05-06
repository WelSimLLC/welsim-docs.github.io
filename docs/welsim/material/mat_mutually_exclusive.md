# Mutually exclusive properties
Some properties are mutually exclusive of each other and require that only one property in the mutually exclusive set be unsuppressed. The addition or removing of the suppression for one of these properties automatically suppresses the other mutually exclusive properties.

For example, defining Isotropic Elasticity and Orthotropic Elasticity for the same material represents redundant elasticity behavior. Only one behavior can be active for the material. When such a conflict occurs, the property defined last is used and the previously defined, conflicting property is automatically suppressed.

The properties that are mutually exclusive are grouped in the following table.

| Group | Material Property | 
| ----- | ----------------- |
| Elastic properties | Isotropic Elasticity, Orthotropic Elasticity, Anisotropic Elasticity, Mooney-Rivlin, Neo-Hookean, Polynomial, Yeoh, Ogden, Arruda-Boyce, Gent, Blatz-Ko, Ogden Foam, Extended Tube, Mullins Effect |
| Plastic properties | Bilinear Isotropic Hardening, Multilinear Isotropic Hardening, Bilinear Kinematic Hardening, Multilinear Kinematic Hardening |
| Electric properties | Relative Permeability, Orthotropic Relative Permeability |
| Thermal conductivity properties | Thermal Conductivity Isotropic, Thermal Conductivity Orthotropic |
| Resistivity properties | Isotropic Resistivity, Orthotropic Resistivity |
| Magnetic properties | Relative Permeability, B-H Curve |
| Magnetic properties | Relative Permeability, B-H Curve |


