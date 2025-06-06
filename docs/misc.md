# MISC

## Comparison explicit and implicit time integrations

|   | Explicit method | Implicit method |
| - | :-------: | :-------: |
| Target problems | Dynamic(transient) | Static and dynamic(transient) |
| Damping | Artificial damping | Numerical damping |
| Time stepping method | Matrix multiplication | Linear algebra equations |
| Assemble stiffness matrix | No | Yes |
| Data storage requirement | Small | Large |
| Solving speed each step | Quick | Mediate |
| Iteration convergence | No | Yes |
| Solution | Certain solution | Could be uncertain solution |
| Stability | Conditionally stable | Unconditionally stable |
| Time step | Small | Large |
| Accuracy | Low | High |



| Strain-stress curve | Suitable Mooney-Rivlin model | Parameter requirement for positive definiteness | 
| :-------: | :-------: | :-------: |
| No inflection point (single curvature) | 2- or 3-parameter | C10 + C01 > 0 |
| One inflection point (double curvature) | 5-parameter | <p>C10 + C01 > 0<br>C20 > 0<br>C02 < 0<br>C20 + C11 + C02 > 0</p> | 
| Two inflection points | 9-parameter | <p>C10 + C01 > 0<br>C30>0<br>C03 < 0<br>C30 + C21 + C12 + C03 > 0</p> | 

