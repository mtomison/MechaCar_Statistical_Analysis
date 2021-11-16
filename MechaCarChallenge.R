library(jsonlite)
library(tidyverse)
library(dplyr)

MechaCar <- read.csv("MechaCar_mpg.csv")

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar))
