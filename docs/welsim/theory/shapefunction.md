# Shape functions
This chapter describes the shape functions for the finite elements. 

## Understanding shape function notations
The notations used in shape functions are listed below:

* u: displacement in x (or s) direction.
* v: displacement in y (or t) direction.
* w: displacement in z (or s) direction.
* $\theta_{x}$: Rotation about x direction.
* $\theta_{y}$: Rotation about y direction.
* $\theta_{z}$: Rotation about z direction.
* $A_{x}$: x-component of vector magnetic potential.
* $A_{y}$: y-component of vector magnetic potential.
* $A_{z}$: z-component of vector magnetic potential.
* C: Concentration. 
* P: Pressure.
* T: Temperature.
* V: Electric potential or source current.
* For the shell element, the u and v represent in-plane motions, and w denotes the out-of-plane motion.

## 3D shell elements
This section describes the shape functions for 3D shell elements that are applied in the WELSIM application.

### 3-Node triangle
The shape functions for the 3-node triangular shell elements are:

$$
u=u_{0}L_{0}+u_{1}L_{1}+u_{2}L_{2}
$$

$$
v=v_{0}L_{0}+v_{1}L_{1}+v_{2}L_{2}
$$

$$
w=w_{0}L_{0}+w_{1}L_{1}+w_{2}L_{2}
$$

$$
A_{x}=A_{x0}L_{0}+A_{x1}L_{1}+A_{x2}L_{2}
$$

$$
A_{y}=A_{y0}L_{0}+A_{y1}L_{1}+A_{y2}L_{2}
$$

$$
A_{z}=A_{z0}L_{0}+A_{z1}L_{1}+A_{z2}L_{2}
$$

$$
T=T_{0}L_{0}+T_{1}L_{1}+T_{2}L_{2}
$$

$$
V=V_{0}L_{0}+V_{1}L_{1}+V_{2}L_{2}
$$


### 6-Node triangle
The shape functions for the 6-node triangular shell elements are:

$$
u=u_{0}(2L_{0}-1)L_{0}+u_{1}(2L_{1}-1)L_{1}+u_{2}(2L_{2}-1)L_{2}+u_{3}(4L_{0}L_{1})+u_{4}(4L_{1}L_{2})+u_{5}(4L_{2}L_{0})
$$

$$
v=v_{0}(2L_{0}-1)L_{0}+v_{1}(2L_{1}-1)L_{1}+v_{2}(2L_{2}-1)L_{2}+v_{3}(4L_{0}L_{1})+v_{4}(4L_{1}L_{2})+v_{5}(4L_{2}L_{0})
$$

$$
w=w_{0}(2L_{0}-1)L_{0}+w_{1}(2L_{1}-1)L_{1}+w_{2}(2L_{2}-1)L_{2}+w_{3}(4L_{0}L_{1})+w_{4}(4L_{1}L_{2})+w_{5}(4L_{2}L_{0})
$$


## 3D solid elements
This section describes the shape functions for the 3D solid elements that are applied in the WELSIM application.

### 4-Node tetrahedra
The 4-node tetrahedra is also called liner tetrahedra element. The shape functions are:

$$
u=u_{0}L_{0}+u_{1}L_{1}+u_{2}L_{2}+u_{3}L_{3}
$$

$$
v=v_{0}L_{0}+v_{1}L_{1}+v_{2}L_{2}+v_{3}L_{3}
$$

$$
w=w_{0}L_{0}+w_{1}L_{1}+w_{2}L_{2}+w_{3}L_{3}
$$

### 10-Node tetrahedra
The 10-node tetrahedra is also called bilinear tetrahedra element. The shape functions are:

$$
u=u_{0}(2L_{0}-1)L_{0}+u_{1}(2L_{1}-1)L_{1}+u_{2}(2L_{2}-1)L_{2}+u_{3}(2L_{3}-1)L_{3}+4u_{4}L_{0}L_{1}+u_{5}L_{1}L_{2}+u_{6}L_{0}L_{2}+u_{7}L_{0}L_{3}+u_{8}L_{1}L_{3}+u_{9}L_{2}L_{3}
$$

$$
v=...\text{(analogous to u)}
$$

$$
w=...\text{(analogous to u)}
$$




