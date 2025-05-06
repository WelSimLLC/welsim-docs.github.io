# Structures
This section describes the mathematical and numerical theories used in this finite element analysis program. In the stress analysis of solids, the infinitesimal deformation linear elasticity static analysis method is discussed by first. The geometric nonlinearity and elastoplasticity are introduced to describe the finite deformation in solids.

## Infinitesimal deformation linear elasticity static analysis

The infinitesimal deformation theory is the essential formulation for the linear elasticity, which assumes the stress-strain constitutive relation is linear. The equilibrium equation of solid mechanics, boundary conditions are given by the following equation.

$$
\begin{align}
\label{eq:ch5_equilibrium_eqn1}
\nabla\cdot\mathbf{\sigma}+\mathbf{b}=0\quad\mathrm{in}V
\end{align} 
$$

$$
\begin{align}
\label{eq:ch5_equilibrium_eqn2}
\sigma\cdot\mathbf{n}=\mathbf{t}\quad\mathrm{on}\thinspace S_{t}
\end{align} 
$$

$$
\begin{align}
\label{eq:ch5_equilibrium_eqn3}
\mathbf{u}=\mathbf{u}_{0}\quad\mathrm{on}\thinspace S_{u}
\end{align} 
$$

where $\sigma$ is the stress, $\mathbf{t}$ is the surface force, $\mathbf{b}$ is the body force, and S_{t} expresses the dynamic boundary and the $S_{u}$ expresses the geometric boundary. The strain and displacement relation in the infinitesimal deformation is given

$$
\epsilon=\nabla_{s}\mathbf{u}
$$

The stress and strain constitutive relation in the linear elastic body is given

$$
\sigma=\mathbf{C}\colon\epsilon
$$

where $\mathbf{C}$ is the fourth order elasticity tensor.

## Principle of virtual work
The principle of the virtual work regarding the equilibrium equations $\eqref{eq:ch5_equilibrium_eqn1}$, $\eqref{eq:ch5_equilibrium_eqn2}$, and $\eqref{eq:ch5_equilibrium_eqn3}$ is 

$$
\begin{align}
\label{eq:ch5_equilibrium_virtual1}
\int_{V}\sigma\colon\delta\epsilon dV=\int_{S_{t}}\mathbf{t}\cdot\delta\mathbf{u}dS+\int_{V}\mathbf{b}\cdot\delta\mathbf{u}dV
\end{align} 
$$

$$
\delta\mathbf{u}=0\quad\mathrm{on}\quad S_{u}
$$

which can be rewritten into 

$$
\begin{align}
\label{eq:ch5_equilibrium_virtual2}
\int_{V}(\mathbf{C}\colon\epsilon)\colon\delta\epsilon dV=\int_{S_{t}}\mathbf{t}\cdot\delta\mathbf{u}dS+\int_{V}\mathbf{b}\cdot\delta\mathbf{u}dV
\end{align} 
$$

where $\epsilon$ is the strain tensor, $\sigma$ is the stress tensor, and $\mathbf{C}$ is the fourth order elasticity tensor. The strain tensor $\epsilon$ and stress tensor $\sigma$ can be rewritten into vector forms $\hat{\epsilon}$ and $\hat{\sigma}$, respectively. Then we have

$$
\begin{align}
\label{eq:ch4_theory_stress_strain_relation}
\hat{\sigma}=\mathbf{D}\hat{\epsilon}
\end{align} 
$$

where $\mathbf{D}$ is the elasticity matrix. Given the strain and stress in the vector form, we can rewrite the governing equation ([eq:ch5_equilibrium_virtual1]) into 

$$
\begin{align}
\label{eq:ch5_equilibrium_virtual3}
\int_{V}\hat{\epsilon}^{T}\mathbf{D}\delta\hat{\epsilon}dV=\int_{S_{t}}\delta\mathbf{u^{T}}\mathbf{t}dS+\int_{V}\delta\mathbf{u}^{T}\mathbf{b}dV
\end{align} 
$$

Equation ([eq:ch5_equilibrium_virtual3]) is the principles of the virtual work applied in this software program.


## Finite element formulation
The principle governing equation ([eq:ch5_equilibrium_virtual3]) of the virtual work can be discreted for each finite element:

$$
\begin{align}
\label{eq:ch5_equilibrium_fe_form1}
\sum_{e}\int_{V^{e}}\hat{\epsilon}^{T}\mathbf{D}\delta\hat{\epsilon}dV=\sum_{e}\int_{S_{t}^{e}}\delta\mathbf{u}^{T}\mathbf{t}dS+\sum_{e}\int_{V^{e}}\delta\mathbf{u}^{T}\mathbf{b}dV
\end{align} 
$$

where the displacement field is interpolated for each element

$$
\begin{align}
\label{eq:ch5_equilibrium_fe_form2}
\mathbf{u}=\sum_{i=1}^{m}N_{i}\mathbf{u}_{i}=\mathbf{NU}
\end{align} 
$$

Similarly, the strain component can be expressed as 

$$
\begin{align}
\label{eq:ch5_equilibrium_fe_form3}
\hat{\epsilon}=\mathbf{BU}
\end{align} 
$$

Substituting equations $\eqref{eq:ch5_equilibrium_fe_form2}$ and $\eqref{eq:ch5_equilibrium_fe_form3}$ into $\eqref{eq:ch5_equilibrium_fe_form1}$, we have 

$$
\begin{align}
\label{eq:ch5_equilibrium_fe_form4}
\sum_{e}\delta\mathbf{U}^{T}(\int_{V^{e}}\mathbf{B}^{T}\mathbf{DB}dV)\mathbf{U}=\sum_{e}\delta\mathbf{U}^{T}\cdot\int_{S_{t}^{e}}\mathbf{N}^{T}\mathbf{t}dS+\sum_{e}\delta\mathbf{U}^{T}\int_{V^{e}}\mathbf{N}^{T}\mathbf{b}dV
\end{align} 
$$

The equation above can be summarized as 

$$
\begin{align}
\label{eq:ch5_equilibrium_fe_form5}
\delta\mathbf{U}^{T}\mathbf{KU}=\delta\mathbf{U}^{T}\mathbf{F}
\end{align} 
$$

where 

$$
\begin{align}
\label{eq:ch5_equilibrium_fe_form6}
\mathbf{K}=\sum_{e}\int_{V^{e}}\mathbf{B}^{T}\mathbf{DB}dV
\end{align} 
$$

$$
\begin{align}
\label{eq:ch5_equilibrium_fe_form7}
\mathbf{F}=\sum\int_{S_{t}^{e}}\mathbf{N}^{T}\mathbf{t}dS+\int_{V^{e}}\mathbf{N}^{T}\mathbf{b}dV
\end{align} 
$$

The components of the matrix and vectors defined by equations $\eqref{eq:ch5_equilibrium_fe_form6}$ and $\eqref{eq:ch5_equilibrium_fe_form7}$ can be calculated for each finite element. For arbitrary virtual displacement $\delta\mathbf{U}$, equation $\eqref{eq:ch5_equilibrium_fe_form5}$ can be rewritten into

$$
\mathbf{KU=F}
$$



