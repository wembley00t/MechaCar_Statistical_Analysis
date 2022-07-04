#Deliverable 1

#Use the library function to load dplyr
?library
library(dpylr)
library (formattable)

# Import and read in the MechaCar_mpg.csv file as a dataframe
MechaCar_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
head(MechaCar_table)

#Perform linear regression using the lm() function.  Pass all 6 variables.
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_table)


#Use the summary() function to determine the p-value and r-squared value for the model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_table))


#Deliverable 2

#Import and read in the Suspension_Coli.csv file as a table
Suspension_Coil_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
head(Suspension_Coil_table)

#Write a script that creates total_summary dataframe using summarize() function
total_summary <- Suspension_Coil_table %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
head(total_summary)

formattable(total_summary)

#Write a script that creates a lot_summary dataframe using group_by and summarize()
lot_summary <- Suspension_Coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')
head(lot_summary)

formattable(lot_summary)

#Deliverable 3

#Write a script using the t.test() function to determine if the PSI across all mfg lots is statistically different from the population mean of 1,500 PSI
t.test((Suspension_Coil_table$PSI),mu=1500)

#Write 3 more scripts using t.test() function and subset() to determine if the PSI for each lot is statistically different from the population mean of 1,500 PSI
t.test((subset(Suspension_Coil_table, Manufacturing_Lot == "Lot1")$PSI),mu=1500)
t.test((subset(Suspension_Coil_table, Manufacturing_Lot == "Lot2")$PSI),mu=1500)
t.test((subset(Suspension_Coil_table, Manufacturing_Lot == "Lot3")$PSI),mu=1500)


