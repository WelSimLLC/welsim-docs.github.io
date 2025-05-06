# Structures with transient analysis
The time integration method applied in structural transient analysis is described in the section. 

## Formulation of implicit method
In the direct time integration, the equation of motion can be expressed as follows

$$
\begin{align}
\label{eq:ch5_time_solver_imp1}
\mathbf{M}(t+\triangle t)\ddot{\mathbf{U}}(t+\triangle t)+\mathbf{C}(t+\triangle t)\dot{\mathbf{U}}(t+\triangle t)+\mathbf{Q}(t+\triangle t)=\mathbf{F}(t+\triangle t)
\end{align} 
$$

where $\mathbf{M}$ and $\mathbf{C}$ is the mass matrix and damping matrix, respectively. The $\mathbf{Q}$ and $\mathbf{F}$ are the internal force vector, and external force vector, respectively. Note that, the mass density is consistent in the structural analysis, thus the mass matrix keep constants regardless of the deformation in non-linearity.

In the Newmark-$\beta$ method, the displacement, velocity, and acceleration at the each time incremental $\triangle t$ are

$$
\begin{align}
\label{eq:ch5_time_solver_imp2}
\dot{\mathbf{U}}(t+\triangle t)=\dfrac{\gamma}{\beta\triangle t}\triangle\mathbf{U}(t+\triangle t)-\dfrac{\gamma-\beta}{\beta}\dot{\mathbf{U}}(t)-\triangle t\dfrac{\gamma-2\beta}{2\beta}\ddot{\mathbf{U}}(t)
\end{align} 
$$

$$
\begin{align}
\label{eq:ch5_time_solver_imp3}
\ddot{\mathbf{U}}(t+\triangle t)=\dfrac{\text{1}}{\beta\triangle t^{2}}\triangle\mathbf{U}(t+\triangle t)-\dfrac{1}{\beta\triangle t}\dot{\mathbf{U}}(t)-\dfrac{1-2\beta}{2\beta}\ddot{\mathbf{U}}(t)
\end{align} 
$$

where $\gamma$ and $\beta$ are time solver parameters. Given the specific values, the numerical algorithm becomes linear acceleration method, or the trapezoid rule.

$$
\gamma=\frac{1}{2},\thinspace\beta=\frac{1}{6},\quad\mathrm{Linear}\thinspace\mathrm{acceleration\thinspace\mathrm{method}}
$$


$$
\gamma=\frac{1}{2},\thinspace\beta=\frac{1}{4},\quad\mathrm{Trapezoid}\thinspace\mathrm{rule}
$$

substituting equations $\eqref{eq:ch5_time_solver_imp2}$ and $\eqref{eq:ch5_time_solver_imp3}$ into equation $\eqref{eq:ch5_time_solver_imp1}$, the following equation can be acquired

$$
\begin{array}{ccc}
(\dfrac{1}{\beta\triangle t^{2}}\mathbf{M}+\dfrac{\gamma}{\beta\triangle t}\mathbf{C}+\mathbf{K})\triangle\mathbf{U}(t+\triangle t) & = & \mathbf{F}(t+\triangle t)-\mathbf{Q}(t+\triangle t)\\
 & + & \dfrac{1}{\beta\triangle t}\mathbf{\mathbf{M}\dot{\mathbf{U}}}(t)+\dfrac{1-2\beta}{2\beta}\mathbf{M}\ddot{\mathbf{U}}(t)+\dfrac{\gamma-\beta}{\beta}\mathbf{C}\dot{\mathbf{U}}(t)\\
 & + & \triangle t\dfrac{\gamma-2\beta}{2\beta}\mathbf{C}\ddot{\mathbf{U}}(t)
\end{array}
$$

when we use linear stiffness matrix $\mathbf{K}_{L}$ for a linear problem, the equation above becomes $\mathbf{Q}(t+\triangle t)=\mathbf{K}_{L}\mathbf{U}(t+\triangle t)$. Substituting this term into the equation (), we have

$$
\begin{array}{ccc}
\{\mathbf{M}(-\dfrac{1}{(\triangle t)^{2}\beta}\mathbf{U}(t)-\dfrac{1}{(\triangle t)\beta}\dot{\mathbf{U}}(t)-\dfrac{1-2\beta}{2\beta}\ddot{\mathbf{U}}(t))\\
+\mathbf{C}(-\dfrac{\gamma}{(\triangle t)\beta}\mathbf{U}(t)+(1-\dfrac{\gamma}{\beta})\dot{\mathbf{U}}(t)+\triangle t\dfrac{2\beta-\gamma}{2\beta}\ddot{\mathbf{U}}(t))\}\\
+\{\dfrac{1}{(\triangle t)^{2}\beta}\mathbf{M}+\dfrac{\gamma}{(\triangle t)\beta}\mathbf{C}+\mathbf{K}_{L}\}\mathbf{U}(t+\triangle t) & = & \mathbf{F}(t+\triangle t)
\end{array}
$$

In the analysis practice, the acceleration and velocity boundary conditions are imposed. Then the displacement of the following equation can be derived from equation $\eqref{eq:ch5_time_solver_imp1}$. 

$$
u_{is}(t+\triangle t)=u_{is}(t)+\triangle t\dot{u}_{is}(t)+(\triangle t)^{2}(\frac{1}{2}-\beta)\ddot{u}_{is}(t+\triangle t)
$$

where $u_{is}(t+\triangle t)$ is the nodal displacement at time $t+\triangle t$, $\dot{u}{}_{is}(t+\triangle t)$ is the nodal velocity,  $\ddot{u}{}_{is}(t+\triangle t)$ is the nodal acceleration, i is the degree of freedom per node, s is the node number.

The mass and damping terms are treated as follows

1. The lumped mass matrix is used at most of cases in this program. 
2. The damping matrix is treated using Rayleigh algorithm $\mathbf{C}=R_{m}\mathbf{M}+R_{k}\mathbf{K}_{L}$.


## Formulation of explicit method
This section discuss how the explicit time solver is formulation to solve the governing equation below

$$
\begin{align}
\label{eq:ch5_time_solver_exp1}
\mathbf{M}\ddot{\mathbf{U}}(t)+\mathbf{C}\text{(t)}\dot{\mathbf{U}(t)+\mathbf{Q}(t)=\mathbf{F}(t)}
\end{align} 
$$

where the displacement at the time $t+\triangle t$ and $t-\triangle t$ can be expressed by the Taylor's expansion at time t with the second order truncation.

$$
\begin{align}
\label{eq:ch5_time_solver_exp2}
\mathbf{U}(t+\triangle t)=\mathbf{U}(t)+\dot{\mathbf{U}}(t)(\triangle t)+\dfrac{1}{2!}\ddot{\mathbf{U}}(t)(\triangle t)^{2}
\end{align} 
$$

$$
\begin{align}
\label{eq:ch5_time_solver_exp3}
\mathbf{U}(t-\triangle t)=\mathbf{U}(t)-\dot{\mathbf{U}}(t)(\triangle t)+\dfrac{1}{2!}\ddot{\mathbf{U}}(t)(\triangle t)^{2}
\end{align} 
$$

Differentiating equations $\eqref{eq:ch5_time_solver_exp2}$ and $\eqref{eq:ch5_time_solver_exp3}$, we have

$$
\begin{align}
\label{eq:ch5_time_solver_exp4}
\dot{\mathbf{U}}(t)=\dfrac{1}{2\triangle t}(\mathbf{U}(t+\triangle t)-\mathbf{U}(t-\triangle t))
\end{align}
$$

$$
\begin{align}
\label{eq:ch5_time_solver_exp5}
\ddot{\mathbf{U}}(t)=\dfrac{1}{(\triangle t)^{2}}(\mathbf{U}(t+\triangle t)-2\mathbf{U}(t)+\mathbf{U}(t-\triangle t))
\end{align}
$$

Substituting equations $\eqref{eq:ch5_time_solver_exp4}$ and $\eqref{eq:ch5_time_solver_exp5}$ into $\eqref{eq:ch5_time_solver_exp1}$, we have 

$$
(\dfrac{1}{\triangle t^{2}}\mathbf{M}+\dfrac{1}{2\triangle t}\mathbf{C})\mathbf{U}(t+\triangle t)=\mathbf{F}(t)-\mathbf{Q}(t)-\dfrac{1}{\triangle t^{2}}\mathbf{M}[2\mathbf{U}(t)-\mathbf{U}(t-\triangle t)]-\dfrac{1}{2\triangle t}\mathbf{CU}(t-\triangle t)
$$

For the linear problem, we also have condition $\mathbf{Q}(t)=\mathbf{K}_{L}\mathbf{U}(t)$ for equation. Finally, the displacement at $t+\triangle t$ is:

$$
\mathbf{U}(t+\triangle t)=\dfrac{1}{(\frac{1}{\triangle t^{2}}\mathbf{M}+\frac{1}{2\triangle t}\mathbf{C})}\{\mathbf{F}(t)-\mathbf{Q}(t)-\dfrac{1}{\triangle t^{2}}\mathbf{M}[2\mathbf{U}(t)-\mathbf{U}(t-\triangle t)]-\dfrac{1}{2\triangle t}\mathbf{C}(t-\triangle t)\mathbf{U}\}
$$











