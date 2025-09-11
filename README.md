# Marketing-Budget-Optimization
This repository focuses on utilizing **MATLAB**'s optimization tool's in order to determine which combination of marketing campaigns yields the largest profit. 

# Overview:
This project models an optimization problem in **MATLAB** where the goal is to find the combination of marketing campaigns that result in the biggest profit, while ensuring that none of the constraints (ads being displayed simultaneously) are violated. The constraints bridge the gap between theory and application because in real world scenarios there are restrictions like time, resources, and budget. 

# Content:
1. Optimization_Report.pdf - Discussion of results and background information
2. Optimization_source_code.m - Source code for reproducibility in MATLAB

# Requirements:
1. MATLAB version R2019A or later 
2. Optimization toolbox installed

# Key Finding:
The optimization model selected Coca Cola (ad 2) and YerbaMate (ad 5) as the profit-maximizing advertisements. This combination yields a maximum profit of $1,500, the highest achievable under the given conflict constraints. The result highlights how integer optimization ensures feasible selections while still prioritizing the most profitable options.

# Contributions:
Future work could focus on visualization, extending the model to handle a larger set of advertisements with more complex conflict networks. Additional constraints such as budget limits, time restrictions, or audience reach requirements could also be incorporated to reflect more realistic advertising scenarios.
