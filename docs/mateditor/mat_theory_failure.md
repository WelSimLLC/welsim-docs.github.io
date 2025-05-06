# Failure Models

MatEditor allows you to define the failure material properties. The supported properties are listed below.

* [x]  Glass
* [x]  Bi-Quadratic
* [x]  Cockcroft
* [x]  Connect
* [x]  Extended Mohr-Coulomb
* [x]  Energy
* [x]  Fabric
* [x]  Forming Limit Diagram
* [x]  Hashin
* [x]  Hosford-Coulomb 
* [x]  Johnson-Cook
* [x]  Ladeveze delamination
* [x]  Mullins Effect
* [x]  NXT
* [x]  Orthotropic Bi-Quadratic
* [x]  Orthotropic Strain
* [x]  Puck
* [x]  Tuler-Butcher
* [x]  Tensile Strain
* [x]  Wierzbicki
* [x]  Wilkins



## Bi-Quadratic
The failure strain is described by two parabolic functions that user input. 



## Cockcroft
A nonlinear stress-strain based failure criterion with linear damage accumulation.

$$
C_0 = \int _0 ^{\bar{\epsilon}_f} max(\sigma_1, 0) \cdot d\bar{\epsilon}
$$

where $\epsilon_1$ is the first principal tension stress, $\bar{\epsilon}$ is the equivalent strain.


## Extended Mohr-Coulomb
The failure criteria is calculated as:

$$
D = \sum \dfrac{\Delta \bar{\epsilon}_p}{\bar{\epsilon}_{p,fail}}
$$

where effective failure strain is 

$$
\bar{\epsilon}_{p,fail} = b \cdot (1+c)^{\frac{1}{n}} \cdot \{[\dfrac{1}{2}((f_1-f_2)^a + (f_2-f_3)^a + (f_1 - f_3)^a )]^{\frac{1}{a}} + c(2\eta+f_1+f_3) \}^{-\frac{1}{n}}
$$

the coefficient b is computed as 

$$
b = b_0[1+\gamma ln(\dfrac{\dot{\bar{\epsilon}}_p}{\dot{\bar{\epsilon}}_0})] \quad if\, \dot{\bar{\epsilon}}_p > \dot{\bar{\epsilon}}_0
$$

or

$$
b = b_0 \quad if\, \dot{\bar{\epsilon}}_p \le \dot{\bar{\epsilon}}_0
$$



## Energy
The damage is defined as 

$$
D = \dfrac{E-E_1}{E_2 - E_1}
$$

where the energy density is the current internal energy of the element divided by the current element volume.





## Fabric
The failure and damage is defined independently in each direction ($i$=1,2)

$$
D_i = \dfrac{\epsilon_i - \epsilon_{fi}}{\epsilon_{ri} - \epsilon_{fi}}
$$

where $\epsilon_i \ge \epsilon_{fi}$.


## Hashin
This model can be used for the composite materials. 

The damage factor is calculated as 

$$
D = Max(F_1,F_2,F_3, F_4, F_5) \quad for\quad uni-directional\, lamina\, model
$$

$$
D = Max(F_1,F_2,F_3, F_4, F_5, F_6, F_7) \quad for\quad fabric\, lamina\, model
$$

#### For the uni-directional lamina model: 
Tensile/shear fiber mode: 

$$
F_1 = (\dfrac{\langle\sigma_{11}\rangle}{\sigma_1^t})^2 + (\dfrac{\sigma_{12}^2 + \sigma_{13}^2}{{\sigma_{12}^f}^2})
$$

Compression fiber mode:

$$
F_2 = (\dfrac{\langle \sigma_a \rangle}{ \sigma_1^c})^2
$$

with $\sigma_{\alpha} = -\sigma_{11}+\langle -\dfrac{\sigma_{22}+\sigma_{33}}{2} \rangle$.

Crush mode:

$$
F_3 = (\dfrac{\langle p \rangle}{\sigma_c})^2
$$

with $p=-\dfrac{\sigma_{11}+\sigma_{22}+\sigma_{33}}{3}$.

Failure matrix mode:

$$
F_4 = (\dfrac{\langle \sigma_{22} \rangle}{\sigma_2^t})^2 + (\dfrac{\sigma_{23}}{S_{23}})^2 + (\dfrac{\sigma_{12}}{S_{12}})^2
$$

Delamination mode:

$$
F_5 = S^2_{del}[(\dfrac{\langle \sigma_{33} \rangle}{\sigma^t_2})^2 + (\dfrac{\sigma_{23}}{\tilde{S}_{23}})^2 + (\dfrac{\sigma_{12}}{S_{12}})^2 ]
$$

#### For the fabirc lamina model:
Tensile/shear fiber mode

$$
F_1 = (\dfrac{\langle\sigma_{11}\rangle}{\sigma_1^t})^2 + (\dfrac{\sigma_{12}^2 + \sigma_{13}^2}{{\sigma_{a}^f}^2})
$$

$$
F_2 = (\dfrac{\langle\sigma_{22}\rangle}{\sigma_2^t})^2 + (\dfrac{\sigma_{12}^2 + \sigma_{23}^2}{{\sigma_{b}^f}^2})
$$


Compression fiber mode:

$$
F_3 = (\dfrac{\langle \sigma_a \rangle}{ \sigma_1^c})^2
$$

$$
F_4 = (\dfrac{\langle \sigma_b \rangle}{ \sigma_2^c})^2
$$

Crush mode:

$$
F_5 = (\dfrac{\langle p \rangle}{\sigma_c})^2
$$

Shear failure matrix mode:

$$
F_6 = (\dfrac{\sigma_12}{\sigma_12^m})^2
$$

Matrix failure mode:

$$
F_7 = S^2_{del}[(\dfrac{\langle \sigma_{33} \rangle}{\sigma^t_3})^2 + (\dfrac{\sigma_{23}}{\tilde{S}_{23}})^2 + (\dfrac{\sigma_{12}}{S_{12}})^2 ]
$$


## Hosford-Coulomb
The failure strain is described y the Hosford-Coulomb function. 


The damage is defined as 

$$
D = \sum \dfrac{\Delta \bar{\epsilon}_p} {\bar{\epsilon}^{pr}_{HC}(\eta) }
$$

where the strain is calcualted as 

$$
\bar{\epsilon}^{pr}_{HC}(\eta, \theta) = b(1+c)^{\frac{1}{n_f}} \{[\dfrac{1}{2}((f_1-f_2)^a + (f_2-f_3)^a + (f_1-f_3)^a)]^{\frac{1}{a}} + c(a\eta + f_1 +f_2) \}^{\frac{1}{n_f}}
$$



## Johnson-Cook
The failure strain is calculated by the constutitive relation:

$$
\epsilon_f = [D_1+D_2exp(D_3\sigma^*)] [1+D_4 ln(\dot{\epsilon}^*)] (1 + D_5 T^*)
$$

The damage factor is defined as 

$$
D = \sum \dfrac{\Delta \epsilon_p}{\epsilon_f}
$$


## Ladeveze Delamination
This is the Ladeveze failure model for delamination (interlaminar fracture). The damage parameters are defined as

$$
Y_{d_3} = \dfrac{\partial E_D}{\partial d_3} \vert _{\sigma=cst}=\dfrac{1}{2} \dfrac{\langle\sigma_{33}\rangle^2}{K_3(1-d_3)^2} \quad Mode\,I
$$

$$
Y_{d_2} = \dfrac{\partial E_D}{\partial d_2} \vert _{\sigma=cst}=\dfrac{1}{2} \dfrac{\langle\sigma_{32}\rangle^2}{K_2(1-d_2)^2} \quad Mode\,II
$$

$$
Y_{d_1} = \dfrac{\partial E_D}{\partial d_1} \vert _{\sigma=cst}=\dfrac{1}{2} \dfrac{\langle\sigma_{31}\rangle^2}{K_1(1-d_1)^2} \quad Mode\,III
$$

The damage value can be 

$$
D = \dfrac{k}{a}[1- exp(-a\langle w(Y)-d\rangle)]
$$


## Mullins Effect
This failure model is used with the hyperelastic materials. The stress during the first loading process is equal to the undamaged stress. Upon unloading and reloading the strss is multiplied by a positive softening factor as

$$
\sigma = \eta dev(\sigma) - pI
$$

where dev($\sigma$) is the deviatoric part of the stress, $p$ is the hydrostatic pressure. The damage factor $\eta$ is given as 

$$
\eta = 1 - \dfrac{1}{R} erf(\dfrac{W_{max}-W}{m+\beta W_{max}})
$$

where $erf$ is the Gauss error function.

## NXT
This model describes the forming limit baed on stresses. This failure is used for shell elements only.

An instability factor is defined as:

$$
\lambda_f=\dfrac{\sigma/h - (\sigma/h)_{SR}}{(\sigma/h)_{3D}-(\sigma/h)_{SR}} + 1
$$

The material is defined as free if $0<\lambda_f<1$, warning if  $1<\lambda_f<2$, failure if  $\lambda_f \ge 2$.



## Orthotropic Bi-Quadratic
The failure strain is described by two parabolicfunctions calculated using curve fitting from user input failure strains. 



## Orthotropic Strain
A damage factor is the maximum over time and is calculated for each direction and stress state via:


$$
d_ijl = \dfrac{\epsilon_{ijf\_l}}{\epsilon_{ijl}} \cdot \dfrac{\epsilon_{ijl}-\alpha\cdot\epsilon_{ijd\_l}}{\epsilon_{ijf\_l}-\epsilon_{ijd\_l}}
$$

where the direction is indicated by using the common $ij$ notation and loading state is either compression ($l=c$) or tension ($l=t$). The parameter $\alpha=factor_{el}\cdot factor_{rate}$.

The element size correction factor is :

$$
factor_{el} = Fscale_{el} \cdot f_{el} \dfrac{Size_{el}}{El_ref}
$$

where $f_{el}$ is the element size correction factor function, $Size_{el}$ is the characteristic element size.

The strain rate factor is 

$$
factor_{rate} = f_{ijl}(\dfrac{\dot{\epsilon}_{ijl}}{\dot{\epsilon}_0})
$$

where $f_ijl$ is strain rate factor function, $\dot{\epsilon}_{ijl}$ is the current strain rate in direction ij and load case l, and $\dot\epsilon_0$ is the reference strate rate.

Generally, the damange for this model is 

$$
D = Max(d_{ijl}) = Max(\dfrac{\epsilon_{ijf\_l}}{\epsilon_{ijl}} \cdot \dfrac{\epsilon_{ijl}-\alpha\cdot\epsilon_{ijd\_l}}{\epsilon_{ijf\_l}-\epsilon_{ijd\_l}})
$$


## Puck

This failure model can be applied for both solid and shell elements.

For the fiber fraction failure, the damage parameter $e_f$ is defined by 

$$
e_f=\dfrac{\sigma_{11}}{\sigma_{1}^t} \quad for\, tensile
$$

or 

$$
e_f=\dfrac{|\sigma_{11}|}{\sigma_{1}^c} \quad for\, compression
$$

For the inter fiber failure: the damage parameter $e_f$ is

$$
e_f=\dfrac{1}{\bar{\sigma}_{12}} [ \sqrt{(\dfrac{\bar{\sigma}_{12}}{\sigma_2^t} -p^+_{12})^2\sigma_{22}^2 + \sigma_{12}^2}+p^+_{12}\sigma_{22}]  \quad  for\, Mode\, A
$$

or 

$$
e_f=[(\dfrac{\sigma_{12}}{2(1+p^-_{22})\bar{\sigma}_{12}})^2 + (\dfrac{\sigma_{22}}{\sigma_2^c})^2](\dfrac{\sigma^c_2}{-\sigma_{22}})  \quad  for\, Mode\, C
$$

or 

$$
e_f=\dfrac{1}{\bar{\sigma}_{12}} ( \sqrt{\sigma_{12}^2+(p^-_{12}\sigma_{22})^2}+p^-_{12}\sigma_{22})  \quad  for\, Mode\, B
$$

when the damage parameter $e_f \ge 1.0$, the stresses are decreased by using an exponential function to avoid numerical instabilities.

The damage is defined by 

$$
D = Max(e_f(tensile),e_f(compression), e_f(ModaA), e_f(ModeB), e_f(ModeC) )
$$



## Tuler-Butcher
An element fails once the damage is greater than specified critical damage value K. For ductile materials, the cumulative damage parameter is:

$$
D=\int_0^t{max(0, \sigma-\sigma_r)^{\lambda})dt}>K
$$

where $\sigma_r$ is initial fracture stress, $\sigma$ maximum principal stress, $\lambda$ is material constant, $t$ is the time when the element cracks, $D$ is the damage integral, $K$ is the critical value of the damage integral.

For brittle materials (shells only), the damage parameter is:
$$
\dot{D} = \dfrac{1}{K}(\sigma - \sigma_r)^a
$$
$$
\sigma_r=\sigma_0(1-D)^b
$$
$$
D=D+\dot{D}\Delta t
$$



## Tensile Strain
This is a strain-based failure model that is compatible with both solid and shell elements. The damage is calculated by:

$$
D = \dfrac{\epsilon - \epsilon_{t1}}{\epsilon_{t2} - \epsilon_{t1}}
$$

where $\epsilon$ is either the quivlent strain or maximum principal tensile strain. 




## Wierzbicki model
This model describes the Bao-Xue-Wierzbicki failure model. The damage is defined by 

$$
D=\sum{\dfrac{\Delta\epsilon_{p}}{\bar{\epsilon}_f}}
$$

where the effective failure strain is 

$$
\bar{\epsilon}_f =\{ \bar{\epsilon}_{max}n-[\bar{\epsilon}_{max}n - \bar{\epsilon}_{min}n](1-\bar{\xi}^m)^{\dfrac{1}{m}} \}^{\dfrac{1}{n}}
$$

where $\bar{\epsilon}_{max} = C_1 e^{-1C_{2}\eta}$, and $\bar{\epsilon}_{min} = C_{3} e^{-1C_{4}\eta}$. 

For solid element, the parameters $\bar{\xi}$ and $\bar{\eta}$ are defined by the two options. 

The option 1 (default) is :
$$
\bar{\xi}=\dfrac{\sigma_m}{\sigma_{VM}} \quad 
\bar{\eta}=\dfrac{27J_3}{2\sigma^3_{VM}}
$$

The option 2 is:
$$
\bar{\xi}=\dfrac{\int_0^{\epsilon_p}\dfrac{\sigma_m}{\sigma_{VM}}d\epsilon_p}{\epsilon_p} \quad 
\bar{\eta}=\dfrac{\int_0^{\epsilon_p} \dfrac{27J_3}{2\sigma^3_{VM}} d\epsilon_p}{\epsilon_p}
$$

For shell element, the parameters $\bar{\xi}$ and $\bar{\eta}$ are
$$
\bar{\xi}=\dfrac{\sigma_m}{\sigma_{VM}} \quad 
\bar{\eta}=-\dfrac{27}{2}\bar{\eta}(\bar{\eta}^2-\dfrac{1}{3})
$$

where $\sigma_m$ is Hydrostatic stress, $\sigma_{VM}$ is von Mises stress, and $J_3$ is the third invariant deviatoric stress.



## Wilkins model
The cumulative damage is given by:

$$
D_c = \int W_1 W_2 d \bar{\epsilon_p}
$$

where $W_1=(\dfrac{1}{1-\dfrac{P}{P_{lim}}})^{\alpha}$, $W_2=(2-A)^{\beta}$, and hydro-pressure $P=-\dfrac{1}{3}\sum_{j=1}^{3}\sigma_{jj}$, $A=max(\dfrac{s_2}{s_1}, \dfrac{s_2}{s_3})$. $s_1$, $s_2$, $s_3$ are the deviatoric stresses, and $s_1 \ge s_2 \ge s_3$.

