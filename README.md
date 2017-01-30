# "extreme vetting"

Note that the count numbers are at present poorly sourced (see footnote), and quite possibly out of date or wrong.    
Do feel free to submit a pull request if you have a better-referenced source of this type of data.    

```r
counts <- read.csv("extremeVetting.csv", row.names=1)
show(counts)
```

The data, as it currently stands:

```r
data frame with 11 rows and 3 columns
                     americansKilled extremeVetting sourceOfKillers
                           <numeric>      <logical>       <logical>
Iran                               0           TRUE           FALSE
Iraq                               0           TRUE           FALSE
Libya                              0           TRUE           FALSE
Somalia                            0           TRUE           FALSE
Sudan                              0           TRUE           FALSE
Syria                              0           TRUE           FALSE
Yemen                              0           TRUE           FALSE
Saudi Arabia                    2369          FALSE            TRUE
United Arab Emirates             314          FALSE            TRUE
Egypt                            162          FALSE            TRUE
Lebanon                          159          FALSE            TRUE
```

A trivial nonparametric test for difference by vetting status:

```r
wilcox.test(americansKilled ~ extremeVetting, data=counts)
```

Results:

```r
	Wilcoxon rank sum test with continuity correction

data:  americansKilled by extremeVetting
W = 28, p-value = 0.00312761
alternative hypothesis: true location shift is not equal to 0
```

As a glance at the table would suggest, "extreme vetting" isn't being    
applied to any of the countries on this list with the most victims.    
Of course, we could just recast this as an either/or type of question:

```r
with(counts, fisher.test(sourceOfKillers, extremeVetting))
```

Results of a binomial test for independence:

```r
	Fisher's Exact Test for Count Data

data:  sourceOfKillers and extremeVetting
p-value = 0.0030303
alternative hypothesis: true odds ratio is not equal to 1
95 percent confidence interval:
 0.000000000 0.389001111
sample estimates:
odds ratio 
         0 
```

The observed inverse relationsip is "statistically significant" (as if anyone needed a test to detect this), i.e.,
countries that aren't on the watch list were responsible for more casualties (according to the data provided).     
But you already knew that from looking at the table, didn't you?   

Footnote: found source image.  Still unattributed AFAIK.

![source of data](source.jpg "data of unknown provenance")
