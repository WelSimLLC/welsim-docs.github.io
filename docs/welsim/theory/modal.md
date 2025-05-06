# Modal analysis 
## Generalized eigenvalue problem
When conducting a free oscillation analysis of the continuum, assuming no damping in the free vibration. The governing eqatuion is 

$$
\begin{align}
\label{eq:ch5_modal_gov}
\mathbf{M}\ddot{\mathbf{u}}+\mathbf{Ku}=0
\end{align} 
$$

where $\mathbf{u}$ is the generated displacement vector, $\mathbf{M}$ is the mass matrix and $\mathbf{K}$ is the stiffness matrix. The solution is assumed to

$$
\begin{align}
\label{eq:ch5_eigenvalue_vector}
\mathbf{u}(t)=(asin\omega t+bcos\omega t)\mathbf{x}
\end{align} 
$$

where $\omega$ is the natural angular frequency, $a$ and $b$ are the arbitrary constants. Herein, the second order differential of equation $\eqref{eq:ch5_eigenvalue_vector}$ is 

$$
\begin{align}
\label{eq:ch5_modal_acceleration}
\ddot{\mathbf{u}}(t)=\omega(asin\omega t-bsin\omega t)\mathbf{x}
\end{align} 
$$

Combining equations $\eqref{eq:ch5_modal_gov}$, $\eqref{eq:ch5_eigenvalue_vector}$, and $\eqref{eq:ch5_modal_acceleration}$, we have

$$
\begin{align}
\label{eq:ch5_modal_gov3}
\mathbf{M}\ddot{\mathbf{u}}+\mathbf{Ku}=(a\mathrm{sin}\omega t+b\mathrm{cos}\omega t)(-\omega^{2}\mathbf{M}+\mathbf{K}\mathbf{x})=(-\lambda\mathbf{M}\mathbf{x}+\mathbf{K}\mathbf{x})=0
\end{align} 
$$

which simplifies

$$
\mathbf{K}\mathbf{x}=\lambda\mathbf{M}\mathbf{x}
$$

which indicates that if factor $\lambda(=\omega^{2})$ and vector $\mathbf{x}$ satisfies equation $\eqref{eq:ch5_modal_gov3}$, function $\mathbf{u}(t)$ becomes the solution of equation $\eqref{eq:ch5_modal_gov}$. The factor $\lambda$ is called the eigenvalue, vector $\mathbf{x}$ is called the eigenvector.

## Problem settings
Equation $\eqref{eq:ch5_modal_acceleration}$ can be expanded to calculate arbitrary order frequencies, which may appear at real engineering practices. To solve various physical problems, we assume the system is Hermitian(Matrix Symmetrical). Thus, a complex matrix can be transposed into a conjugate complex number and a real symmetric matrix. The relationship can be expressed by the equation below 

$$
k_{ij}=\bar{k}_{ji}
$$

In this manual, the matrix in modal analysis is assumed to be symmetrical and positive definite. A positively definite matrix always yields to positive eigenvalues. Thus a matrix in the modal system always satisfies the following equation

$$
\mathbf{x}^{T}\mathbf{Ax}>0
$$


## Shifted inverse iteration method
In the practical structural modal analysis, not all eigen values are required. There are many cases that some low order eigenvalues are sufficient for the engineering analysis. In the large scale problem that contains large sparse matrix, efficiently calculate the eigenvalues of the low order modes becomes important.

When the lower limit of the eigenvalue is given, the equation $\eqref{eq:ch5_modal_gov3}$ can be derived to:

$$
\begin{align}
\label{eq:ch5_modal_gov4}
(\mathbf{K}-\sigma\mathbf{M})^{-1}\mathbf{M}\mathbf{x}=[1/(\lambda-\sigma)]\mathbf{x}
\end{align} 
$$

this formation of the equations has following advantages in numerical calculation:

* The mode is reversed.
* The eigenvalue around \mathbf{\sigma} is maximized.

In the computing practice, the maximum eigenvalue may be calculated by first. For this reason, we use the equation $\eqref{eq:ch5_modal_gov4}$ rather than equation $\eqref{eq:ch5_modal_gov3}$ to calculate the eigenvalues around \sigma. This scheme is called the shifted inverse iteration.

## Lanczos method
In the WELSIM application, the Lanczos method is applied to solve the eigenvalues. Lanczos method is a numerical method performing tridiagonalization of matrices. It has capabilities of :

* an iterative method, has advantages in solving sparse matrices.
* the algorithm is well structured with matrix and vector operations, and naturally fits for parallel computing.
* is suitable for the geometric domain decomposition method (DDM) that is embedded finite element mesh.
* calculate arbitrary number of the eigenvalues and modes.

The Lanczos method calculates the base of partial spaces by creating orthogonal vectors from the initial vectors. This method has advantages of computation speed over the subspace method. However, Lanczos method is easily affected by numerical errors. It is essential to check the solution with the numerical errors.

## Geometric meaning in the lanczos method
Based on equation $\eqref{eq:ch5_modal_gov4}$, we define

$$
\begin{align}
\label{eq:ch5_modal_gov5}
\begin{cases}
\mathbf{A}=(\mathbf{K}-\sigma\mathbf{M})^{-1}\\{}
[1/(\lambda-\sigma)]=\zeta
\end{cases}
\end{align}
$$

which can be rewritten to the following equation

$$
\mathbf{Ax}=\zeta\mathbf{x}
$$


The algorithm of the Lanczos method is the Gram-Schmidt orthogonalization for column vectors. Those column vectors are also called the columns of Krylov, and the space created by this scheme is called the Krylov subspace. When the Gram-Schmidt orthogonalization is performed in this space, the vectors can be acquired using the two nearest vectors. This is called the principle of Lanczos.
