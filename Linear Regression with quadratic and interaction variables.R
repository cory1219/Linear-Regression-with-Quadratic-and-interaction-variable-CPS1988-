########################################### Setting up the data frame #################################################
install.packages("AER")
library(AER)  

data("CPS1988")

?CPS1988

summary(CPS1988)

# experience is not observed, but calculated and therefore, sometimes negative or zero

attach(CPS1988)  # attach "journal" data set st. R knows all the relevant variables 

summary(wage)

head(wage)       # wage is numeric, decimal number and has no single value twice 


## plot the relationship between experience and wage 
plot(experience,wage) # data points are mostly at the lower side of the plot, so we can scale wage with logarithm
plot(experience, log(wage)) # the shape of data points appears to be a curve, so we assume it's a quadratic relationship


## create an estimator of linear regression with a quadratic variable of experience
mr_1 <- lm(log(wage)~education+ethnicity+experience+I(experience^2))
summary(mr_1)

## assume that education interacts with ethnicity. For example, Caucasians have
## higher chance to receive high quality of education
mr_2 <- lm(log(wage)~education+ethnicity+education*ethnicity+experience+I(experience^2))
summary(mr_2)

## to simplify the above estimator, we can temporarily omit experience.
## Therefore, we can easily see the incremental effect of educaiton & ethnicity
model_int=lm(log(wage)~experience+I(experience^2)+education*ethnicity)  

summary(model_int)