# MechaCar_Statistical_Analysis

## Purpose of Analysis

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
