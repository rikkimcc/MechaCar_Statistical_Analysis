# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset? -- The vehicle length and ground clearance provided a  non-random amount of variance.
- Is the slope of the linear model considered to be zero? Why or why not? -- Slope is not considered zero since our P-Value is 5.35e-11
- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not? -- Yes, this model does predict mpg effectively since our r-squared value is approximately 71%

<img width="645" alt="Screen Shot 2021-12-12 at 12 23 04 PM" src="https://user-images.githubusercontent.com/89141436/145722653-1599b490-a73e-420a-a379-9aa63bd5647f.png">


## Summary Statistics on Suspension Coils
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

#### Total Summary
Since the overall variance is under 100 PSI, this meets the design specification.
<img width="605" alt="Screen Shot 2021-12-12 at 11 55 55 AM" src="https://user-images.githubusercontent.com/89141436/145721668-094a3e8e-d494-4387-9835-05aed31f16f3.png">

#### Lot Summary
Lot 1 and 2 meet the design specification since their variance is within the acceptable threshold. However, Lot 3's variance is 170 which exceeds the limit.  
<img width="605" alt="Screen Shot 2021-12-12 at 11 55 36 AM" src="https://user-images.githubusercontent.com/89141436/145721669-bd0099e9-ba99-4d25-94fc-30fb6f7cb7d9.png">

## T-Tests on Suspension Coils

All lots and specifically 1 & 2 are not statistically different from the population mean and we cannot reject the null hypothesis given the p-value. However, Lot 3 is statictically different from the population mean and the p-value is low enough for us to reject the null hypothesis.

#### T-Test (All Lots & Lot 1)
<img width="553" alt="Screen Shot 2021-12-12 at 12 09 20 PM" src="https://user-images.githubusercontent.com/89141436/145722196-dece8580-22d6-492f-8595-5a4683c3d354.png">

#### T-Test (All Lot 2 & Lot 3)
<img width="553" alt="Screen Shot 2021-12-12 at 12 09 44 PM" src="https://user-images.githubusercontent.com/89141436/145722212-dd51b663-757a-4b95-9d82-a843db92d1f0.png">

## Study Design: MechaCar vs Competition

- What metric or metrics are you going to test? -- fuel efficiency
- What is the null hypothesis or alternative hypothesis? -- the null hypothesis is there is no statistical difference between the competition's mpg dataset and MechaCar's mpg dataset.
- What statistical test would you use to test the hypothesis? And why? -- I would use the t-test to test the hypothesis since it has already been used to for it's current analysis.
