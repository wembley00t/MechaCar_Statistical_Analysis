# MechaCar_Statistical_Analysis

## Purpose of Analysis

AutosRUs' newest protype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team's progress.
Upper management has asked for a review of the production data for insights that may help the manufacturing team.


## Linear Regression to Predict MPG

To perform the linear regression model, first the MechaCar_mpg.csv file was imported and read into a dataframe shown below.

![head Mechacar Table](https://user-images.githubusercontent.com/100876517/177061440-014779bd-8701-4d0b-8ffb-523e0da762a2.png)


The linear regression was based on the variables of vehicle length, vehicle weight, spoiler angle, ground clearance and AWD.

![Del 1 1](https://user-images.githubusercontent.com/100876517/177061627-0fc44627-1b45-4cd6-b721-b5e8b6e75bac.png)

These results provide the following:

  * Vechicle length and ground clearance are the 2 variables/coefficients that provided a non-random amount of variance based on their low
    p-Value.
  * The slope of the linear model is not zero based on the coefficients for each variable.  The p-Value is 5.35e-11 which is smaller than 
    an assumed significance level of 0.05%.  This also indicates the slope is not zero.
  * The linear model will predict mpg of the MechaCar prototypes effectively.  The r-squared value is 0.7149 which indicates
    that approximately 71% of mpg predictions will be determined by this model.   
    
## Summary Statistics on Suspension Coils
  
The design specifications for the MechaCar suspension coils dictate that the variance of suspension coils must not exceed 100 pounds per 
square inch.  Data was reviewed for all manufacturing lots and for the lots individually to determine if the design specification requirements
are being met.
  
  
 The data for all manufacturing lots combined indicate the design specifications are being met as the variance is less than 100 pounds per square inch.
 
![Del 2](https://user-images.githubusercontent.com/100876517/177066880-d6c70490-4bee-4ac0-9b7e-73cb8dcccfd2.png)

Taking this one step further, the review of each individual manufacturing lot shows that lot 3 does not meet design specifications as the variance is 
greater than 100 pounds per square inch.  Lot 1 and 2 meet design specifications individually.

![Del 2 1](https://user-images.githubusercontent.com/100876517/177066892-ec261b89-bb32-4416-9d01-bc8a07893f65.png)
## T-Tests on Suspension Coils

T-tests were performed to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 
pounds per square inch.

The first t-test tested all manufacturing lots.  The result shows there is a 95% confidence level that the mean PSI is between 1498 and 1500.  The 
p-value of .06 is higher than the significance level of .05 meaning we can accept the null hypothesis and the two means are not statistically different.

![deliv 3 1](https://user-images.githubusercontent.com/100876517/177067464-adc3fa39-ac00-45cf-9575-5fb221aaf2c2.png)

### Lot 1 T-test

The results of the t-test for lot 1 indicate there is a 95% confidence level the mean PSI is between 1499.72 and 1500.28. The p-value of 1
indicates the two means are not statistically different.  Lot 1 has a true sample mean of 1500.

![del 3 2 1](https://user-images.githubusercontent.com/100876517/177067469-fc0f61ce-bf0f-4f93-87e0-f0c1ceace5e2.png)

### Lot 2 T-test

The results of the t-test for lot 2 indicate there is a 95% confidence level the mean PSI is between 1499.42 and 1500.98.  The p-value of
.6072 is higher than the significance level of .05 meaning we can accept the null hypothesis as with Lot 1 and the two means are not 
statistically different.

![Del 3 2 2](https://user-images.githubusercontent.com/100876517/177067473-587670f5-14df-45ec-9f1a-4cb03a87b009.png)

### Lot 3 T-test

The results of the t-test for lot 3 indicate there is a 95% confidence level the mean PSI is between 1492.43 and 1499.85.  The p-value of
.04 is less than the significance level of .05.  The mean is statistically different from the population and the null hypothesis should be
rejected.  Lot 3 should be reviewed further to determine the production issues that may be contributing to the variance that are not occurring
with lot 1 and 2.

![del 3,2 3](https://user-images.githubusercontent.com/100876517/177067489-5d1063af-49fc-4d7a-8619-0ea454c87036.png)




  
  
