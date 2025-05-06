# Curve Fitting Theory
The section shows you the theoretical details of each curve or function. 

## Basic Curves
The group of Basic contains all commonly used curves.

### Straight line
The function of this curve is given by

$$
y(x)=a+bx
$$

where $a$ and $b$ are constants to fit, $x$ and $y$ are the test data pair. This function is also called 1st order polynomial.

### Natural logarithm
The function of this curve is given by

$$
y(x)=a+b \cdot ln(x)
$$

where $a$ and $b$ are constants to fit, $x$ and $y$ are the test data pair.

!!!note
    Independent variable $x$ must be larger than zero.

### Exponential
The function of this curve is given by

$$
y(x)=ae^{bx}
$$

where $a$ and $b$ are constants to fit, $x$ and $y$ are the test data pair.

!!!note
    Dependent variable $y$ must be larger than zero.

### Power
The function of this curve is given by

$$
y(x)=ax^{b}
$$

where $a$ and $b$ are constants to fit, $x$ and $y$ are the test data pair.

!!!note
    Variables $x$ and $y$ must be larger than zero.

### Gaussian
The function of this curve is given by

$$
y(x)=a \exp{(-\dfrac{(x-b)^2}{2c^2})}
$$

where $a$, $b$, and $c$ are constants to fit, $x$ and $y$ are the test data pair.

!!!note
    Dependent variables $y$ must be larger than zero.





## Polynomial Curves
The group of Polynomial contains polynomial curves. The first-order polynomial is located in the [Basic group](#basic-curves) as Straight Line.

### 2nd Order Polynomial
The function of this curve is given by

$$
y(x)=a+bx+cx^2
$$

where $a$, $b$, and $c$ are constants to fit, $x$ and $y$ are the test data pair.


### 3rd Order Polynomial
The function of this curve is given by

$$
y(x)=a+bx+cx^2+dx^3
$$

where $a$, $b$, $c$, and $d$ are constants to fit, $x$ and $y$ are the test data pair.



### 4th Order Polynomial
The function of this curve is given by

$$
y(x)=a+bx+cx^2+dx^3+ex^4
$$

where $a$, $b$, $c$, $d$, and $e$ are constants to fit, $x$ and $y$ are the test data pair.



### 5th Order Polynomial
The function of this curve is given by

$$
y(x)=a+bx+cx^2+dx^3+ex^4+ex^5
$$

where $a$, $b$, $c$, $d$, $e$, and $f$ are constants to fit, $x$ and $y$ are the test data pair.


## Schulz-Flory functions
Schulz Flory distribution function to describe relative ratios of polymers after a polymerization process. The function of this curve is given by

$$
y(x) = \sum_{i=1}^{n} ln(10) \dfrac{a_i}{b_i^2} \exp{(4.6x-\dfrac{\exp{(2.3x)}}{b_i})}
$$

where $a_i$ and $b_i$ are constants to fit, $x$ and $y$ are the test data pair. The parameter must satisfy the condition: $0<a_i<1$.


## Nonlinear Curves
The group of Nonlinear curves contains nonlinear curves that do not belong to the polynomial. 

### Symmetrical Sigmoidal
The function of this curve is given by

$$
y(x)=d + \dfrac{a-d}{1+(\dfrac{x}{c})^b}
$$

where $a$, $b$, $c$, and $d$ are constants to fit, $x$ and $y$ are the test data pair.



### Asymmetrical Sigmoidal
The function of this curve is given by

$$
y(x)=d + \dfrac{a-d}{ (1+(\dfrac{x}{c})^b)^m }
$$

where $a$, $b$, $c$, $d$, and $m$ are constants to fit, $x$ and $y$ are the test data pair.



### Rectangular Hyperbola
The function of this curve is given by

$$
y(x)=\dfrac{V_{max}x}{ K_m + x}
$$

where $V_{max}$ and $K_m$ are constants to fit, $x$ and $y$ are the test data pair.


### Basic Exponential
The function of this curve is given by

$$
y(x)=a + be^{-cx}
$$

where $a$, $b$, and $c$ are constants to fit, $x$ and $y$ are the test data pair.


### Half-Life Exponential
The function of this curve is given by

$$
y(x)=a + \dfrac{b}{2^{(\dfrac{x}{c})}}
$$

where $a$, $b$, and $c$ are constants to fit, $x$ and $y$ are the test data pair.


### Proportional Rate Growth or Decrease
The function of this curve is given by

$$
y(x)=Y_0 + \dfrac{V_0}{K}(1-e^{-Kx})
$$

where $Y_0$, $V_0$, and $K$ are constants to fit, $x$ and $y$ are the test data pair.

### Log-Normal Particle Size Distribution
The function of this curve is given by

$$
\dfrac{dy(x)}{d\ln{x}}=\dfrac{C_t}{\sigma_g\sqrt{2}\pi} \exp{(-\dfrac{(\ln{x}-\ln{D_m})^2}{2\ln{\sigma_g}^2})}
$$

where $D_m$, $\sigma_g$, and $C_t$ are constants to fit, x and y are test data pair. In the computation, the Left-Hand-Side term ($dy(x)/d\ln{x}$) is calculated using finite difference scheme. 

!!!note
    Independent variables $x$ must be larger than zero. The number of input x-y pairs must be large than 3.




## Hyperelastic Material Model Curves
The group of hyperelastic material models contains the commonly used hyperelastic models in the finite element analysis. The test data pair is **engineering** strain and stress. 

### Arruda-Boyce
The form of the strain-energy potential for Arruda-Boyce model is 

$$
\begin{array}{ccl}
W & = & \mu[\dfrac{1}{2}(\bar{I}_{1}-3)+\dfrac{1}{20\lambda_{m}^{2}}(\bar{I_{1}^{2}}-9)+\dfrac{11}{1050\lambda_{m}^{4}}(\bar{I_{1}^{3}}-27)\\
 & + & \dfrac{19}{7000\lambda_{m}^{6}}(\bar{I_{1}^{4}}-81) + \dfrac{519}{673750\lambda_{m}^{8}}(\bar{I_{1}^{5}}-243)]
\end{array}
$$

where $\mu$ is the initial shear modulus of the material, $\lambda_{m}$ is limiting network stretch. 

### Gent
The form of the strain-energy potential for the Gent model is:

$$
W=-\frac{\mu J_{m}}{2}\mathrm{ln}\left(1-\frac{\bar{I}_{1}-3}{J_{m}}\right)
$$

where $\mu$ is the initial shear modulus of the material, $J_m$ is limiting value of $\bar{I}_1-3$.


### Mooney-Rivlin 2 3 5 and 9 Parameters
This model includes two-, three-, five-, and nine-terma Mooney-Rivlin models. The form of the strain-energy potential for a two-parameter Mooney-Rivlin model is 

$$
W=C_{10}\left(\bar{I}_{1}-3\right)+C_{01}\left(\bar{I}_{2}-3\right)
$$

where $C_{10}$, $C_{01}$, and $D_{1}$ are the material constants.

The form of strain-energy potential for a three-parameter Mooney-Rivlin model is 

$$
W=C_{10}\left(\bar{I}_{1}-3\right)+C_{01}\left(\bar{I}_{2}-3\right)+C_{11}\left(\bar{I}_{1}-3\right)\left(\bar{I}_{2}-3\right)
$$

where $C_{10}$, $C_{01}$, and $C_{11}$ are material constants.


The form of strain-energy potential for a five-parameter Mooney-Rivlin model is 

$$
\begin{array}{ccl}
W & = & C_{10}\left(\bar{I}_{1}-3\right)+C_{01}\left(\bar{I}_{2}-3\right)+C_{20}\left(\bar{I}_{1}-3\right)^{2}\\
 & + & C_{11}\left(\bar{I}_{1}-3\right)\left(\bar{I}_{2}-3\right)+C_{02}\left(\bar{I}_{2}-3\right)^{2}
\end{array}
$$

where $C_{10}$, $C_{01}$, $C_{20}$, $C_{11}$, and $C_{02}$ are material constants.


The form of strain-energy potential for a nine-parameter Mooney-Rivlin model is 

$$
\begin{array}{ccl}
W & = & C_{10}\left(\bar{I}_{1}-3\right)+C_{01}\left(\bar{I}_{2}-3\right)+C_{20}\left(\bar{I}_{1}-3\right)^{2}\\
 & + & C_{11}\left(\bar{I}_{1}-3\right)\left(\bar{I}_{2}-3\right)+C_{02}\left(\bar{I}_{2}-3\right)^{2}+C_{30}\left(\bar{I}_{1}-3\right)^{3}\\
 & + & C_{21}\left(\bar{I}_{1}-3\right)^{2}\left(\bar{I}_{2}-3\right)+C_{12}\left(\bar{I}_{1}-3\right)\left(\bar{I}_{2}-3\right)^{2}+C_{03}\left(\bar{I}_{2}-3\right)^{3}
\end{array}
$$

where $C_{10}$, $C_{01}$, $C_{20}$, $C_{11}$, $C_{02}$, $C_{30}$, $C_{21}$, $C_{12}$, and $C_{03}$ are material constants.

### Neo-Hookean
The Neo-Hookean model is a well-known hyperelastic model with an expanded linear rule (Hooke rule) having isotropy so that it can respond to finite deformation problems. The elastic potential is as follows.

$$
W=\frac{\mu}{2}(\bar{I}_{1}-3)
$$

where $\mu$ is initial shear modulus of materials.

### Ogden
The strain-energy potential of the Ogden compressible foam model is based on the principal stretches of left Cauchy strain tensor, which has the form:

$$
W=\sum_{i=1}^{N}\frac{\mu_{i}}{\alpha_{i}}\left(\bar{\lambda}_{1}^{\alpha_{i}}+\bar{\lambda}_{2}^{\alpha_{i}}+\bar{\lambda}_{3}^{\alpha_{i}}-3\right)+\sum_{k=1}^{N}\frac{1}{D_{k}}\left(J-1\right)^{2k}
$$

where N determines the order of the polynomial, $\mu_i$, $\alpha_i$ are material constants. The reduced principal strench is defined by:

$$
\bar{\lambda}_{p}=J^{-\frac{1}{3}}\lambda_p,\; J=(\lambda_{1}\lambda_{2}\lambda_{3})^{\frac{1}{2}}
$$

When parameters N=1, $\alpha_1$=2, the Ogden model is converted to the neo-Hookean model. When parameters N=2, $\alpha_1$=2 and $\alpha_2$=-2, the Ogden model is converted to the 2-parameter Mooney-Rivlin model.


### Polynomial
The polynomial form of strain-energy potential is:

$$
W=\sum_{i+j=1}^{N}c_{ij}\left(\bar{I}_{1}-3\right)^{i}\left(\bar{I_{2}}-3\right)^{j}
$$

where $N$ determines the order of the polynomial, $c_{ij}$ are material constants.

The Polynomial model is converted to following models with specific parameters:

| Parameters of Polynomial model | Equivalent model |
| ------------------------------ | ---------------- |
| N=1, $C_{01}$=0 | neo-Hookean |
| N=1 | 2-parameter Mooney-Rivlin |
| N=2 | 5-parameter Mooney-Rivlin |
| N=3 | 9-parameter Mooney-Rivlin |


### Yeoh 
The Yeoh model is also called the reduced polynomial form. The strain-energy potential is 

$$
W=\sum_{i=1}^{N}c_{i0}\left(\bar{I}_{1}-3\right)^{i}
$$

where N denotes the order of the polynomial, $C_{i0}$ are material constants. When N=1, Yeoh becomes neo-Hookean model. 


## Electromagnetic Model Curves
This group includes the commonly used fitting curves in the electromagnetic analysis. 

### Electrical Steel
The iron-core loss without DC flux bias is expressed as the following:

$$
p_v=P_h+P_c+P_e=K_{f} f (B_m)^2 + K_c (fB_m)^2 + K_e(fB_m)^{1.5}
$$

where 

* $B_m$ is the amplitude of the AC flux component,
* $f$ is the frequency,
* $K_h$ is the hysteresis core loss coefficient,
* $K_c$ is the eddy-current core loss coefficient, and
* $K_e$ is the excess core loss coefficient,

### Power Ferrite
The iron-core loss is expressed as the Steinmetz approximation

$$
p_v=C_m f^x B_m^y
$$

where $p_v$ is the average power density, $f$ is the excitation frequency, and $B_m$ is the peak flux density, is commonly used to characterize core loss data for sinusoidal excitation, but can also be applied to square-wave data. 

To linearize the equation for curve fitting, we used base-10 logarithms. The equation above can be rewritten to 

$$
log(p_v)=c + x\cdot log(f) + y \cdot(B_m)
$$

where $c=log(C_m)$.


