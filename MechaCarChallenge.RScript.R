library(dplyr)

###### DELIVERABLE 1

# read MechaCar_mpg file
MechaCar <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors =F)

# Perform linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data= MechaCar)

# Perform linear regression summary
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data= MechaCar))


###### DELIVERABLE 2

# read Suspension Coil csv
SuspensionCoil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors =F)

# create total summary table
total_summary <- SuspensionCoil %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),Standard_Deviation=sd(PSI))

# create lot summary table
lot_summary <- SuspensionCoil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),Standard_Deviation=sd(PSI), .groups = 'keep')


###### DELIVERABLE 3

# Perform t-test
t.test(SuspensionCoil$PSI, mu=1500)

# Peform t-test on Lot 1
t.test(subset(SuspensionCoil,Manufacturing_Lot=="Lot1")$PSI,mu = 1500)

# Peform t-test on Lot 2
t.test(subset(SuspensionCoil,Manufacturing_Lot=="Lot2")$PSI,mu = 1500)

# Peform t-test on Lot 3
t.test(subset(SuspensionCoil,Manufacturing_Lot=="Lot3")$PSI,mu = 1500)

