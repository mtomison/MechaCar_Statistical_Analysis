library(jsonlite)
library(tidyverse)
library(dplyr)

MechaCar <- read.csv("MechaCar_mpg.csv")

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar))

summary_data <- read.csv("Suspension_Coil.csv")

total_summary <- summary_data %>%  summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(x=PSI),SD=sd(PSI))

lot_summary <- summary_data %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(x=PSI),SD=sd(PSI), .groups = 'keep')

Lot1_summary <- summary_data %>% filter(Manufacturing_Lot=='Lot1')
Lot2_summary <- summary_data %>% filter(Manufacturing_Lot=='Lot2')
Lot3_summary <- summary_data %>% filter(Manufacturing_Lot=='Lot3')

t.test(summary_data$PSI)

t.test(lot_summary$Mean, mu=mean(summary_data$PSI))


t.test(Lot1_summary$PSI, mu=mean(summary_data$PSI))

t.test(Lot2_summary$PSI, mu=mean(summary_data$PSI))

t.test(Lot3_summary$PSI, mu=mean(summary_data$PSI))
