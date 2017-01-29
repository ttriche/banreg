# correlation between "extreme vetting" and murder of Americans

Note that the numbers are unsourced, and quite possibly out of date or wrong.

```r
library(MASS)
counts <- read.csv("extremeVetting.csv", row.names=1)
summary(glm.nb(americansKilled ~ extremeVetting, data=counts))
```

Results:

```r
Coefficients:
                  Estimate  Std. Error  z value            Pr(>|z|)    
(Intercept)       6.621406    0.545872 12.12996 <0.0000000000000002 ***
extremeVetting  -27.923991 9685.037758 -0.00288              0.9977    
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
```

No particular relationship observed.  Alternatively, we could model this as true/false:

```r
	Fisher's Exact Test for Count Data

data:  hostedKillers and extremeVetting
p-value = 0.0030303
alternative hypothesis: true odds ratio is not equal to 1
95 percent confidence interval:
 0.000000000 0.389001111
sample estimates:
odds ratio 
         0 
```

So the odds of hosting a killer based on these data are substantially lower if the country is subject to "extreme vetting",
and that inverse relationsip is "statistically significant" (as if anyone needed a test to detect this). 
