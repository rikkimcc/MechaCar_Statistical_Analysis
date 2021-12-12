library(dplyr)

###### DELIVERABLE 1

# read MechaCar_mpg file
MechaCar <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors =F)

# Perform linear regression
lm(vehicle_length ~ mpg, MechaCar)

# Perform linear regression summary
summary(lm(vehicle_length ~ mpg, MechaCar))


###### DELIVERABLE 2

# read Suspension Coil csv
SuspensionCoil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors =F)

# create total summary table
total_summary <- SuspensionCoil %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),Standard_Deviation=sd(PSI))

# create lot summary table
lot_summary <- SuspensionCoil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),Standard_Deviation=sd(PSI), .groups = 'keep')


