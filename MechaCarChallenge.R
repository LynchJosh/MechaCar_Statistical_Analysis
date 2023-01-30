library(tidyverse)
library(dplyr)
library(jsonlite)
library(package)
MechaCar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)



lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_mpg) #multiple linear regression model

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_mpg)) #summary statistics




Suspension_Coil <- read.csv(file ='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

total_summary <- Suspension_Coil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')
head(total_summary)


lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep') 


t.test(Suspension_Coil$PSI, mu=1500)

#lot 1
t.test(subset(Suspension_Coil$PSI,Suspension_Coil$Manufacturing_Lot =="Lot1"), mu=1500)

#lot 2
t.test(subset(Suspension_Coil$PSI,Suspension_Coil$Manufacturing_Lot =="Lot2"), mu=1500)

#lot 3 
t.test(subset(Suspension_Coil$PSI,Suspension_Coil$Manufacturing_Lot =="Lot3"), mu=1500)

view(total_summary)
