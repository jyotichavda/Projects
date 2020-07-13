setwd("C:/Users/Imtiyaz/Desktop/Research_computing/Data Sets")
random_search <- read.csv("Final_dataset.csv", header=T, na.strings=c(""), stringsAsFactors = T)
str(random_search)
summary(random_search)
random_search <- random_search[ ,-c(1,14,15,17)]
sapply(random_search,function(x) sum(is.na(x)))

random_search$Age_Group <- as.character(random_search$Age_Group)
random_search$Strata_Name <- as.character(random_search$Strata_Name) 

#convert Age_Group to integers
random_search$Age_Group[random_search$Age_Group== "18 and Over"] <-1
random_search$Age_Group[random_search$Age_Group== "All Ages"] <-2
random_search$Age_Group[random_search$Age_Group== "Under 18"] <-3

#convert Strata_Name to integers
random_search$Strata_Name[random_search$Strata_Name== "Female"] <-1
random_search$Strata_Name[random_search$Strata_Name== "Male"] <-2

random_search$Age_Group <- as.numeric(random_search$Age_Group)
random_search$Strata_Name <- as.numeric(random_search$Strata_Name)

#splitting data into training and testing data
library(caret)
matrix <- as.matrix(random_search[,c(2:16)])
set.seed(1337)
index <- sample(1:dim(matrix)[1], dim(matrix)[1] * .75, replace=FALSE)
train <- matrix[index, ]
test <- matrix[-index, ]
str(test)

#-------------------------------------decision tree -----------------------------------
control <- trainControl(method="repeatedcv", number=10, repeats=3, search="random")
set.seed(123)
dt_random <- caret::train(NumeratorTransformed~NO2_concentration_value+CO_concentration_value+O3_concentration_value+PM2.5_concentration_value+PM10_concentration_value+Age_Group+Strata_Name, data=train, method="rpart", tuneLength=15, trControl=control)
summary(dt_random)
print(dt_random) # rmse = 0.642, r_squared = 0.7244, mae = 0.464
plot(dt_random)
predict(dt_random,newdata = test)
dt_predictions <- 1/log(predict(dt_random,newdata = test))

#Mean Absolute Error
MAE(dt_predictions,1/log(test[,15])) #0.017

#Mean Absolute Percentage Error
#install.packages("MLmetrics")
library(MLmetrics)
MLmetrics::MAPE(dt_predictions,1/log(test[,15])) #0.0329

#root mean square error
rmse<-function(actual,pred)
{
  sqrt( sum( (actual - pred)^2 , na.rm = TRUE ) / length(actual) )
}
rmse(dt_predictions,1/log(test[,15])) #0.0265

