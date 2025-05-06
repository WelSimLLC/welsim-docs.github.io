# Plasticity
This section describes the plastic laws in details.


## Johnson-Cook Model

In this model the material behaves as a linear-elastic material when the quivalent stress is lower than the plastic yield stress. For higher stress values, the material behavior is plastic, and the true stress is calculated as:

$$
\sigma = (a+b\epsilon_p^n)(1+c\cdot ln\dfrac{\dot{\epsilon}}{\dot{\epsilon}_0})(1-(\dfrac{T-T_r}{T_{melt}-T_r})^m)
$$

where $\epsilon_p$ is the plastic strain, $\dot{\epsilon}$ is strain rate, $T$ is the temperature, $T_r$ is the ambient temperature, $T_{melt}$ is the melting temperature. The plastic yield stress $a$ should always be greater than zero. The plastic hardening exponent $n$ must be less than or equal to 1.


## Zerilli-Armstrong Model

The stress during plastic deformation is defined by 

$$
\sigma = C_0 + C_1 exp(-C_3 T + C_4 T ln \dfrac{\dot{\epsilon}}{\dot{\epsilon}_0} ) + C_5 \epsilon_p ^n
$$

where the yield stress $C_0$ should be positive, plastic hardening exponent $n$ must be less than 1. 

## Hill Model
The Hill model describes the orthotropic plastic material. The yield stress can be input by parameters or tabular data. The yield stress is defined as:

$$
\sigma_y = a(\epsilon_0+\epsilon_p)^n \mathrm{max}(\dot{\epsilon}, \dot{\epsilon}_0)^m
$$

The maximum elastic stress is given by

$$
\sigma_0 = a(\epsilon_0)^n (\dot{\epsilon}_0)^m
$$

The yield stress is compresed to the equivalent stress:

$$
\sigma_{eq} = \sqrt{A_1 \sigma_1^2 + A_2 \sigma_2^2 -A_3 \sigma_1 \sigma_2 +A_{12} \sigma_{12}^2}
$$

where parameters $A_1$, $A_2$, $A_3$, and $A_{12}$ are defined by the Lankford constants.

## Orthotropic Hill Model
This model describes the orthotropic elastic behavior material with Hill plasticity. The yield stress is compared to an equivalent stress for the orthotropic materials. The equivalent stress for solid elements is defined as: 

$$
\sigma_{eq} = \sqrt{F(\sigma_{22}^2 - \sigma_{33}^2) + G(\sigma_{33}^2 - \sigma_{11}^2) + H(\sigma_{11} - \sigma_{22}^2) + 2L\sigma_{23}^2 + 2M\sigma_{31}^2 + 2N\sigma_{12}^2}
$$

For the shell element, the equivalent yield stress is :

$$
\sigma_{eq} = \sqrt{(G+H)\sigma_{11}^2 +(F+H) \sigma_{22}^2 - 2H \sigma_{11} \sigma_{22} + 2N\sigma_{12}^2}
$$




## Rate-Dependent MultiLinear Hardening 

This model describes an isotropic elasto-plastic material using user-input funcitons for the strain-stress curves at the different strain rates. No yield stress equations are needed because constitutive relations are given by the tabular data.

## Cowper-Symonds Model
Similar to the Johnson-Cook model, Cowper-Symonds law models isotropic elasto-plastic materials. The yield stress is defined by the stress constants, tabular data, or a combination of both. The pure constant formulation is given here:

$$
\sigma = (a+b\epsilon_p^n)(1+(\dfrac{\dot{\epsilon}}{c})^{\frac{1}{p}})
$$

where the yield stress $a$ should be positive, plastic hardening exponent $n$ must be less than 1. 


## Zhao Model
Zhao model describes the isotropic plastic strain rate-dependent materials. The strain-stress relation is based on the formula below:

$$
\sigma = (A + B \epsilon_p^n) + (C-D\epsilon_p^m)\cdot \mathrm{ln}\dfrac{\dot{\epsilon}}{\dot{\epsilon}_0}+E_1 \dot{\epsilon}^k
$$

where the yield stress $A$ should be positive, plastic hardening exponent $n$ must be less than 1. If $\dot{\epsilon} \le \dot{\epsilon}_0$, the term $(C-D\epsilon_p^m)\cdot \mathrm{ln}\dfrac{\dot{\epsilon}}{\dot{\epsilon}_0}=0$, the stress becomes:

$$
\sigma = (A + B \epsilon_p^n) + E_1 \dot{\epsilon}^k
$$

## Steinberg-Guinan Model
This model defines an isotropic elasto-plastic mateial with thermal softening. When the material approaches melting temperature, the yield strength and shear modulus decrease to zeero. The melting energy is given as 

$$
E_m = E_c + \rho_0 C_p T_m
$$

where $E_c$ is the cold compression energy.

When the internal energy $E$ is less than $Em$, the shear modulus and the yield stress are :

$$
G = G_0 [1 + b_1 p V^{\frac{1}{3}} - h(T-T_0)] e^{-\frac{fE}{E-E_m}}
$$

$$
\sigma_y = \sigma_0(1+\beta \epsilon_p^{\mathrm{(max)}})^n [1 + b_2 p V^{\frac{1}{3}} -h(T-T_0)]e^{-\frac{fE}{E-E_m}} 
$$

where initial shear modulus $G_0 = \dfrac{E_0}{2(1+\nu)}$.

## Gurson Model
The Gurson law can be used to model visco-elasto-plastic strain rate-depdent porous materials. The yield stress can be obtained from the tabular data or the Cowper-Symond's law, the latter formulation is defined as:

$$
\sigma_M = (A + B \epsilon_M^n) (1 + (\dfrac{\dot{\epsilon}}{c})^{\frac{1}{p}})
$$

The von Mises critera for the viscoplastic flow are given as 

$$
\Omega_{vm} = \sigma_{qt} - \sigma_{M}\sqrt{1 + q_3 f^{*2} - 2q_1 f^{*2} \mathrm{cosh}(\dfrac{3q_2\sigma_m}{2\sigma_M})}
$$

or 

$$
\Omega_{vm} =\dfrac{\sigma^2_{qe}}{\sigma^2_M} + 2q_1 f^* \mathrm{cosh}(\dfrac{3}{2}q_2 \dfrac{\sigma_m}{\sigma_M}) - (1 + q_3 f^{*2})
$$

where $\sigma_M$ is the admissible stress, $\sigma_m$ is the trace, $\sigma_eq$ is the von Mises stress, $q_1$, $q_2$, and $q_3$ are the Gurson material constants. The specific coalescence function $f*$ is defined as 

$$
f^* = f_c + \dfrac{f_u - f_c}{f_F - f_c}(f - f_c) \quad \mathrm{if}\, f \gt f_c
$$


## Barlat3 Model
This is an orthotropic elastoplastic law for modeling anisotropic materials in metal forming process. Thus it is widely applied in the shell elements. The plastic hardening is described by the input parameters or user-defined tabular data. The anisotropic yield criteria F for plane stress is given by:

$$
F = a |K_1 + K_2|^m + a |K_1 - K_2|^m + c |2K_2|^m - 2\sigma_y^m = 0
$$

where coefficient $K_1 = \frac{\sigma_{xx} + h \sigma_{yy}}{2}$ and $K_2 = \sqrt{(\frac{\sigma_{xx} - h \sigma_{yy}}{2})^2 + p^2 \sigma_{xy}^2}$. The constants $a$, $c$, and $h$ can be obtained from the Lankford constants.

When the Young's modulus is based on the input parameters. The expression is 

$$
E(t) = E - (E_0-E_{inf})[1-\mathrm{exp}(-C_E \bar{\epsilon}_p)]
$$

where $E_0$ is the initial Youngs' modulus, $E_{inf}$ is the asymptotic Young's modulus, and $\bar{\epsilon}_p$ is the accumulated equivalent plastic strain.


## Yoshida-Uemori Model
This model can describe the large strain cyclic plasticity of metals. The law is based on the yielding and bounding surfaces.

For solid elements, von Mises yield criterion is used as:

$$
f = \dfrac{3}{2} (\mathbf{s} - \mathbf{\alpha}) \colon  (\mathbf{s} - \mathbf{\alpha}) - Y^2
$$

For shell elements, Hill or Barlat3 yield criterion is used. The Hill law is expressed as: 

$$
f_{Hill} = \varphi(\mathbf{\sigma} - \mathbf{\alpha})- Y^2
$$

where $Y$ is yield stress, and $\mathbf{\alpha}$ is total back stress. Let $\mathbf{A}=\mathbf{\sigma}-\mathbf{\alpha}$, the function $\varphi$ becomes

$$
\varphi(A) = A_{xx}^2 - \dfrac{2r_0}{1+r_0}A_{xx}A_{yy} + \dfrac{r_0(1+r_{90})}{r_{90}(1+r_0)}A_{yy}^2 + \frac{r_0 + r_{90}}{r_{90}(1+r_0)}(2r_{45}+1)A_{xy}^2
$$

The Barlat law is defined as:

$$
f_{Barlat} = \phi(\sigma - \alpha) - 2Y^M
$$

where $M$ is the exponent in Barlat's yield criterion. 


## Hohnson-Holmquist Model
This law describes the behaivor of brittle materials, such as glass and ceramics. 


$$
\sigma^* = (1-D)\sigma^*_i + D \sigma_f^*
$$

where the equivalent stress of the intact materials $\sigma_i^*$ can be expressed as 

$$
\sigma_i^* = a (P^* + T^*)^n (1 + c\mathrm{ln}\dfrac{\dot{\epsilon}}{\dot{\epsilon}_0})
$$

and the equivalent stress of the failed materials $\sigma_f^*$ is 

$$
\sigma_f^* = b(P^*)^m (1+c\mathrm{ln}\dfrac{\dot{\epsilon}}{\dot{\epsilon}_0})
$$



## Swift-Voce Model
Swift-Voce elastoplastic model can combine the Johnson-Cook strain rate hardening and temperature softening. This model can be applied for the orthotropic materials and allows a quadratic non-assoicated flow rule. The yield stress can be calculated using a combination of Swift and Voce models as shown below.

$\sigma_y = \{ \alpha [A(\bar{\epsilon}_p + \epsilon_0)^n] + (1+\alpha)[K_0 + Q(1-\mathrm{exp}(-B\bar{\epsilon }_p))]\} (1+C \mathrm{ln}\dfrac{\dot{\bar{\epsilon}}_p}{\dot{\epsilon}_0}) [1 - (\dfrac{T-T_{ref}}{T_{melt} - T_{ref}})^m]$

The plastic non-associated flow rule is computed as:

$$
\Delta \epsilon_p = \Delta \bar{\epsilon}_p \dfrac{\partial g(\sigma)}{\partial \sigma}
$$

where $g(\sigma) = \sqrt{\sigma^TG\sigma}$.


## Hensel-Spittel Model
The hensel-Spittel yield stress is a function of strain, strain rate, and temperature. This model is often used in hot forging simulations. The yield stress is defined as :

$$
\sigma_y = A_0 e^{m_1 T} \epsilon^{m_2} \dot{\epsilon}^{m_3} e^{\frac{m_4}{\epsilon}} (1+\epsilon)^{m_5T} e^{m_7\epsilon}
$$

where true strain $\epsilon = \epsilon_0 + \bar{\epsilon}_p$, $\dot{\epsilon}$ is the true strain rate. 


## Vegter Model

The yield function is defined as 

$$
\phi = \bar{\sigma} - \sigma_Y
$$

where $\bar{\sigma}$ is the interpolated Vegter equivalent stress. 








