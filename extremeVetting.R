counts <- read.csv("extremeVetting.csv", row.names=1)
show(counts) 

library(MASS) 
summary(glm.nb(americansKilled ~ extremeVetting, data=counts))

with(counts, fisher.test(sourceOfKillers, extremeVetting))

