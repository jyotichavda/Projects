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

#------------------------------------lasso regression---------------------------------------
# Build the model
library(ISLR)
library(glmnet)
library(dplyr)
library(tidyr)
library(caret)
#Setup a grid range of lambda values:
lambda <- 10^seq(-3, 3, length = 100)
set.seed(123)
library(dplyr)
lasso <- train(
  NumeratorTransformed~NO2_concentration_value+NO2_AQI+CO_concentration_value+CO_AQI+O3_concentration_value+O3_AQI+PM2.5_concentration_value+PM2.5_AQI+PM10_concentration_value+PM10_AQI+Age_Group+Strata_Name, data = train, method = "glmnet",
  trControl = trainControl("cv", number = 10),
  tuneGrid = expand.grid(alpha = 1, lambda = lambda)
)

# Best tuning parameter
lasso$bestTune  # alpha-1, lambda-0.001
# Model coefficients
coef(lasso$finalModel, lasso$bestTune$lambda)

# Make predictions
predictions <- lasso %>% predict(test)
lasso_predictions <- 1/log(predict(lasso,newdata = test))
# Model prediction performance
data.frame(
  RMSE = RMSE(predictions, test[,c(15)]),
  Rsquare = R2(predictions, test[,c(15)])
)  # rmse - 0.8911 , r_squared - 0.503

#Mean Absolute Error
MAE(lasso_predictions,1/log(test[,15])) # 0.0289

#Mean Absolute Percentage Error
#install.packages("MLmetrics")
library(MLmetrics)
MLmetrics::MAPE(lasso_predictions,1/log(test[,15])) # 0.0534

#root mean square error
rmse<-function(actual,pred)
{
  sqrt( sum( (actual - red)^2 , na.rm = TRUE ) / length(actual) )
}
rmse(lasso_predictions,1/log(test[,15])) # 0.0412

#residual plot
library(plotmo)
plotres(lasso)