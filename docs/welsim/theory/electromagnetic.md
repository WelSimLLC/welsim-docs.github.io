# Electromagnetic analysis
This section discuss the electromagnetic theories that are applied in the WELSIM application.

## Electromagnetic field fundamentals
The electromagnetic fields are governed by the well-known Maxwell's equations $\eqref{eq:ch4_theory_maxwell1}$-$\eqref{eq:ch4_theory_maxwell4}$[^1][^2].

$$
\begin{align}
\label{eq:ch4_theory_maxwell1}
\nabla\times\mathbf{H}=\mathbf{J}+\dfrac{\partial\mathbf{D}}{\partial t}=\mathbf{J}_{S}+\mathbf{J}_{e}+\mathbf{J}_{V}+\dfrac{\partial\mathbf{D}}{\partial t}
\end{align} 
$$

$$
\begin{align}
\label{eq:ch4_theory_maxwell2}
\nabla\times\mathbf{E}=-\dfrac{\partial\mathbf{B}}{\partial t}
\end{align} 
$$

$$
\begin{align}
\label{eq:ch4_theory_maxwell3}
\nabla\cdot\mathbf{B}=0
\end{align} 
$$

$$
\begin{align}
\label{eq:ch4_theory_maxwell4}
\nabla\cdot\mathbf{D}=\rho
\end{align} 
$$

where $\mathbf{H}$ is the magnetic field intensity vector, $\mathbf{J}$ is total current density vector, $\mathbf{J}_{s}$ is the applied source current density vector, $\mathbf{J}_{e}$ is the induced eddy current density vector, and $\mathbf{J}_{VS}$ is the velocity current density vector, $\mathbf{D}$ is the electric flux density vector (this term is also called electric displacement), $\mathbf{E}$ is the electric field intensity vector, $\mathbf{B}$ is the magnetic flux density vector, and $\rho$ is the electric charge density. 

The above field governing equations contian the constitutive relations:

$$
\mathbf{D}=\epsilon\mathbf{E}+\mathbf{P}
$$

and 

$$
\mathbf{B}=\mu\mathbf{H}
$$

where $\mathbf{P}$ is the polarization density, and $\mathbf{M}$ is t he magnetization. In many materials the polarization density can be approximated as a scalar multiple of the electric field.  $\mu$ is the magnetic permeability matrix. For example, if the magnetic permeability is a function of temperature,

$$
\mu=\mu_{0}\left[\begin{array}{ccc}
\mu_{rx} & 0 & 0\\
0 & \mu_{ry} & 0\\
0 & 0 & \mu_{rz}
\end{array}\right]
$$

For the permanent magnets, the constitutive relation of magnetic field becomes

$$
\mathbf{B}=\mu\mathbf{H}+\mu_{0}\mathbf{M}_{0}
$$

where $\mathbf{M}_{0}$ is the remanet intrinsic magnetization vector.

Similarly, the consitutive relations for the related electric fields are:

$$
\mathbf{J}=\sigma[\mathbf{E}+\mathbf{v}\times\mathbf{B}]
$$

$$
\sigma=\left[\begin{array}{ccc}
\sigma_{xx} & 0 & 0\\
0 & \sigma_{yy} & 0\\
0 & 0 & \sigma_{zz}
\end{array}\right]
$$

$$
\epsilon=\left[\begin{array}{ccc}
\epsilon_{xx} & 0 & 0\\
0 & \epsilon_{yy} & 0\\
0 & 0 & \epsilon_{zz}
\end{array}\right]
$$

where $\sigma$ is the electrical conductivity matrix, $\epsilon$ is the permittivity matrix, and $v$ is the velocity vector.

## Electrostatics
The WELSIM application introduces electric scalar potential to solve the electrostatic problems. When the time-derivetive of magnetic flux density is neglected from the full Maxwell's equations. The governing equations are reduced to 

$$
\begin{align}
\label{eq:ch4_theory_govern_eqn_electrostatic}
\nabla\times\mathbf{H}=\mathbf{J}+\dfrac{\partial\mathbf{D}}{\partial t}
\end{align} 
$$

$$
\nabla\times\mathbf{E}=\mathbf{0}
$$

$$
\nabla\cdot\mathbf{B}=0
$$

$$
\nabla\cdot\mathbf{D}=\rho
$$

Since the electric field $\mathbf{E}$ is irrotational and can be expressed as the function of electric scalar potential

$$
\mathbf{E}=-\nabla \varphi 
$$

where $\varphi$ is the electric scalar potential and has units of Volts in the SI system. Inserting this definition into the Gauss's Law gives:

$$
-\nabla \cdot \epsilon\nabla\varphi = \rho - \nabla \cdot \mathbf{P} 
$$

which is Poisson's equation for the electric potential , where we have assumed a linear constitutive relation between $\mathbf{D}$ and $\mathbf{E}$ of the form $\mathbf{D}=\epsilon\mathbf{E}+\mathbf{P}$.


### Boundary Conditions
For an electric material interface, the continuious conditions for $\mathbf{E}$, $\mathbf{D}$, and $\mathbf{J}$ are

$$
E_{t1}-E_{t2}=0
$$

$$
J_{1n}+\dfrac{\partial D_{1n}}{\partial t}=J_{2n}+\dfrac{\partial D_{2n}}{\partial t}
$$

$$
D_{1n}-D_{2n}=\rho_{s}
$$

where $E_{t}$ is the tangential components of $\mathbf{E}$, $J_{n}$ is the normal components of $\mathbf{J}$, $D_{n}$ is the normal components of $\mathbf{D}$, and $\rho_{s}$ is the surface charge density.

Since the solutons to the governing equation are non-unique, we must impose a Dirichlet boundary condition at least at one node in the domain to get the physical solution. The Dirichlet condition could be a fixed piecewise voltage value on certain nodes. In addition, the normal derivative boundary condition $\hat{n}\cdot\mathbf{D}$ such as surface charge density can be imposed on the boundary.

### Matrix Forms

The electric scalar potential algorithm is applied in the WELSIM application for solving electrostatic problems. The governing equations are reduced to the following:

$$
-\nabla\cdot\left(\epsilon\nabla V\right)=\rho
$$

The matrix equation for an electrostatic analysis is derived from Equation $\eqref{eq:ch4_theory_govern_eqn_electrostatic}$:

$$
\left[K^{VS}\right]\left\{ V_{e}\right\} =\left\{ L_{e}\right\} 
$$

where 

$$
\left[K^{VS}\right]=\intop_{V}\left(\nabla\left\{ N\right\} ^{T}\right)^{T}\epsilon\left(\nabla\left\{ N\right\} ^{T}\right)dV
$$

$$
\left\{ L_{e}\right\} =\left\{ L_{e}^{n}\right\} +\left\{ L_{e}^{c}\right\} +\left\{ L_{e}^{SC}\right\} 
$$

$$
\left\{ L_{e}^{c}\right\} =\int_{V}\rho\left\{ N\right\} ^{T}dV
$$

$$
\left\{ L_{e}^{sc}\right\} =\int_{V}\rho_{s}\left\{ N\right\} ^{T}dV
$$


### Vector magnetic potential
The WELSIM application applies the vector magnetic potential method for the magentostatic analysis. Considering the neglected electric displacement currents, the full Maxwell's equations can be reduced to 

$$
\nabla\times\mathbf{H}=\mathbf{J}
$$

$$
\nabla\times\mathbf{E}=-\dfrac{\partial\mathbf{B}}{\partial t}
$$

$$
\nabla\cdot\mathbf{B}=0
$$

A numerical solution can be achieved by introducing potentials to the governing equations. The proposed magnetic vector potential $\mathbf{A}$ and electric scalar potential $V$ have the following characteristics:

$$
\mathbf{B}=\nabla\times\mathbf{A}
$$

$$
\mathbf{E}=-\dfrac{\partial\mathbf{A}}{\partial t}-\nabla V
$$

In addition, the Coulomb gauge condition is introduced to ensure the uniqueness of the vector potential, as shown in the following equations.

$$
\nabla\times\mathbf{v}\nabla\times\mathbf{A}-\nabla v_{e}\nabla\cdot\mathbf{A}+\sigma\left\{ \dfrac{\partial\mathbf{A}}{\partial t}\right\} +\sigma\nabla V-\mathbf{v}\times\sigma\nabla\times\mathbf{A}=\mathbf{0}
$$

$$
\nabla\cdot\left(\sigma\left\{ \dfrac{\partial\mathbf{A}}{\partial t}\right\} -\sigma\nabla V+\mathbf{v}\times\sigma\nabla\times\mathbf{A}\right)=\mathbf{0}
$$

$$
\nabla\times\mathbf{v}\nabla\times\mathbf{A}-\nabla v_{e}\nabla\cdot\mathbf{A}=\mathbf{J}_s+\nabla\times\dfrac{1}{\mathbf{v}_{0}}\mathbf{v}\mathbf{M}_{0}
$$

where matrix invarient $v_{e}$ is $v_{e}=\frac{1}{3}\mathrm{tr}(v)=\frac{1}{3}(v_{11}+v_{22}+v_{33})$.


### Edge-element magnetic vector potential
Due to the limitation of node-based vector magnetic potential algorithm[^2], WELSIM application uses the edge-based finite element for the magnetic vector potential algorithm.

The governing equation for the edge finite element method is given below.

$$
\nabla\times\mathbf{v}\nabla\times\mathbf{A}+\sigma\left\{ \dfrac{\partial\mathbf{A}}{\partial t}+\nabla V\right\} +\epsilon\left(\left\{ \dfrac{\partial^{2}\mathbf{A}}{\partial t^{2}}\right\} +\nabla\left\{ \dfrac{\partial V}{\partial t}\right\} \right)=\mathbf{0}
$$

$$
\nabla\cdot\left(\sigma\left(\left\{ \dfrac{\partial\mathbf{A}}{\partial t}\right\} +\nabla V\right)+\epsilon\left(\left\{ \dfrac{\partial^{2}\mathbf{A}}{\partial t^{2}}\right\} +\nabla\left\{ \dfrac{\partial V}{\partial t}\right\} \right)\right)=\mathbf{0}
$$

$$
\nabla\times\mathbf{v}\nabla\times\mathbf{A}=\mathbf{J}_{s}+\nabla\times\dfrac{1}{\mathbf{v}_{0}}\mathbf{v}\mathbf{M}_{0}
$$

The uniqueness of these equations is ensured by the tree gauging procedure, which sets the edge-flux degrees of freedom related to the spanning tree of the finite element mesh to zero. 





<!-- ## Derivation of Electromagnetic Matrices
## Electromagnetic Field Evaluations
## Stranded Coil Analyses
## Inductance, Flux and Energy Computation
## Electromagnetic Particle Tracing
## Capacitance Computation
## Conductance Computation
## Hall Effect -->

[^1]: John D. Jackson, Classical Electrodynamics, 3rd edition, Wiley.
[^2]: Jian-Ming Jin, The Finite Element Method in Electromagnetics, 2nd edition, Wiley-IEEE Press.





