# Equations of State (EOS)

MatEditor allows you to define the EOS material properties. The supported properties are listed below.

* [x]  Compaction
* [x]  Gruneisen
* [x]  Ideal Gas
* [x]  Linear
* [x]  LSZK (Landau-Stanyukovich-Zeldovich-Kompaneets)
* [x]  Murnaghan
* [x]  NASG (Noble-Abel Stiffened Gas)
* [x]  Noble-Abel
* [x]  Osborne
* [x]  Polynomial
* [x]  Puff
* [x]  Stiff Gas
* [x]  Tillotson

## Compaction EOS
Plastic compaction is along path defined by equation:

$$
p=C_0 + C_1 \mu +C_2 \mu^2 + C_3 \mu^3
$$

where $P$ is the hydrodynamic pressure in material. $\mu$ is the volumetric strain that can be obtained by $\mu=\dfrac{\rho}{\rho_0}-1$.

Unloading bulk modulus $B$ is the bulk modules for the unloading process.

Pressure Shift $P_{sh}$ is used to model the relative pressure formulation.

## Gruneisen EOS

In the Gruneisen EOS model, the hydrodynamic pressure is described by the following equations:

For the compressed material, $\mu$>0

$$
p = \dfrac{\rho_0C^2\mu[1+(1-\dfrac{\gamma_0}{2})\mu-\dfrac{\alpha}{2}\mu^2]}{[1-(S_1-1)\mu-S_2\dfrac{\mu^2}{\mu+1}-S_3\dfrac{\mu^3}{(\mu+1)^2}]^2} + (\gamma_0+\alpha\mu)E
$$

For the expanding material, $\mu$<0
$$
p = \rho_0C^2\mu + (\gamma_0+\alpha\mu)E
$$

where the $\mu=\dfrac{\rho}{\rho_0}-1$.

## Ideal Gas EOS
The pressure in the Ideal Gas model can be represented by the function:

$$
p = (\gamma-1)(1+\mu)E
$$

where unitless parameter $\gamma$ is determined by the heat capacity $C_v$ and $C_p$, $\gamma=\dfrac{C_p}{C_v}$. The initial heat capacity $C_v$ is calculated from the initial conditions:

$$
C_v=\dfrac{E_0}{\rho_0T_0}
$$

## Linear EOS

The pressure in linear EOS is given by 

$$
p = p_0 + B\mu
$$

where $p_0$ i initial pressure and $B$ is the initial bulk modulus. Linear EOS is a simplified form of polynomial EOS:

$$
p=C_0+C_1\mu + C_2\mu + C_3\mu + (C_4+C_5)E_0
$$

where, $C_0=p_0$, $C_1=B$, $C_2=C_3 = C_4 = C_5 = 0$.

Bulk modulus is usually treated as $B=\rho_0c_0^2$, where $c_0$ is the initial sound speed.

## LSZK (Landau-Stanyukovich-Zeldovich-Kompaneets) EOS
This EOS model is the short for the Landau-Stanyukovich-Zeldovich-Kompaneets EOS, used for the detonation modeling. The pressure is given by

$$
p = (\gamma-1)\rho e + a \rho^b
$$

where $\rho$ is the mass density, $e$ is the internal energy density by mass, $b$ is the material parameter.

## Murnaghan EOS

This EOS is also known as Tait EOS. The pressure is defined by 

$$
p = \dfrac{K_0}{K_1}[(\dfrac{V}{V_0})^{-K_1}-1]
$$

where $K_0$, $K_1$ are material parameters, $V$ is the volume.

This model is also expressed in terms of the compressibility $\mu$:

$$
p = p_0 + \dfrac{K_0}{K_1}[(1+\mu)^{K_1}-1]
$$

!!! note
    Murnaghan EOS is independent to the energy.


## NASG (Noble-Abel Stiffened Gas) EOS

The pressure can be computing by 

$$
p = \dfrac{(\gamma-1)(1+\mu)(E-\rho_0q)}{1-b\rho_0(1+\mu)} - \gamma p_{\infty}
$$

where $p_{\infty}$ is the stiffness parameter. 

## Noble-Abel EOS
This EOS can apply to dense gases at high pressure, as the volume occupied by the moledules is no longer negligible.

$$
p = \dfrac{(\gamma-1)(1+\mu)E}{1-b\rho_0(1+\mu)}
$$

where $\gamma=\dfrac{C_p}{C_v}$

!!! note
    Covolume parameter **b** is usually in the range between [0.9e-3, 1.1e-3] $m^3/kg$.


## Osborne EOS
This EOS is also called quadratic EOS.

$$
p = \dfrac{A_1\mu+A_2\mu |\mu| + (B_0+B_1\mu+B_2\mu^2)E + (C_0 + C_1\mu)E^2 }{E+D_0}
$$
where $E$ is the internal energy by initial volume. 


## Polynomial EOS
The pressure for the linear polynomial EOS can be calculated by 

$$
p=C_0+C_1\mu + C_2\mu + C_3\mu + (C_4+C_5)E
$$

where $E$ is the internal energy density by volume.

!!! note 
    For the expanding status ($\mu$<0), the term $C_2\mu^2$=0.


## Puff EOS
This EOS model describes pressure accroding to the compressibility $\mu$ and sublimation energy density by volume $E_s$.

When $\mu\geq$ 0:

$$
p = (C_1\mu+C_2\mu^2+C_3\mu^3)(1-\dfrac{\gamma\mu}{2})+\gamma(1+\mu)E
$$

when $\mu$<0 and $E\geq E_s$:

$$
p = (T_1\mu+T_2\mu^2)(1-\dfrac{\gamma\mu}{2})+\gamma(1+\mu)E
$$

when $\mu$<0 and $E<E_s$:

$$
p = \eta[H+(\gamma_0-H)\sqrt{\eta}][E-E_s(1-exp(\dfrac{N(\eta-1)}{\eta^2}))]
$$

with $N=\dfrac{C_1\eta}{\gamma_0E_s}$.


## Stiffened Gas EOS
This EOS was originally designed to simulate water for underwater explosions.

The pressure can be calculated by 
$$
p = (\gamma-1)(1+\mu)E - \gamma p_{\star}
$$

where $E=\dfrac{E_{int}}{V_0}$, $\mu=\dfrac{\rho}{\rho_0}-1$. The additional pressure term $p^{\star}$ is introduced here.

This EOS can be derived from the Polynomial EOS:
$$
p=C_0+C_1\mu + C_2\mu + C_3\mu + (C_4+C_5)E
$$
when $C_0 = -\gamma p^{\star}$, $C_1=C_2=C3=0$, $C_4=C_5=\gamma-1$, $E_0=\dfrac{P_0-C_0}{C_4}$.

## Tillotson EOS

The pressure is defined by

$$
p = C_1\mu + C_2\mu^2 +(a+\dfrac{b}{\omega})\eta E 
$$
with $\omega=1+\dfrac{E}{E_r}\eta^2$ for the region $\mu \geq$ 0.

$$
p = C_1\mu+(a+\dfrac{b}{\omega})\eta E
$$
for the region $\mu<0$, $\dfrac{V}{V_0}<V_s$, and $E<E_s$. 

and 
$$
p = C_1 e^{\beta x} e^{-\alpha x^2}\mu + (a + \dfrac{be^{-\alpha x^2}}{\omega}) \eta E
$$








