library(dplyr)
library(ggplot2)
library(tidyr)

# Deliverable 1: Linear Regression to Predict MPG
# 1. Import MechaCar_mpg.csv file
mpg <- read.csv("Resources/MechaCar_mpg.csv", header = TRUE, sep = ',')

# 2. Linear Regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mpg))

# 