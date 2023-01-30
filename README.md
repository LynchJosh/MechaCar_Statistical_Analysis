# MechaCar_Statistical_Analysis



##  Linear Regression
For this challenge, I created a Linear Regression chart to predict MPG. Using the provided CSV file "MechaCar_mpg", I used the lm() function to create the linear regression of each of the columns in the CSV file. After I ran that command, I used the summary command to get the p-value of all the columns. The p-value (5.35e-11) is less than .05, meaning that the slope is not set to zero. Therefore, the analysis provides evidence of the null hypothesis being false or it can be entirely ignored. The ground clearance and vehicle length provide the best results to back the hypothesis.

![Linear Regression](https://user-images.githubusercontent.com/112728628/215364419-07d3f7c5-7681-4511-ab65-7df01a72aed5.PNG)

![Summary Statistics](https://user-images.githubusercontent.com/112728628/215364429-35c1883e-838a-4700-acc0-25b16799276d.PNG)

![Groupby_lot](https://user-images.githubusercontent.com/112728628/215364434-25aada3e-9f6e-4d65-89e2-b3d3f97cc403.PNG)


##  Summary Statistics on Suspension Coils
Using the provided CSV file "Suspension_Coil," I used the summarize function to get the mean, median, variance, and standard deviation of the file. After that, I used the group by function to sort the columns by manufacturing lot. 100 pounds per square inch was used to compare the data. Lots 1 (0.9795918) and 2 (7.4693878) both fit within the standard deviation criteria. However, Lot 3 is 170, which exceeds the criteria of 100psi.
For a T-test, a population mean of 1500 pounds per square inch was used to determine differences among manufacturers. Lots were tested individually. Lot 1 had a p-value of 1, meaning not enough information is present to fully reject the null hypothesis.
Lot 2 had a p-value of .61, meaning there is not enough evidence to reject the null hypothesis.
Lot 3 had a p-value of .04, meaning that there is enough evidence provided to reject the null hypothesis.



![lots1-3Ttests](https://user-images.githubusercontent.com/112728628/215364446-d54a7723-60ca-48b9-88d3-f2d2880eee27.PNG)





