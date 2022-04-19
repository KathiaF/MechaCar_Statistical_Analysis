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


# Deliverable 3: T-Tests on Suspension Coils
# 1. Use the t.test() function to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.
t.test(coil$PSI, mu=1500)

# 2. Write three more RScripts in your MechaCarChallenge.RScript using the t.test() function and its subset() argument to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.
t.test(subset(coil$PSI, coil$Manufacturing_Lot=="Lot1"), mu=1500)
t.test(subset(coil$PSI, coil$Manufacturing_Lot=="Lot2"), mu=1500)
t.test(subset(coil$PSI, coil$Manufacturing_Lot=="Lot3"), mu=1500)
