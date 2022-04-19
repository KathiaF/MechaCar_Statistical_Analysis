# MechaCar_Statistical_Analysis

# Project Overview

# Resources
- Data Source: MechaCar_mpg.csv, Suspension_Coil.csv
- Software: RStudio
    - The significance level assumed for this challenge is 0.05

# Analysis and Results
## D1: Linear Regression to Predict MPG
<img src="/Resources/img1.png" width="70%" height="70%">

### Q&A
- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
  - *vehicle_length* and *ground_clearance* provided a non-random amount of variance to the MPG values according to the p value. 

- Is the slope of the linear model considered to be zero? Why or why not?
  - No, the slope (*m*) of the linear model is not considered to be zero, because the p-value of this linear regression analysis (5.35x10^-11) is smaller than the assumed significance level of 0.05, therefore, the null hypothesis (*m=0*) is rejected.

- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
  - Yes, It can be concluded that this linear model predict the MechaCar prototypes effectively, as can be seen from the results in the previous image, the r-squared value is 0.71, which means that 72% of the variablilty of the variable miles per gallon (mpg) is explained using this linear model.

## D2: Summary Statistics on Suspension Coils
- *total_summary* dataframe

<img src="/Resources/img2.png" width="30%" height="30%">

- *lot_summary* dataframe

<img src="/Resources/img3.png" width="70%" height="70%">

- The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
  - In the *total_summary* dataframe, it can be seen that the variance of the three lots in total (62.3), does meet the design specification of not exceeding 100 PSI, however, the results shown in the *lot_summary* dataframe it can be seen that *lot3* exceeds the variance above the expected specifications.

## D3: T-Tests on Suspension Coils
- The t.test for PSIs of all manufacturing lots shows a *p-value of 0.06028*, therefore, we do not have sufficient evidence to reject the null hypothesis, and we would state that the mean (average for all lots) is statistically similar.

<img src="/Resources/img4.png" width="70%" height="70%">

- In the following figure it is observed that the coils manufactured by Lot 1 (*p-value = 1*) and Lot 2 (*p-value =  0.6072*) were not significantly different from the population means, however, lot 3 was. This could be due to the fact that lot 3 exceeds the variance above the expected specifications. In my opinion, AutoRUs should look if there is something that causes manufacturing problems in Lot 3.
<img src="/Resources/img5.png" width="70%" height="70%">

  

## D4: Study Design: MechaCar vs Competition
