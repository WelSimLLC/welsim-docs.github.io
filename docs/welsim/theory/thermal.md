# Thermal analysis
This section discuss the theories used in the WESLIM thermal analysis. 

## Governing equations
The governing equations applied in thermal analysis are:

$$
\begin{align}
\label{eq:ch5_thermal_gov}
\rho c\frac{\partial T}{\partial t}=\nabla\cdot(k\nabla T)
\end{align} 
$$

where $\rho=\rho(x)$ is mass density, $c=c(x,T)$ is the specific heat, $T=T(x,t)$ is the temperature, $K=k(x,T)$ is the thermal conductivity, $Q=Q(x,T,t)$ is the calorific value. $x$ is the position in the modeling domain, $T$ is the temperature and $t$ is the time. 

The modeling domain is represented by S, and the boundary is represented by $\varGamma$. When assuming the boundary conditions of either the Dirichlet or Neumann type, those boundary conditions can be mathematically expressed as 

$$
T=T_{1}(x,t) \qquad X\in\Gamma_{1}
$$

$$
k\frac{\partial T}{\partial n}=q(x,T,t) \qquad X\in\Gamma_{2}
$$

where the term $T_{1}$, $q$ is already known. $q$ is the heat flux outflow from the boundary. Three types of heat flux can be considered in WELSIM thermal module.

$$
q=-q_{s}+q_{c}+q_{r}
$$

$$
q_{s}=q_{s}(x,t)
$$

$$
q_{c}=hc(T-T_{c})
$$

$$
q_{r}=hc(T^{4}-T_{r}^{4})
$$

where $q_{s}$ is the distributed heat flux, $q_{c}$ is the heat flux by the convective heat transfer, and $q_{r}$ is the heat flux by the radiant heat transfer. The other quantities are

* $T_{c}=T_{c}(x,t)$ Convective heat transfer coefficient ambient temperature
* $h_{c}=h_{c}(x,t)$ Convective heat transfer factor
* $T_{r}=T_{r}(x,t)$ Radiant heat transfer coefficient ambient temperature
* $h_{r}=\epsilon\sigma F=h_{r}(x,t)$ Radiant heat transfer factor. $\epsilon$ is the radiant rate, $\sigma$ is the Stefan-Boltzmann constant, $F$ is the shape factor.


## Derivation of heat flow matrices
When equation $\eqref{eq:ch5_thermal_gov}$ is discreted by the Galerkin approximation, it becomes as follows,

$$
\begin{align}
\label{eq:ch5_thermal_gov2}
[\mathbf{K}]\{T\}+[\mathbf{M}]\frac{\partial T}{\partial t}=\{F\}
\end{align}
$$

where the matrices and vectors are 

$$
\begin{array}{ccc}
[\mathbf{K}] & = & \int(k_{xx}\dfrac{\partial\{N\}^{T}}{\partial x}\dfrac{\partial\{N\}}{\partial x}+k_{yy}\dfrac{\partial\{N\}^{T}}{\partial y}\dfrac{\partial\{N\}}{\partial y}+k_{zz}\dfrac{\partial\{N\}^{T}}{\partial z}\dfrac{\partial\{N\}}{\partial z})dV\\
 & + & \int h_{c}\{N\}^{T}\{N\}ds+\int h_{r}\{N\}^{T}\{N\}ds
\end{array}
$$

$$
[\mathbf{M}]=\int\rho c\{N\}^{T}\{N\}dV
$$

$$
\{F\}=\int Q\{N\}^{T}dV-\int q_{s}\{N\}^{T}dS+\int h_{c}T_{c}\{N\}^{T}dS+\int h_{r}T_{r}(T+T_{r})(T^{2}+T_{r}^{2})\{N\}^{T}dS
$$

where shape function

$$
\{N\}=(N^{1},N^{2},.......),\thinspace N_{i}=N_{i}(x)
$$

Equation $\eqref{eq:ch5_thermal_gov2}$ is nonlinear and unsteady. When the time is discretized by the backward Euler's rule and the temperature at time t=t_{0} is known, the temperature at t=t_{0+\triangle t} is calculated using the following equation.

$$
\begin{align}
\label{eq:ch5_thermal_gov_disc1}
[\mathbf{K}]_{t=t_{0+\triangle t}}\{T\}_{t=t_{0+\triangle t}}+[\mathbf{M}]_{t=t_{0+\triangle t}}\dfrac{\{T\}_{t=t_{0+\triangle t}}-\{T\}_{t=t_{0}}}{\triangle t}=\{F\}_{t=t_{0+\triangle t}}
\end{align} 
$$

The temperature vector can be expressed as 

$$
\begin{align}
\label{eq:ch5_thermal_gov_disc2}
\{T\}_{t=t_{0}+\triangle t}=\{T\}_{t=t_{0}+\triangle t}^{(i)}+\{\triangle T\}_{t=t_{0}+\triangle t}^{(i)}
\end{align}
$$

The product of the heat conduction matrix and temperature vector, mass matrix and etc. are expressed in approximation as in the following equation.

$$
\begin{align}
\label{eq:ch5_thermal_gov_disc3}
[\mathbf{K}]_{t=t_{0+\triangle t}}\{T\}_{t=t_{0+\triangle t}}\cong[\mathbf{K}]_{t=t_{0+\triangle t}}^{(i)}\{T\}_{t=t_{0+\triangle t}}^{(i)}+\dfrac{\partial[\mathbf{K}]_{t=t_{0+\triangle t}}^{(i)}\{T\}_{t=t_{0+\triangle t}}^{(i)}}{\partial\{T\}_{t=t_{0+\triangle t}}^{(i)}}\{\triangle T\}_{t=t_{0+\triangle t}}^{(i)}
\end{align}
$$

$$
\begin{align}
\label{eq:ch5_thermal_gov_disc4}
[M]_{t=t_{0+\triangle t}}\cong[M]_{t=t_{0}+\triangle t}^{(i)}+\dfrac{\partial[M]_{t=t_{0}+\triangle t}^{(i)}}{\partial\{T\}_{t=t_{0+\triangle t}}^{\{i\}}}\{\triangle T\}_{t=t_{0+\triangle t}}^{(i)}
\end{align}
$$

Substituting equations $\eqref{eq:ch5_thermal_gov_disc2}$, $\eqref{eq:ch5_thermal_gov_disc3}$, and $\eqref{eq:ch5_thermal_gov_disc4}$ into equation $\eqref{eq:ch5_thermal_gov_disc1}$ and skipping the high order polynomial terms, we have

$$
(\dfrac{[\mathbf{M}]_{t=t_{0+\triangle t}}^{(i)}}{\triangle t}+\dfrac{\partial[\mathbf{M}]_{t=t_{0+\triangle t}}^{(i)}\{T\}_{t=t_{0}+\text{\triangle t}}^{(i)}}{\partial\{T\}_{t=t_{0}+\triangle t}^{(i)}}\dfrac{\{T\}_{t=t_{0}+\triangle t}^{(i)}-\{T\}_{t=t0}}{\triangle t}+\dfrac{\partial[\mathbf{K}]_{t=t_{0}+\triangle t}^{(i)}\{T\}_{t=t_{0}+\triangle t}^{(i)}}{\partial\{T\}_{t=t_{0}+\triangle t}^{(i)}})\{\triangle T\}_{t=t_{0}+\triangle t}^{(i)}\\=\{F\}_{t=t_{0}+\triangle t}-[\mathbf{M}]_{t=t_{0}+\triangle t}^{(i)}\dfrac{\{T\}_{t=t_{0}+\triangle t}^{(i)}-\{T\}_{t=t_{0}}}{\triangle t}-[\mathbf{K}]_{t=t_{0}+\triangle t}^{(i)}\{T\}_{t=t_{0}+\triangle t}^{(i)}
$$

Furthermore, an approximation evaluation for the left hand side factor is given below,

$$
[\mathbf{K}^{*}]^{(i)}=\dfrac{[M]_{t=t_{0}+\triangle t}^{(i)}}{\triangle t}+\dfrac{\partial[\mathbf{K}]_{t=t_{0}+\triangle t}^{(t)}}{\partial\{T\}_{t=t_{0}+\triangle t}^{(i)}}\{T\}_{t=t_{0}+\triangle t}^{(i)}=\dfrac{[M]_{t=t_{0}+\triangle t}^{(i)}}{\triangle t}+[\mathbf{K}_{T}]_{t=t_{0}+\triangle t}^{(i)}
$$

where $[\mathbf{K}_{T}]_{t=t_{0}+\triangle t}^{(i)}$ tangent stiffness matrix.

Eventually, the temperature at time $t=t_{0}+\triangle t$ can be calculated by iterative solver using the following scheme:

$$
\begin{array}{cc}
[\mathbf{K}^{*}]^{(i)}\{T\}_{t=t_{0}+\triangle t}^{(i)}=\{F\}_{t=t_{0}+\triangle t}-[\mathbf{M}]_{t=t_{0}+\triangle t}^{(i)}\dfrac{\{T\}_{t=t_{0}+\triangle t}^{(i)}-\{T\}_{t=t_{0}}}{\triangle t}-[\mathbf{K}]_{t=t_{0}+\triangle t}^{(i)}\\
\{T\}_{t=t_{0}+\triangle t}^{(i+1)}=\{T\}_{t=t_{0}+\triangle t}^{(i)}+\{\triangle T\}_{t=t_{0}+\triangle t}^{(i)}
\end{array}
$$

For the steady state analysis, the iteration algorithm is given below

$$
\begin{array}{cc}
[\mathbf{K}_{T}]^{(i)}\{\triangle T\}_{t=\infty}^{(i)}=\{F\}_{t=\infty}-[\mathbf{K}_{T}]^{(i)}\{\triangle T\}_{t=\infty}^{(i)}\\
\{T\}_{t=\infty}^{(i+1)}=\{T\}_{t=\infty}^{(i)}+\{\triangle T\}_{t=\infty}^{(i)}
\end{array}
$$

Since the implicit time solver is applied in the program, the selection of incremental time $\triangle t$ is relatively flexible. However, if the magnitude of $\triangle t$ is too large, the convergence frequency will be decreased in the iterative computation. The program contains automatic incremental functions to monitor the size of the residual vectors during the iterations. As the convergence rate becomes slow, the incremental time $\triangle t$ is automatically reduced. When the convergence rate becomes high, the program increases the incremental time $\triangle t$. Doing this automatic scheme can improve the numerical performance and saving computational time. 

<!-- ## Heat Flow Evaluations -->

<!-- ## Radiation Matrix Method -->

<!-- ## Radiosity Solution Method -->















