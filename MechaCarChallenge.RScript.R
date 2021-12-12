library(dplyr)

# read MechaCar_mpg file
MechaCar <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors =F)

# Perform linear regression
lm(vehicle_length ~ mpg, MechaCar)

# Perform linear regression summary
summary(lm(vehicle_length ~ mpg, MechaCar))