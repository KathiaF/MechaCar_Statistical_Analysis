# MechaCar_Statistical_Analysis

# Project Overview

# Resources
- Data Source: MechaCar_mpg.csv, Suspension_Coil.csv
- Software: RStudio

# Analysis and Results
## D1: Linear Regression to Predict MPG
<img src="/Resources/img1.png" width="70%" height="70%">

1. Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
- *vehicle_length* and *ground_clearance* provided a non-random amount of variance to the MPG values according to the p value. 

2. Is the slope of the linear model considered to be zero? Why or why not?
- No, the slope (*m*) of the linear model is not considered to be zero, because the p-value of this linear regression analysis (5.35x10^-11) is smaller than the assumed significance level of 0.05%, therefore, the null hypothesis (*m=0*) is rejected .

3. Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
- Yes, It can be concluded that this linear model predict the MechaCar prototypes effectively, as can be seen from the results in the previous image, the r-squared value is 0.71, which means that 72% of the variablilty of the variable miles per gallon (mpg) is explained using this linear model

## D2: Summary Statistics on Suspension Coils
- *total_summary* dataframe

<img src="/Resources/img2.png" width="30%" height="30%">

- *lot_summary* dataframe

<img src="/Resources/img3.png" width="70%" height="70%">

## D3: T-Tests on Suspension Coils
<img src="/Resources/img4.png" width="70%" height="70%">

<img src="/Resources/img5.png" width="70%" height="70%">

## D4: Study Design: MechaCar vs Competition
