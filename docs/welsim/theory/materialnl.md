# Structures with material nonlinearities
Material nonlinearities occur because of the nonlinear relationship between stress and strain; that is, the stress is a nonlinear function of the strain. The relationship is also path-dependent (except for the case of nonlinear elasticity and hyperelasticity), so that the stress depends on the strain history as well as the strain itself.

The program can account for many material nonlinearities, as follows:

1. Rate-independent plasticity is characterized by the irreversible instantaneous straining that occurs in a material.

2. Rate-dependent plasticity allows the plastic-strains to develop over a time interval. It is also termed viscoplasticity.

3. Creep is also an irreversible straining that occurs in a material and is rate-dependent so that the strains develop over time. The time frame for creep is usually much larger than that for rate-dependent plasticity.

4. Nonlinear elasticity allows a nonlinear stress-strain relationship to be specified. All straining is reversible.

5. Hyperelasticity is defined by a strain-energy density potential that characterizes elastomeric and foam-type materials. All straining is reversible.

6. Viscoelasticity is a rate-dependent material characterization that includes a viscous contribution to the elastic straining.

When the material applicable for analysis is an elastoplastic material, the updated Lagrange method is applied, and the total Lagrange method is applied for hyperelastic material. Moreover, the Newton-Raphson method is applied to the repetitive analysis method.


### Strain definitions
For the case of nonlinear materials, the definition of elastic strain given in Equation $\eqref{eq:ch4_theory_stress_strain_relation}$ expands to 

$$
\begin{align}
\label{eq:ch4_guide_strain_full}
\{\epsilon\}=\{\epsilon^{el}\}+\{\epsilon^{th}\}+\{e^{pl}\}+\{\epsilon^{cr}\}+\{\epsilon^{sw}\}
\end{align}
$$

where $\epsilon$ is the total strain vector, $\epsilon^{el}$ is elastic strain vector, $\epsilon^{th}$ is the thermal strain vector, $\epsilon^{pl}$ is the plastic strain vector, $\epsilon^{cr}$ is the creep strain vector, and $\epsilon^{sw}$ is the swelling strain vector. 



## Hyperelasticity
The elastic potential energy in hyperelastic material can be obtained from the initial state with no stress activation. Therefore, we have the main invariable terms of the right Cauchy-Green deformation tensor C($I_{1}$, $I_{2}$, $I_{3}$), or the main invariable of the deformation tensor excluding the volume changes ($\bar{I}_{1}$, $\bar{I}_{2}$, $\bar{I}_{3}$). The potential can be expressed as $\mathbf{W}=\mathbf{W}(I_{1},I_{2},I_{3})$, or $\mathbf{W}=\mathbf{W}(\bar{I}_{1},\bar{I}_{2},\bar{I}_{3})$.

The nonlinear constitutive relation of hyperelastic material is defined by the relation between the second order Piola-Kirchhoff stress and the Green-Lagrange strain, the total Lagrange method is more efficient in solving such models. 

When the elastic potential energy $W$ of the hyperelasticity is known, the second Piola-Kirchhoff stress and strain-stress relationship can be calculated as follows

$$
S=2\dfrac{\partial W}{\partial C}
$$

$$
C=4\dfrac{\partial^{2}W}{\partial C\partial C}
$$

### Arruda-Boyce model
The form of the strain-energy potential for Arruda-Boyce model is 

$$
\begin{array}{ccc}
W & = & [\dfrac{1}{2}(\bar{I}_{1}-3)+\dfrac{1}{20\lambda_{m}^{2}}(\bar{I_{1}^{2}}-9)+\dfrac{11}{1050\lambda_{m}^{4}}(\bar{I_{1}^{3}}-27)\\
 & + & \dfrac{19}{7000\lambda_{m}^{6}}(\bar{I_{1}^{4}}-81)+\dfrac{519}{673750\lambda_{m}^{8}}(\bar{I_{1}^{5}}-243)]+\dfrac{1}{D_1}(\dfrac{J^{2}-1}{2}-\mathrm{ln}J)
\end{array}
$$

where $\lambda_{m}$ is limiting network stretch, and $D_1$ is the material incompressibility parameter.

The initial shear modulus is 

$$
\mu=\dfrac{\mu_{0}}{1+\dfrac{3}{5\lambda_{m}^{2}}+\dfrac{99}{175\lambda_{m}^{4}}+\dfrac{513}{875\lambda_{m}^{6}}+\dfrac{42039}{67375\lambda_{m}^{8}}}
$$


The initial bulk modulus is 

$$
K=\dfrac{2}{D_1}
$$

As the parameter $\lambda_L$ goes to infinity, the model is equivalent to neo-Hookean form.


### Blatz-Ko foam model
The form of strain-energy potential for the Blatz-Ko model is:

$$
W=\frac{\mu}{2}\left(\frac{I_{2}}{I_{3}}+2\sqrt{I_{3}}-5\right)
$$

where $\mu$ is initla shear modulus of material. The initial bulk modulus is defined as :

$$
K = \frac{5}{3}\mu
$$

### Extended tube model
The elastic strain-energy potential for the extended tube model is:

$$
\begin{array}{ccc}
W & = & \frac{G_{c}}{2}\left[\frac{\left(1-\delta^{2}\right)\left(\bar{I}_{1}-3\right)}{1-\delta^{2}\left(\bar{I}_{1}-3\right)}+\mathrm{ln}\left(1-\delta^{2}\left(\bar{I}_{1}-3\right)\right)\right]\\
 & + & \frac{2G_{e}}{\beta^{2}}\sum_{i=1}^{3}\left(\bar{\lambda}_{i}^{-\beta}-1\right)+\frac{1}{D_1}\left(J-1\right)^{2}
\end{array}
$$

where the initial shear modulus is $G$=$G_c$ + $G_e$, and $G_e$ is constraint contribution to modulus, $G_c$ is crosslinked contribution to modulus, $\delta$ is extensibility parameter, $\beta$ is empirical parameter (0$\leq \beta \leq$1), and $D_1$ is material incompressibility parameter. 

Extended tube model is equivalent ot a two-term Ogden model with the following parameters:

$$
\begin{array}{cccc}
\alpha_1 = 2 &, & \alpha_2=-\beta\\
\mu_1=G_c &, & \mu_2=-\dfrac{2}{\beta}G_e, & \delta=0 
\end{array}
$$


### Gent model
The form of the strian-energy potential for the Gent model is:

$$
W=-\frac{\mu J_{m}}{2}\mathrm{ln}\left(1-\frac{\bar{I}_{1}-3}{J_{m}}\right)+\frac{1}{D_1}\left(\frac{J^{2}-1}{2}-\mathrm{ln}J\right)
$$

where $\mu$ is initial shear modulus of material, $J_m$ is limiting value of $\bar{I}_1-3$, $D_1$ is material incompressibility parameter. 

The initial bulk modulus is 

$$
K=\dfrac{2}{D_1}
$$

When the parameter $J_m$ goes to infinity, the Gent model is equivalent to neo-Hookean form.


### Mooney-Rivlin model
This model includes two-, three-, five-, and nine-terma Mooney-Rivlin models. The form of the strain-energy potential for a two-parameter Mooney-Rivlin model is 

$$
W=C_{10}\left(\bar{I}_{1}-3\right)+C_{01}\left(\bar{I}_{2}-3\right)+\frac{1}{D_1}\left(J-1\right)^{2}
$$

where $C_{10}$, $C_{01}$, and $D_{1}$ are the material constants.

The form of strain-energy potential for a three-parameter Mooney-Rivlin model is 

$$
W=C_{10}\left(\bar{I}_{1}-3\right)+C_{01}\left(\bar{I}_{2}-3\right)+C_{11}\left(\bar{I}_{1}-3\right)\left(\bar{I}_{2}-3\right)+\frac{1}{D_1}\left(J-1\right)^{2}
$$

where $C_{10}$, $C_{01}$, $C_{11}$, and $D_1$ are material ocnstants.


The form of strain-energy potential for a five-parameter Mooney-Rivlin model is 

$$
\begin{array}{ccc}
W & = & C_{10}\left(\bar{I}_{1}-3\right)+C_{01}\left(\bar{I}_{2}-3\right)+C_{20}\left(\bar{I}_{1}-3\right)^{2}\\
 & + & C_{11}\left(\bar{I}_{1}-3\right)\left(\bar{I}_{2}-3\right)+C_{02}\left(\bar{I}_{2}-3\right)^{2}+\frac{1}{D_1}\left(J-1\right)^{2}
\end{array}
$$

where $C_{10}$, $C_{01}$, $C_{20}$, $C_{11}$, $C_{02}$, and $D_1$ are material ocnstants.


The form of strain-energy potential for a nine-parameter Mooney-Rivlin model is 

$$
\begin{array}{ccc}
W & = & C_{10}\left(\bar{I}_{1}-3\right)+C_{01}\left(\bar{I}_{2}-3\right)+C_{20}\left(\bar{I}_{1}-3\right)^{2}\\
 & + & C_{11}\left(\bar{I}_{1}-3\right)\left(\bar{I}_{2}-3\right)+C_{02}\left(\bar{I}_{2}-3\right)^{2}+C_{30}\left(\bar{I}_{1}-3\right)^{3}\\
 & + & C_{21}\left(\bar{I}_{1}-3\right)^{2}\left(\bar{I}_{2}-3\right)+C_{12}\left(\bar{I}_{1}-3\right)\left(\bar{I}_{2}-3\right)^{2}+C_{03}\left(\bar{I}_{2}-3\right)^{3}+\frac{1}{D_1}\left(J-1\right)^{2}
\end{array}
$$

where $C_{10}$, $C_{01}$, $C_{20}$, $C_{11}$, $C_{02}$, $C_{30}$, $C_{21}$, $C_{12}$, $C_{03}$, and $D_1$ are material ocnstants.

The initial shear modulus is given by:

$$
\mu=2(C_{10}+C_{01})
$$

The initial bulk modulus is 

$$
K=\dfrac{2}{D_1}
$$

### Neo-Hookean model
The Neo-Hookean model is a well-known hyperelastic model with an expanded linear rule (Hooke rule) having isotropy so that it can respond to finite deformation problems. The elastic potential is as follows.

$$
W=\frac{\mu}{2}(\bar{I}_{1}-3)+\dfrac{1}{D_{1}}(J-1)^{2}
$$

where $\mu$ is initial shear modulus of materials, $D_{1}$ is the material constant.

The initial bulk modulus is given by:

$$
K=\dfrac{2}{D_1}
$$


### Ogden compressible foam model
The strain-energy potential of the Ogden compressible foam model is based on the principal stretches of left Cauchy strain tensor, which has the form:

$$
W=\sum_{i=1}^{N}\frac{\mu_{i}}{\alpha_{i}}\left(J^{\alpha_{i}/3}\left(\bar{\lambda}_{1}^{\alpha_{i}}+\bar{\lambda}_{2}^{\alpha_{i}}+\bar{\lambda}_{3}^{\alpha_{i}}\right)-3\right)+\sum_{i=1}^{N}\frac{\mu_{i}}{\alpha_{i}\beta_{i}}\left(J^{-\alpha_{i}\beta_{i}}-1\right)
$$

where N determines the order of the polynomial, $\mu_i$, $\alpha_i$ are material constants, $D_k$ is incompressiblity parameter. The reduced principal strench is defined by:

$$
\bar{\lambda}_{p}=J^{-\frac{1}{3}}\lambda_p,\; J=(\lambda_{1}\lambda_{2}\lambda_{3})^{\frac{1}{2}}
$$

The initial shear modulus is given by:

$$
\mu=\dfrac{\sum_{i=1}^{N}\mu_{i}\alpha_{i}}{2}
$$


The initial bulk modulus K is defined by

$$
K = \sum_{i=1}^{N}\mu_{i}\alpha_{i}\left(\dfrac{1}{3}+\beta_{i}\right)
$$

When parameters N=1, $\alpha_1$=-2, $\mu_1$=-$\mu$, and $\beta$=0.5, the Ogden compressible model is converted to the Blatz-Ko model.


### Ogden model
The strain-energy potential of the Ogden compressible foam model is based on the principal stretches of left Cauchy strain tensor, which has the form:

$$
W=\sum_{i=1}^{N}\frac{\mu_{i}}{\alpha_{i}}\left(\bar{\lambda}_{1}^{\alpha_{i}}+\bar{\lambda}_{2}^{\alpha_{i}}+\bar{\lambda}_{3}^{\alpha_{i}}-3\right)+\sum_{k=1}^{N}\frac{1}{D_{k}}\left(J-1\right)^{2k}
$$

where N determines the order of the polynomial, $\mu_i$, $\alpha_i$ are material constants, $D_k$ is incompressiblity parameter. The reduced principal strench is defined by:

$$
\bar{\lambda}_{p}=J^{-\frac{1}{3}}\lambda_p,\; J=(\lambda_{1}\lambda_{2}\lambda_{3})^{\frac{1}{2}}
$$


The initial shear modulus is given by:

$$
\mu=\dfrac{\sum_{i=1}^{N}\mu_{i}\alpha_{i}}{2}
$$


The initial bulk modulus K is defined by

$$
K = \dfrac{2}{D_1}
$$

When parameters N=1, $\alpha_1$=2, the Ogden model is converted to the neo-Hookean model. When parameters N=2, $\alpha_1$=2 and $\alpha_2$=-2, the Ogden model is converted to the 2-parameter Mooney-Rivlin model.



### Polynomial form
The polynomial form of strain-energy potential is:

$$
W=\sum_{i+j=1}^{N}c_{ij}\left(\bar{I}_{1}-3\right)^{i}\left(\bar{I_{2}}-3\right)^{j}+\sum_{k=1}^{N}\frac{1}{D_{k}}\left(J-1\right)^{2k}
$$

where $N$ determines the order of polynomial, $c_{ij}$, $D_k$ are material constants.

The initial shear modulus is given by:

$$
\mu=2\left(C_{10}+C_{01}\right)
$$

The initial bulk modulus K is defined by

$$
K = \dfrac{2}{D_1}
$$

The Polynomial model is converted to following models with specific paramters:

| Parameters of Polynomial model | Equivalent model |
| ------------------------------ | ---------------- |
| N=1, $C_{01}$=0 | neo-Hookean |
| N=1 | 2-parameter Mooney-Rivlin |
| N=2 | 5-parameter Mooney-Rivlin |
| N=3 | 9-parameter Mooney-Rivlin |


### Yeoh model
The Yeoh model is also called the reduced polynomial form. The strain-energy potential is 

$$
W=\sum_{i=1}^{N}c_{i0}\left(\bar{I}_{1}-3\right)^{i}+\sum_{k=1}^{N}\frac{1}{D_{k}}\left(J-1\right)^{2k}
$$

where N denotes the order of polynomial, $C_{i0}$ and $D_k$ are material constants. When N=1, Yeoh becomes neo-Hookean model. 

The initial shear modulus is defined:

$$
\mu=2c_{10}
$$

The initial bulk modulus is:

$$
K=\frac{2}{D_1}
$$


## Rate-independent plasticity
The elastoplasticity based on the flow rule is applied in this program. The constitutive relation between Jaumman rate and the deformation rate tensor of the Kirchhoff stress is numerically solved using the updated Lagrange method. 

### Elastoplastic constitutive equation
The yield criteria of an elasto-plastic solid can be written into math formulas. The initial yield criteria are

$$
F(\sigma,\sigma_{y0})=0
$$

The Consecutive yield criteria are

$$
F(\sigma,\sigma_{y}(e^{-p}))=0
$$

where $F$ is the yield function, $\sigma_{y0}$ is initial yield stress, $\sigma_{y}$ is consecutive yield stress, $\sigma$ is stress tensor, $\mathbf{e}$ is the infinitesimal strain tensor, $\mathbf{e}^{p}$ is the plastic strain tensor, $\bar{\mathbf{e}}^{p}$ is equivalent plastic strain.

The yield stress-equivalent plastic strain relationship is assumed to conform to the stress-plastic strain relation in a single axis state. The stress-plastic strain relation about one single axis state is:

$$
\sigma=H(e^{p})
$$

$$
\dfrac{d\sigma}{de^{p}}=H'
$$

where $H'$ is the strain hardening factor. The equivalent stress-equivalent plastic strain relation is :

$$
\bar{\sigma}=H(\bar{e}^{p})
$$

$$
\dot{\bar{\sigma}}=H'\dot{\bar{e^{p}}}
$$

The consecutive yield function is generally a function of temperature and plastic strain work. In this program, this function is assumed to be related to the equivalent plastic strain \bar{e}^{p}. Since condition F=0 holds during the plastic deformation, we have

$$
\begin{align}
\label{eq:ch5_plastic_gov1}
\dot{F}=\dfrac{\partial F}{\partial\sigma}\colon\dot{\sigma}+\dfrac{\partial F}{\partial\mathbf{e}^{p}}\colon\dot{\mathbf{e}}^{p}=0
\end{align}
$$

where $\dot{F}$ is the time derivative function of $F$.

In this case, we assume the existence of the plastic potential $\Theta$, the plastic strain rate is 

$$
\dot{\mathbf{e}}^{p}=\dot{\lambda}\dfrac{\partial\Theta}{\partial\sigma}
$$

where $\dot{\lambda}$ is the factor. Moreover, assuming the plastic potential $\Theta$ is equivalent to yield function $F$, the associated flow rule is assumed as

$$
\dot{\mathbf{e}}^{p}=\dot{\lambda}\dfrac{\partial F}{\partial\sigma}
$$

which is substituted with equation $\eqref{eq:ch5_plastic_gov1}$, we have 

$$
\dot{\lambda}=\dfrac{\mathbf{a}^{T}\colon\mathbf{d}_{D}}{A+\mathbf{a}^{T}\colon\mathbf{D}\colon\mathbf{a}}\mathbf{\dot{\mathbf{e}}}
$$

where $\mathbf{D}$ is the elastic matrix, and 

$$
\mathbf{a}^{T}=\dfrac{\partial F}{\partial\sigma}\quad\mathbf{d}_{D}=\mathbf{D}\mathbf{a}^{T}\quad A=-\dfrac{1}{\dot{\lambda}}\dfrac{\partial F}{\partial\mathbf{\mathbf{e}}^{p}}\colon\dot{\mathbf{e}}^{p}
$$

The stress-strain relation for elastoplasicity can be rewritten to

$$
\begin{align}
\label{eq:ch5_plastic_yield_func1}
\dot{\sigma}=\{\mathbf{D}-\dfrac{\mathbf{d}_{D}\otimes\mathbf{d}_{D}^{T}}{A+\mathbf{d}_{D}^{T}\mathbf{a}}\}\colon\dot{\mathbf{e}}
\end{align}
$$

Here we give the explicit form of several yield functions that are applied in the program.

### Von-Mises yield function

$$
F=\sqrt{3\mathbf{J}_{2}}-\sigma_{y} = 0
$$

### Mohr-Coulomb yield function

$$
F=\sigma_{1}-\sigma_{3}+(\sigma_{1}+\sigma_{3})\mathrm{sin}\phi-2c\mathrm{cos}\phi = 0
$$

### Drucker-Prager yield function

$$
F=\sqrt{\mathbf{J}_{2}}-\alpha\sigma\colon\mathbf{I}-\sigma_{y}=0
$$

where material constant $\alpha$ and $\sigma_{y}$ are calculated from the viscosity and friction angle of the material as shown below

$$
\alpha=\dfrac{2\mathrm{sin}\phi}{3+\mathrm{sin}\phi},\quad\sigma_{y}=\dfrac{6c\mathrm{cos}\phi}{3+\mathrm{sin}\phi}
$$


## Viscoelasticity
A material is viscoelastic if the material has both elastic (recoverable) and viscous (nonrecoverable) parts. Upon loads, the elastic deformation is instantaneous while the viscous part occurs over time. A viscoelastic model can depicts the deformation behavior of glass or glass-like materials and simulate heating and cooling processing of such materials. 

### Constitutive Equations
A generalized Maxwell model is applied for viscoelasticity in this program. The constitutive equation becomes a function of deviatoric strain $\mathbf{e}$ and deviatoric viscosity strain $\mathbf{q}$,

$$
\sigma(t)=K\thinspace tr(\epsilon\mathbf{I})+2G(\mu_{0}\mathbf{e}+\mu\mathbf{q})
$$

where

$$
\mu\mathbf{q}=\sum_{m=1}^{M}\mu_{m}\mathbf{q}^{(m)};\quad\sum_{m=0}^{M}\mu_{m}=1
$$

moveover, the deviatoric viscosity strain $\mathbf{q}$ can be calculated by

$$
\dot{\mathbf{q}}\thinspace^{(m)}+\dfrac{1}{\tau_{m}}\mathbf{q}^{(m)}=\dot{\mathbf{e}}
$$

where $\tau_{m}$ is the relaxation time. The shear and volumetric relaxation coefficient $G$ is represented by the following Prony series: 

$$
G(t)=G[\mu_{0}^{G}+\sum_{i=1}^{M}\mu_{i}^{G}e^{-(t/\tau_{i}^{G})}]
$$

$$
K(t)=K[\mu_{0}^{K}+\sum_{i=1}^{M}\mu_{i}^{K} e^{-\frac{t}{\tau_{i}^{K}}}]
$$

where $\tau_{i}^{G}$ and $\tau_{i}^{K}$ are relaxation times for each Prony component, $G_i$ and $K_i$ are shear and volumetric moduli, respectively.


### Themorheological Simplicity
Viscous material depends strongly on temperature. For instance, A glass-like material turninto viscous fluids at high temperatures and behave like a solid material at low temperatures. The *thermorheological simplicity* is proposed to assumes that material response to a load at a high temperature over a short duration is identical to that at lower temperature but over a longer duration. Essentially, the relaxation times in Prony components oby the scaling law:

$$
\tau_{i}^{G}(T) = \dfrac{\tau_{i}^{G}(T_r)}{A(T,T_r)} ,\qquad \tau_{i}^{K}(T) = \dfrac{\tau_{i}^{K}(T_r)}{A(T,T_r)}
$$

where $A(T,T_r)$ is called the shift function.

### Shift Functions
WELSIM offers the following forms of the shift function:

* Williams-Landel-Ferry Shift Function

#### Williams-Landel-Ferry Shift Function
The Williams-Landel-Ferry (WLF) shift function is defined by 

$$
log_{10}(A) = \dfrac{C1(T-T_r)}{C2+T-T_r}
$$

where T is temperature, $T_r$ is reference temperature, $C_1$ and $C_2$ are the WLF constants.


## Rate-dependent plasticity (including creep and viscoplasticity)
The creep is a deformation phenomenon that the displacement depends on the time even under constant stress condition. The viscoelasticity can be viewed as linear creep. Several nonlinear creep are described in this section. In the mathematical theory, we define creep strain $\epsilon^{c}$ and creep strain rate $\dot{\epsilon}^{c}$

$$
\begin{align}
\label{eq:ch5_creep_gov1}
\dot{\epsilon}^{c}=\dfrac{\partial\epsilon^{c}}{\partial t}=\beta(\sigma,\epsilon^{c})
\end{align}
$$

In this case, if the instantaneous strain is assumed as the elasticity strain $\epsilon^{e}$, the total strain can be expressed as the summary of elastic and creep strains

$$
\epsilon=\epsilon^{e}+\epsilon^{c}
$$

where the elastic strain can be calculated by 

$$
\epsilon^{e}=\mathbf{c}^{e-1}\colon\sigma
$$

When the creep occurs in the deformation, the stress becomes

$$
\sigma_{n+1}=\mathbf{c}\colon(\epsilon_{n+1}-\epsilon_{n+1}^{c})
$$

$$
\epsilon_{n+1}^{c}=\epsilon_{n}^{c}+\triangle t\beta_{n+\theta}
$$

where $\beta_{n+\theta}$ becomes

$$
\beta_{n+\theta}=(1+\theta)\beta_{n}+\theta\beta_{n+1}
$$

The incremental creep strain $\triangle\epsilon^{c}$ can be simplified to a nonlinear equation

$$
\mathbf{R}_{n+1}=\epsilon_{n+1}-\mathbf{c}^{-1}\colon\sigma_{n+1}-\epsilon_{n}^{c}-\triangle t\beta_{n+\theta}=0
$$

The Newton-Raphson method is applied to solve the nonlinear conditions. The iterative scheme in the finite element framework is 

$$
\begin{align}
\label{eq:ch5_creep_gov2}
\mathbf{R}_{n+1}^{(k+1)}=0=\mathbf{R}_{n+1}^{(k)}-(\mathbf{c}^{-1}+\triangle t\mathbf{c}_{n+1}^{c})d\sigma_{n+1}^{(k)}
\end{align}
$$

which yields 

$$
\begin{align}
\label{eq:ch5_creep_gov3}
\mathbf{c}_{n+1}^{c}=\dfrac{\partial\beta}{\partial\sigma}\mid_{n+\theta}=\theta\dfrac{\partial\beta}{\partial\sigma}\mid_{n+1}
\end{align}
$$

The above equations $\eqref{eq:ch5_creep_gov2}$ and $\eqref{eq:ch5_creep_gov3}$ are used in the iterative scheme. As the residual $\mathbf{R}$ gets close to zero, the stress $\sigma_{n+1}$ and tangent tensile modulus are 

$$
\mathbf{c}_{n+1}^{*}=[\mathbf{c}^{-1}+\triangle t\mathbf{c}_{n+1}^{c}]^{-1}
$$

To solve the equation $\eqref{eq:ch5_creep_gov1}$, the following Norton model is applied in the program. The equivalent clip strain $\dot{\epsilon}^{cr}$ is defined to be the function of Mises stress $q$ and time $t$.

$$
\dot{\epsilon}^{cr}=Aq^{n}t^{m}
$$

where $A$, $m$, $n$ are the material coefficients.

### Creep
Creep is the inelastic, irreversible deformation of structures during time. It is a life limiting factor and depends on stress, strain, temperature and time. This dependency can be modeled as followed:

$$
\dot{\epsilon}^{cr}=f(\sigma,\epsilon,T,t)
$$

Creep can occur in all crystalline materials, such as metal or glass, has various impacts on the behavior of the material. 

#### Three types of creep
Creep can be divided in three different stages: primary creep, secondary creep and irradiation induced creep. 

**Primary creep** (0<m<1) starts rapidly with an infinite creep rate at the initialization. Here is m the time index. It occurs after a certain amount of time and slows down constantly. It occurs in the first hour after applying the load and is essential in calculating the relaxation over time.

**Secondary creep** (m=1) follows right after the primary creep stage. The strain rate is now constant over a long period of time.

The strain rate in the **irradiation induced creep** stage is growing rapidly until failure. This happens in a short period of time and is not of great interest. Therefore only primary and secondary creep are modeled in WelSim.

#### Creep models
WELSIM supports implicit creep models including Strain Hardening, Time Hardening, Generalized
Exponentia, Generalized Graham, Generalized Blackburn, Modified Time Hardening, Modified Strain Hardening, Generalized Garofalo, Exponential form, Norton, Combined Time Hardening, Rational polynomial, and Generalized Time Hardening. The details of these models are given in the table below.

| Creep Model<br>(index) | Name | Equations | Parameters | Type |
| ----------- | ---- | --------- | ---------- | ---- |
| 1 | Strain Hardening | $\dot{\epsilon}_{cr}=C_{1}\sigma^{C_2}\epsilon_{cr}^{C_3}e^{-C_4/T}$ | $C_1>0$ | Primary |
| 2 | Time Hardening | $\dot{\epsilon}_{cr}=C_{1}\sigma^{C_2}t^{C_3}e^{-C_4/T}$ | $C_1>0$ | Primary |
| 3 | Generalized Exponential | $\dot{\epsilon}_{cr}=C_{1}\sigma^{C_2}re^{-rt}$, $r=C_{5}\sigma^{C_3}e^{-C4/T}$ | $C_1>0$<br>$C_5>0$ | Primary |
| 4 | Generalized Graham | $\dot{\epsilon}_{cr}=C_{1}\sigma^{C_2}\left( t^{C_3} + C_{4}t^{C_5} + C_{6}t^{C_7} \right) e^{-C_8/T}$ | $C_1>0$ | Primary |
| 5 | Generalized Blackburn | $\dot{\epsilon}_{cr} = f\left(1-e^{-rt}\right)+gt$<br>$f=C_{1}e^{C_2\sigma}$, $r=C_3\left(\sigma/C_4\right)^{C_5}$, $g=C_{6}e^{C_{7}\sigma}$ | $C_1>0$<br>$C_3>0$<br>$C_6>0$ | Primary |
| 6 | Modified Time Hardening | $\dot{\epsilon}_{cr}=\dfrac{C_{1}}{C_3+1}\sigma^{C_2}t^{C_3+1}e^{-C_4/T}$ | $C_1>0$ | Primary |
| 7 | Modified Strain Hardening | $\dot{\epsilon}_{cr}= \{ C_{1} \sigma^{C_2} \left[\left( C_3+1\right)\epsilon_{cr} \right]^{C_3} \}^{1/(C_3+1)} e^{-C_4/T}$ | $C_1>0$ | Primary |
| 8 | Generalized Garofalo | $\dot{\epsilon}_{cr}=C_1\left[ sinh(C_2\sigma)\right]^{C_3} e^{-C_4/T}$ | $C_1>0$ | Secondary |
| 9 | Exponential form | $\dot{\epsilon}_{cr}=C_1 e^{\sigma/C_2} e^{-C_3/T}$ | $C_1>0$ | Secondary |
| 10 | Norton | $\dot{\epsilon}_{cr}=C_1 \sigma^{C_2} e^{-C_3/T}$ | $C_1>0$ | Secondary |
| 11 | Combined Time Hardening | $\dot{\epsilon}_{cr}=\dfrac{C_1}{C_3+1} \sigma^{C_2} t^{C_3+1} e^{-C_4/T} + C_5 \sigma^{C_6}te^{-C_7/T}$ | $C_1>0$,<br> $C_5>0$ | Primary + Secondary |
| 12 | Rational Polynomial | $\dot{\epsilon}_{cr}=C_1 \dfrac{\partial\epsilon_c}{\partial t}$, $\epsilon_{c}=\dfrac{cpt}{1+pt}+\dot{\epsilon}_m t$<br> $\dot{\epsilon}_m=C_2(10)^{C_3\sigma}\sigma^{C_4}$ <br> $c=C_7\dot{\epsilon}_m^{C_8}\sigma^{C_9}$,  $p=C_{10}\dot{\epsilon}_{m}^{C_{11}}\sigma^{C_{12}}$ | $C_2>0$ | Primary + Secondary |
| 13 | Generalized Time Hardening | $\dot{\epsilon}_{cr}=ft^r e^{-C_6/T}$<br> $f=C_1\sigma+C_2\sigma^2+C_3\sigma^3$ <br> $r=C_4 + C_5\sigma$ | - | Primary |

where $\epsilon_{cr}$ is equivalent creep strain, $\dot{\epsilon}_{cr}$ is the change in equivalent creep strain with respect to time, $\sigma$ is equivalent stress. $T$ is temperature. $C_1$ through $C_{12}$ are creep constants. $t$ is time at end of substep. $e$ is natural logarithm base.








