# Structures with geometric nonlinearity
In the analysis of finite deformation problems, the principle equation of virtual work becomes a nonlinear equation regarding the displacement-strain relation. To solve the nonlinear equation, an iterative algorithm is generally applied. When implementing an incremental analysis for a finite deformation problem, whether to refer to the initial status as a reference layout, or refer to the starting point of the increments can be selected. The former is called the total Lagrange method, and the latter is called the updated Lagrange method. Both the total Lagrange and updated Lagrange methods are available in the program. This section discusses the various geometrically nonlinear options available, including the large strain. 

## Decomposition of increments of virtual work equation
Given the solid deformation at time t is known, the status at time t'=t+\triangle t is unknown. The equilibrium equation, dynamic boundary condition, and external boundary condition can be expressed as 

$$
\begin{align}
\label{eq:ch5_nonlinear_gov1}
\nabla_{t'\mathbf{x}}\cdot^{t'}\sigma+^{t'}\mathbf{b}=0\quad\text{in}V
\end{align}
$$

$$
^{t'}\sigma\cdot^{t'}\mathbf{n}=^{t'}\mathbf{t}\quad\mathrm{on}\thinspace^{t'}S
$$

$$
^{t'}\mathbf{u}=^{t'}\bar{\mathbf{u}}
$$

where $^{t'}\sigma$, $^{t'}\mathbf{b}$, $^{t'}\mathbf{n}$, $^{t'}\mathbf{t}$, $^{t'}\mathbf{u}$ are the Cauchy stress, body force, outward normal vector of the object's surface, fixed surface force, and fixed displacement in each time t'. 


## Principle of virtual work
The principle of virtual work to the equation $\eqref{eq:ch5_nonlinear_gov1}$ is 

$$
\begin{align}
\label{eq:ch5_nonlinear_gov2}
\int_{^{t'}V}^{t'}\sigma:\delta^{t'}\mathbf{A}_{(L)}d^{t'}v=\int_{^{t'}S_{t}}^{t'}\mathbf{t}\cdot\delta\mathbf{u}d^{t'}s+\int_{V}^{t'}\mathbf{b}\cdot\delta\mathbf{u}d^{t'}v
\end{align}
$$

where $^{t'}\mathbf{A}_{(L)}$ is the linear portion of the Almansi strain tensor and can be calculated by

$$
^{t'}\mathbf{A}_{(L)}=\dfrac{1}{2}\{\dfrac{\partial^{t'}\mathbf{u}}{\partial^{t'}\mathbf{x}}+(\dfrac{\partial^{t'}\mathbf{u}}{\partial^{t'}\mathbf{x}})^{T}\}
$$

The equation $\eqref{eq:ch5_nonlinear_gov2}$ needs to be solved referring to layout V at time 0, or layout $^{t}v$ at time t. The following sections will introduce these two algorithms: total Lagrange method and updated Lagrange method, respectively.


## Formulation of total lagrange algorithm
The principle equation of the virtual work at time t' assuming the initial layout of time 0 is the reference domain, which is shown below.

$$
\begin{align}
\label{eq:ch5_nonlinear_total_lag_gov1}
\intop_{V}\thinspace_{0}^{t'}\mathbf{S}:\delta_{0}^{t'}\mathbf{E}dV=^{t'}\delta\mathbf{R}
\end{align}
$$

$$
\begin{align}
\label{eq:ch5_nonlinear_total_lag_gov2}
^{t'}\delta\mathbf{R}=\intop_{S_{t}}\thinspace_{0}^{t'}\mathbf{t}\cdot\delta dS+\intop_{V}\thinspace_{0}^{t'}\mathbf{b}\cdot\delta\mathbf{u}dV
\end{align}
$$

where $_{0}^{t'}\mathbf{S}$ and $_{0}^{t'}\mathbf{E}$ are the 2nd order Piola-Kirchhoff stress tensor and the Green-Lagrange strain tensor at time t', respectively. The initial domain at time 0 is called the reference domain. The body force $_{0}^{t'}\mathbf{b}$ and nominal surface force vector $_{0}^{t'}\mathbf{t}$ are

$$
_{0}^{t'}\mathbf{t}=\dfrac{d^{t'}s}{dS}\thinspace^{t'}\mathbf{t}
$$

$$
_{0}^{t'}\mathbf{b}=\dfrac{d^{t'}v}{dV}\thinspace^{t'}\mathbf{b}
$$

The Green-Lagrange strain tensor at time t is defined by

$$
_{0}^{t}\mathbf{E}=\dfrac{1}{2}\{\dfrac{\partial^{t}\mathbf{u}}{\partial\mathbf{X}}+(\dfrac{\partial^{t}\mathbf{u}}{\partial\mathbf{X}})^{T}+(\dfrac{\partial^{t}\mathbf{u}}{\partial\mathbf{X}})^{T}\cdot\dfrac{\partial^{t}\mathbf{u}}{\partial\mathbf{X}}\}
$$

Then the displacement $^{t'}\mathbf{u}$ and 2nd order Piola-Kirchhoff stress $_{0}^{t'}\mathbf{S}$ at time t' are 

$$
\begin{align}
\label{eq:ch5_nonlinear_total_lag_gov3}
^{t'}\mathbf{u}=^{t}\mathbf{u}+\triangle\mathbf{u}
\end{align}
$$

$$
\begin{align}
\label{eq:ch5_nonlinear_total_lag_gov4}
_{0}^{t'}\mathbf{S}=_{0}^{t}\mathbf{S}+\triangle\mathbf{S}
\end{align}
$$

Similarly, the incremental Green-Lagrange strain can be defined as 

$$
\begin{align}
\label{eq:ch5_nonlinear_total_lag_gov5}
^{t'}\mathbf{E}=^{t}\mathbf{E}+\triangle\mathbf{E}
\end{align}
$$

$$
\begin{align}
\label{eq:ch5_nonlinear_total_lag_gov6}
\triangle\mathbf{E}=\triangle\mathbf{E}_{L}+\triangle\mathbf{E}_{NL}
\end{align}
$$

where

$$
\triangle\mathbf{E}_{L}=\dfrac{1}{2}\{\dfrac{\partial\triangle\mathbf{u}}{\partial\mathbf{X}}+(\dfrac{\partial\triangle\mathbf{u}}{\partial\mathbf{X}})^{T}+(\dfrac{\partial\triangle\mathbf{u}}{\partial\mathbf{X}})^{T}\cdot\dfrac{\partial^{t}\mathbf{u}}{\partial\mathbf{X}}+(\dfrac{\partial^{t}\mathbf{u}}{\partial\mathbf{X}})^{T}\cdot\dfrac{\partial\triangle\mathbf{u}}{\partial\mathbf{X}}\}
$$

$$
\triangle\mathbf{E}_{NL}=\dfrac{1}{2}(\dfrac{\partial\triangle\mathbf{u}}{\partial\mathbf{X}})^{T}\cdot\dfrac{\partial\triangle\mathbf{u}}{\partial\mathbf{X}}
$$

Substituting equations $\eqref{eq:ch5_nonlinear_total_lag_gov3}$, $\eqref{eq:ch5_nonlinear_total_lag_gov4}$, $\eqref{eq:ch5_nonlinear_total_lag_gov5}$, and $\eqref{eq:ch5_nonlinear_total_lag_gov6}$ into governing equations $\eqref{eq:ch5_nonlinear_total_lag_gov1}$ and $\eqref{eq:ch5_nonlinear_total_lag_gov2}$, we have 

$$
\intop_{v}\triangle\mathbf{S}:(\delta\triangle\mathbf{E}_{L}+\delta\triangle\mathbf{E}_{NL})dV+\intop_{V}\thinspace_{0}^{t}\mathbf{S}\colon\delta\triangle\mathbf{E}_{NL}dV=^{t'}\delta\mathbf{R}-\intop_{V}\thinspace_{0}^{t}\mathbf{S}:\delta\triangle\mathbf{E}_{L}dV
$$

where $\triangle\mathbf{S}$ is assumed to be 

$$
\triangle\mathbf{S}=_{0}^{t}\mathbf{C}\colon\triangle\mathbf{E}_{L}
$$

then we have 

$$
\begin{align}
\label{eq:ch5_nonlinear_total_lag_gov7}
\intop_{v}(\mathbf{C}\colon\triangle\mathbf{E}):\delta\triangle\mathbf{E}_{L}dV+\intop_{V}\thinspace_{0}^{t}\mathbf{S}\colon\delta\triangle\mathbf{E}_{NL}dV=^{t'}\delta\mathbf{R}-\intop_{V}\thinspace_{0}^{t}\mathbf{S}:\delta\triangle\mathbf{E}_{L}dV
\end{align}
$$


Equation $\eqref{eq:ch5_nonlinear_total_lag_gov7}$ can be discreted to finite element formulation

$$
\delta\mathbf{U}^{T}(_{0}^{t}\mathbf{K}_{L}+{}_{0}^{t}\mathbf{K}_{NL})\triangle\mathbf{U}=\delta\mathbf{U}^{T}\thinspace_{0}^{t'}\mathbf{F}-\delta\mathbf{\mathbf{U}}^{T}\thinspace_{0}^{t'}\mathbf{Q}
$$

where $_{0}^{t}\mathbf{K}_{L}$, $_{0}^{t}\mathbf{K}_{NL}$, $_{0}^{t'}\mathbf{F}$, $_{0}^{t}\mathbf{Q}$ are the initial material stiffness matrix, initial geometric stiffness (stress) matrix, external force vector, and internal force vector, respectively. The recursive algorithm to calculate the deformation status at time t' from time t is given:

Step 1: i = 0

$$
\quad\quad_{0}^{t'}\mathbf{K}^{(0)}=_{0}^{t}\mathbf{K}_{L}+_{0}^{t}\mathbf{K}_{NL}
$$

$$
\quad\quad_{0}^{t'}\mathbf{Q}^{(0)}=_{0}^{t}\mathbf{Q}
$$

$$
\quad\quad^{t'}\mathbf{U}^{(0)}=^{t}\mathbf{U}
$$

Step 2: 

$$
\quad\quad_{0}^{t'}\mathbf{K}^{(i)}\triangle\mathbf{U}^{(i)}=_{0}^{t'}\mathbf{F}-_{0}^{t'}\mathbf{Q}^{(i-1)}
$$

Step 3:

$$
\quad\quad^{t'}\mathbf{U}^{(i)}=^{t'}\mathbf{U}^{(i-1)}+\triangle\mathbf{U}^{(i)}
$$


## Formulation of updated lagrange algorithm
In addition to the total Lagrange algorithm, the updated Lagrange algorithm is also widely applied in the nonlinear structural model computation. The principle virtual work equation at time t' uses the current domain at time t as reference domain. 

$$
\begin{align}
\label{eq:ch5_nonlinear_updated_lag_gov1}
\intop_{V}\thinspace_{t}^{t'}\mathbf{S}:\delta_{t}^{t'}\mathbf{E}dV=^{t'}\delta\mathbf{R}
\end{align}
$$

$$
\begin{align}
\label{eq:ch5_nonlinear_updated_lag_gov2}
^{t'}\delta\mathbf{R}=\intop_{S_{t}}\thinspace_{t}^{t'}\mathbf{t}\cdot\delta dS+\intop_{V}\thinspace_{t}^{t'}\mathbf{b}\cdot\delta\mathbf{u}dV
\end{align}
$$

where

$$
_{t}^{t'}\mathbf{t}=\dfrac{d^{t'}s}{d^{t}s}\thinspace^{t'}\mathbf{t}
$$

$$
_{t}^{t'}\mathbf{b}=\dfrac{d^{t'}v}{d^{t}v}\thinspace^{t'}\mathbf{b}
$$

The tensors $_{t}^{t'}\mathbf{S}$, $_{t}^{t'}\mathbf{E}$ and vectors $_{t}^{t'}\mathbf{t}$, $_{t}^{t'}\mathbf{b}$ are using the current time domain t as the reference domain. Therefore, the Green-Lagrange strain does not contain the initial displacement (the displacement at the time t) $^{t}\mathbf{u}$;

$$
\begin{align}
\label{eq:ch5_nonlinear_updated_lag_gov3}
_{t}^{t'}\mathbf{E}=\triangle_{t}\mathbf{E}_{L}+\triangle_{t}\mathbf{E}_{NL}
\end{align}
$$

where

$$ 
\begin{align}
\label{eq:ch5_nonlinear_updated_lag_gov4}
\triangle_{t}\mathbf{E}_{L}=\dfrac{1}{2}\{\dfrac{\partial\triangle\mathbf{u}}{\partial^{t}x}+(\dfrac{\partial\triangle\mathbf{u}}{\partial^{t}x})^{T}\}
\end{align}
$$

$$
\begin{align}
\label{eq:ch5_nonlinear_updated_lag_gov5}
\triangle_{t}\mathbf{E}_{NL}=\dfrac{1}{2}(\dfrac{\partial\triangle\mathbf{u}}{\partial^{t}x})^{T}\cdot\dfrac{\partial\triangle\mathbf{u}}{\partial^{t}x}
\end{align}
$$

Similarly, 

$$
_{t}^{t'}\mathbf{S}=_{t}^{t}\mathbf{S}+\triangle_{t}\mathbf{S}
$$

Substituting equations $\eqref{eq:ch5_nonlinear_updated_lag_gov3}$ and $\eqref{eq:ch5_nonlinear_updated_lag_gov2}$ into governing equations $\eqref{eq:ch5_nonlinear_updated_lag_gov1}$, we have 

$$
\intop_{^{t}v}\triangle_{t}\mathbf{S}:(\delta\triangle_{t}\mathbf{E}_{L}+\delta\triangle_{t}\mathbf{E}_{NL})d^{t}v+\intop_{V}\thinspace_{t}^{t}\mathbf{S}\colon\delta\triangle_{t}\mathbf{E}_{NL}d^{t}v=^{t'}\delta\mathbf{R}-\intop_{^{t}v}\thinspace_{t}^{t}\mathbf{S}:\delta\triangle_{t}\mathbf{E}_{L}d^{t}v
$$

where $\triangle_{t}\mathbf{S}$ is assumed to be 

$$
\triangle_{t}\mathbf{S}=_{t}^{t}\mathbf{C}\colon\triangle_{t}\mathbf{E}_{L}
$$

then we have 

$$
\begin{align}
\label{eq:ch5_nonlinear_updated_lag_gov7}
\intop_{v}(\mathbf{C}\colon\triangle t\mathbf{E}_{L}):\delta\triangle_{t}\mathbf{E}_{L}dV+\intop_{V}\thinspace_{t}^{t}\mathbf{S}\colon\delta\triangle_{t}\mathbf{E}_{NL}dV=^{t'}\delta\mathbf{R}-\intop_{V}\thinspace_{t}^{t}\mathbf{S}:\delta\triangle_{t}\mathbf{E}_{L}dV
\end{align}
$$

Equation $\eqref{eq:ch5_nonlinear_updated_lag_gov7}$ can be discreted to finite element formulation

$$
\delta\mathbf{U}^{T}(_{t}^{t}\mathbf{K}_{L}+{}_{t}^{t}\mathbf{K}_{NL})\triangle\mathbf{U}=\delta\mathbf{U}^{T}\thinspace_{t}^{t'}\mathbf{F}-\delta\mathbf{\mathbf{U}}^{T}\thinspace_{t}^{t'}\mathbf{Q}
$$

where $_{t}^{t}\mathbf{K}_{L}$, $_{t}^{t}\mathbf{K}_{NL}$, $_{t}^{t'}\mathbf{F}$, $_{t}^{t}\mathbf{Q}$ are the initial material stiffness matrix, initial geometric stiffness (stress) matrix, external force vector, and internal force vector, respectively. The recursive algorithm to calculate the deformation status at time t' from time t is given:

Step 1: i = 0

$$
\quad\quad_{t}^{t'}\mathbf{K}^{(i)}=_{t}^{t}\mathbf{K}_{L}+_{t}^{t}\mathbf{K}_{NL}
$$

$$
\quad\quad_{t}^{t'}\mathbf{Q}^{(i)}=_{t}^{t}\mathbf{Q}
$$

$$
\quad\quad^{t'}\mathbf{U}^{(i)}=^{t}\mathbf{U}
$$

Step 2: 

$$
\quad\quad_{0}^{t'}\mathbf{K}^{(i)}\triangle\mathbf{U}^{(i)}=_{0}^{t'}\mathbf{F}-_{0}^{t'}\mathbf{Q}^{(i-1)}
$$

Step 3:

$$
\quad\quad^{t'}\mathbf{U}^{(i)}=^{t'}\mathbf{U}^{(i-1)}+\triangle\mathbf{U}^{(i)}
$$

<!-- ## Constraints and lagrange multiplier method -->










