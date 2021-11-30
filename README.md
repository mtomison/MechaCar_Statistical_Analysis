# MechaCar_Statistical_Analysis
## Linear Regression to Predict MPG
#### Residuals:
|Min|1Q|Median|3Q|Max    
|---|--|------|--|---
|-19.4701|-4.4994|-0.0692|5.4433|18.5849

#### Coefficients:
|  |Estimate Std |Error |t value |P-value|
|--|--|--|--|--
|(Intercept)|-1.040e+02 |1.585e+01|-6559|5.08e-08
vehicle length|6.267e+00|6.553e-01|9.563|2.60e-12
vehicle weight|1.245e-03|6.890e-04|1.807|0.0776
spoiler angle|6.877e-02|6.653e-02|1.034|0.3069
ground clearance|3.546e+00|5.412e-01|6.551|5.21e-08
AWD|-3.411e+00|2.535e+00|-1.346|0.1852

Residual standard error: 8.774 on 44 degrees of freedom
Multiple R-squared:  0.7149,	Adjusted R-squared:  0.6825 
F-statistic: 22.07 on 5 and 44 DF,  p-value: 5.35e-11

Based on the statistics summary above, the vehicle length, vehicle weight, and ground clearance have significant impact on miles per gallon.  

The slope of the linear model is not considered to be zero because there is the relationship between the intercept and several of the coefficients.

While the length, weight and ground clearance can reliably predict miles per gallon, the spoiler angle is less reliable.  The length and ground clearance p-values are less than the .05% significance level.

Based on the r-squared metrics, 71% of the variables can predict/explain the value of the intercept using the linear model.

## Summary Statistics on Suspension Coils
#### All Lots
|Mean|Median|Variance|SD
|--|--|--|--
| 1498.78 |1500  |62.29356|7.892627

#### Each Lot
|Manufacturing Lot|Mean  |Median | Variance | SD
|--|--|--|--|--
|Lot 1  |1500.00  |1500.0 | 0.9795918 | 0.9897433
|Lot 2 | 1500.20 | 1500.0 | 7.4693878 | 2.7330181
|Lot 3 | 1496.14 | 1498.5 | 170.2861224 | 13.0493725

Design specifications for the suspension coils require the variance of the suspension coils not exceed 100 pounds per square inch.  Based on the results of the analysis, overall the manufacturing lots do adhere to this with a variance of 62.29356 psi.  However, Lot 3 exceeds this requirement with a variance of 170.2861224 psi.

## T-Tests on Suspension Coils
Assumption:  Significance level = 0.05%
Looking at the [summary screenshot](https://github.com/mtomison/MechaCar_Statistical_Analysis/blob/bfc6b232ffe42699e046ff2fad53a1ab7543c3c5/lot_summary_t_test.png) for the manufacturing lot summary t-test, our p-value is below 0.05% and, therefore, we can say that the means are statistically similar and we do not have sufficient evidence to reject a null hypothesis.
If we analyze the [individual screenshots](https://github.com/mtomison/MechaCar_Statistical_Analysis/blob/bfc6b232ffe42699e046ff2fad53a1ab7543c3c5/Ind_Lot_t_test.png) t-test, we note that the lots 1 and 2 do have sufficient evidence to reject a null hypothesis as the p-value for both exceed the 0.05% significance level and are therefore, not statistically similar.

## Study Design: MechaCar vs Competition
