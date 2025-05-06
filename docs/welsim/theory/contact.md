# Structures with contact
As contact occurs among multiple bodies, the contact force $\mathbf{t}_{c}$ is transmitted via the contact surface. The principle equation of the virtual work can be rewritten as follows

$$
\begin{align}
\label{eq:ch5_contact_gov1}
\intop_{^{t'}V}\thinspace^{t'}\sigma\colon\delta^{t'}\mathbf{A}_{(L)}d^{t'}v=\intop_{^{t'}S_{t}}\thinspace^{t'}\mathbf{t}\cdot\delta\mathbf{u}d^{t'}s+\intop_{V}\thinspace^{t'}\mathbf{b}\cdot\delta\mathbf{u}d^{t'}v+\intop_{^{t'}S\text{c}}\thinspace^{t'}\mathbf{t}_{c}[\delta\mathbf{u}^{(1)}-\delta\mathbf{u}^{(2)}]
\end{align}
$$

where notation $s_{c}$ represents the contact area, $\mathbf{u}^{(1)}$ and $\mathbf{u}^{(2)}$ denotes the displacement of the contact object 1 and 2, respectively. 

In the contact analysis, the surfaces involve contact are paired. One of these surfaces is called the master surface, and another type of surface is target surface. We also assume

* The target nodes do not penetrate the master surface
* When contact occurs, the target nodes become the contact position, the master surface and the target surface mutually transmit the contact force and the frictional force through the points of contact.

The governing equations with contact term can be reduced to the finite element formation

$$
\intop_{^{t'}S_{c}}\thinspace^{t'}\mathbf{t}_{c}[\delta\mathbf{u}^{(1)}-\delta\mathbf{u}^{(2)}]\approx\delta\mathbf{UK}_{C}\triangle\mathbf{U}+\delta\mathbf{UF}_{C}
$$

where $\mathbf{K}_{c}$ and $\mathbf{F}_{c}$ are contact rigid matrix, and the contact forces, respectively. 

Remember that we introduced total Lagrange and update Lagrange methods, those formulation can be extended with the consideration of contact factors. The total Lagrange and updated Lagrange formulation with contact terms are given below

$$
\delta\mathbf{U}^{T}(_{0}^{t}\mathbf{K}_{L}+_{0}^{t}\mathbf{K}_{NL}+\mathbf{K}_{c})\triangle\mathbf{U}=\delta\mathbf{U}^{T}\thinspace_{0}^{t'}\mathbf{F}-\delta\mathbf{U}^{T}\thinspace_{0}^{t}\mathbf{Q}+\delta\mathbf{U}^{T}\mathbf{F}_{c}
$$

$$
\delta\mathbf{U}^{T}(_{t}^{t}\mathbf{K}_{L}+_{t}^{t}\mathbf{K}_{NL}+\mathbf{K}_{c})\triangle\mathbf{U}=\delta\mathbf{U}^{T}\thinspace_{t}^{t'}\mathbf{F}-\delta\mathbf{U}^{T}\thinspace_{t}^{t}\mathbf{Q}+\delta\mathbf{U}^{T}\mathbf{F}_{c}
$$





