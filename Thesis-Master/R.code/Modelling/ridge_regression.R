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

#-----------------------------------------ridge regression---------------------------------------------
#Setup a grid range of lambda values:
lambda <- 10^seq(-3, 3, length = 100)
set.seed(123)
library(dplyr)
ridge <- train(
  NumeratorTransformed~NO2_concentration_value+NO2_AQI+CO_concentration_value+CO_AQI+O3_concentration_value+O3_AQI+PM2.5_concentration_value+PM2.5_AQI+PM10_concentration_value+PM10_AQI+Age_Group+Strata_Name, data = train, method = "glmnet",
  trControl = trainControl("cv", number = 10),
  tuneGrid = expand.grid(alpha = 0, lambda = lambda)
)
# Best tuning parameter
ridge$bestTune  # alpha-0, lambda-0.0572
# Model coefficients
coef(ridge$finalModel, ridge$bestTune$lambda)
# Make predictions
predictions <- ridge %>% predict(test)
ridge_predictions <- 1/log(predict(ridge,newdata = test))
# Model prediction performance
data.frame(
  RMSE = RMSE(predictions, test[,c(15)]),
  Rsquare = R2(predictions, test[,c(15)])
)  
# rmse - 0.931 , r_squared - 0.4651

# mean absolute error
MAE(ridge_predictions,1/log(test[,15])) # 0.03039

# mean absolute percentage error
#install.packages("MLmetrics")
library(MLmetrics)
MLmetrics::MAPE(ridge_predictions,1/log(test[,15])) # 0.0561

#root mean square error
rmse<-function(actual,pred)
{
  sqrt( sum( (actual - pred)^2 , na.rm = TRUE ) / length(actual) )
}
rmse(ridge_predictions,1/log(test[,15])) # 0.04256

#residual plot
library(plotmo)
plotres(ridge)