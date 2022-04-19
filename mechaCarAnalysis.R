library(dplyr)
library(ggplot2)
library(tidyr)

# Deliverable 1: Linear Regression to Predict MPG
# 1. Import MechaCar_mpg.csv file
mpg <- read.csv("Resources/MechaCar_mpg.csv", header = TRUE, sep = ',')

# 2. Linear Regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mpg))

# Deliverable 2: Create Visualizations for the Trip Analysis
# 1. Import Suspension_Coil.csv file
coil <- read.csv("Resources/Suspension_Coil.csv", header = TRUE, sep = ',')

# 2. Use the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil’s PSI 
total_summary <- coil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
print(total_summary)

# 3. Write an RScript that creates a lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
lot_summary <- coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
print(lot_summary)



