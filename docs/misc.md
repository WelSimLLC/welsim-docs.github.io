# MISC

## Comparison explicit and implicit time integrations


|   | 显式算法 | 隐式算法 |
| - | :-------: | :-------: |
| 适用问题 | 动力学（动态） | 静力学（静态）和动力学（动态） |
| 阻尼 | 人工阻尼 | 数值阻尼 |
| 时间步求解方法 | 矩阵乘法 | 线性方程组 |
| 组装刚度矩阵 | 否 | 是 |
| 数据存储需求 | 小 | 大 |
| 每步计算速度 | 快 | 中 |
| 迭代收敛性 | 无 | 有 |
| 确定性 | 有确定解 | 可能是病态无确定解 |
| 时间稳定性 | 有条件 | 无条件 |
| 时间步 | 小 | 大 |
| 计算精度 | 低 | 高 |




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





| 应力-应变曲线含有 | 适用的Mooney-Rivlin函数 | 参数正定性要求 | 
| :-------: | :-------: | :-------: |
| 没有拐点(单曲率) | 2-或3-参数 | C10 + C01 > 0 |
| 1个拐点(双曲率) | 5-参数 | <p>C10 + C01 > 0<br>C20 > 0<br>C02 < 0<br>C20 + C11 + C02 > 0</p> | 
| 2个拐点 | 9-参数 | <p>C10 + C01 > 0<br>C30>0<br>C03 < 0<br>C30 + C21 + C12 + C03 > 0</p> | 



| Strain-stress curve | Suitable Mooney-Rivlin model | Parameter requirement for positive definiteness | 
| :-------: | :-------: | :-------: |
| No inflection point (single curvature) | 2- or 3-parameter | C10 + C01 > 0 |
| One inflection point (double curvature) | 5-parameter | <p>C10 + C01 > 0<br>C20 > 0<br>C02 < 0<br>C20 + C11 + C02 > 0</p> | 
| Two inflection points | 9-parameter | <p>C10 + C01 > 0<br>C30>0<br>C03 < 0<br>C30 + C21 + C12 + C03 > 0</p> | 

