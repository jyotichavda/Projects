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

#---------------------------------------Random forest ------------------------------------
control <- trainControl(method="repeatedcv", number=10, repeats=3, search="random")
set.seed(123)
mtry <- sqrt(ncol(matrix))
rf_random <- caret::train(NumeratorTransformed~NO2_concentration_value+CO_concentration_value+O3_concentration_value+PM2.5_concentration_value+PM10_concentration_value+Age_Group+Strata_Name, data=train, method="rf", tuneLength=15, trControl=control)
summary(rf_random)
print(rf_random) # rmse = 0.347, r_squared = 0.924897, mae = 0.2647
plot(rf_random)

rf_predictions <- 1/log(predict(rf_random,newdata = test))
MAE(rf_predictions,1/log(test[,15])) #0.0115
#install.packages("MLmetrics")
library(MLmetrics)
MLmetrics::MAPE(rf_predictions,1/log(test[,15])) #0.0211

#root mean square error
rmse<-function(actual,pred)
{
  sqrt( sum( (actual - pred)^2 , na.rm = TRUE ) / length(actual) )
}
rmse(rf_predictions,1/log(test[,15])) #0.0177

plot(rf_random, xlab = "Number of Randomly Selected Predictors")



#-------------------------------------decision tree -----------------------------------
control <- trainControl(method="repeatedcv", number=10, repeats=3, search="random")
set.seed(123)
dt_random <- caret::train(NumeratorTransformed~NO2_concentration_value+CO_concentration_value+O3_concentration_value+PM2.5_concentration_value+PM10_concentration_value+Age_Group+Strata_Name, data=train, method="rpart", tuneLength=15, trControl=control)
summary(dt_random)
print(dt_random) # rmse = 0.642, r_squared = 0.7244, mae = 0.464
plot(dt_random)
predict(dt_random,newdata = test)
dt_predictions <- 1/log(predict(dt_random,newdata = test))
MAE(dt_predictions,1/log(test[,15])) #0.017
#install.packages("MLmetrics")
library(MLmetrics)
MLmetrics::MAPE(dt_predictions,1/log(test[,15])) #0.0329
#root mean square error
rmse<-function(actual,pred)
{
  sqrt( sum( (actual - pred)^2 , na.rm = TRUE ) / length(actual) )
}
rmse(dt_predictions,1/log(test[,15])) #0.0265


#-------------------------------------------- gamboost --------------------------------------
control <- trainControl(method="repeatedcv", number=10, repeats=3, search="random")
set.seed(123)
gam_random <- caret::train(NumeratorTransformed~NO2_concentration_value+CO_concentration_value+O3_concentration_value+PM2.5_concentration_value+PM10_concentration_value, data=train, method="gamboost", tuneLength=15, trControl=control)
summary(gam_random)
print(gam_random) # rmse = 0.7998, rsquared = 0.5722, mae = 0.652
predict(gam_random,newdata = test)
gam_predictions <- 1/log(predict(gam_random,newdata = test))
MAE(gam_predictions,1/log(test[,15])) #0.028
#install.packages("MLmetrics")
library(MLmetrics)
MLmetrics::MAPE(gam_predictions,1/log(test[,15])) #0.0517
#root mean square error
rmse<-function(actual,pred)
{
  sqrt( sum( (actual - pred)^2 , na.rm = TRUE ) / length(actual) )
}
rmse(gam_predictions,1/log(test[,15])) #0.0395

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

MAE(lasso_predictions,1/log(test[,15])) # 0.0289
#install.packages("MLmetrics")
library(MLmetrics)
MLmetrics::MAPE(lasso_predictions,1/log(test[,15])) # 0.0534
#root mean square error
rmse<-function(actual,pred)
{
  sqrt( sum( (actual - red)^2 , na.rm = TRUE ) / length(actual) )
}
rmse(lasso_predictions,1/log(test[,15])) # 0.0412


#----------------------------------elasticnet regression----------------------------------
# Build the model
set.seed(123)
elastic <- train(
  NumeratorTransformed~NO2_concentration_value+NO2_AQI+CO_concentration_value+CO_AQI+O3_concentration_value+O3_AQI+PM2.5_concentration_value+PM2.5_AQI+PM10_concentration_value+PM10_AQI+Age_Group+Strata_Name, data = train, method = "glmnet",
  trControl = trainControl("cv", number = 10),
  tuneLength = 10
)
# Best tuning parameter
elastic$bestTune  # alpha-0.5, lambda-0.000277
# Model coefficients
coef(elastic$finalModel, elastic$bestTune$lambda)
# Make predictions
predictions <- elastic %>% predict(test)
elastic_predictions <- 1/log(predict(elastic,newdata = test))
# Model prediction performance
data.frame(
  RMSE = RMSE(predictions, test[,c(15)]),
  Rsquare = R2(predictions, test[,c(15)])
)  # rmse - 0.894 , r_square - 0.500


MAE(elastic_predictions,1/log(test[,15])) # 0.0289
#install.packages("MLmetrics")
library(MLmetrics)
MLmetrics::MAPE(elastic_predictions,1/log(test[,15])) # 0.0534
#root mean square error
rmse<-function(actual,pred)
{
  sqrt( sum( (actual - pred)^2 , na.rm = TRUE ) / length(actual) )
}
rmse(elastic_predictions,1/log(test[,15])) # 0.0413

#----------------------------------------ridge regression-----------------------------------------------------
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
 
MAE(ridge_predictions,1/log(test[,15])) # 0.03039
#install.packages("MLmetrics")
library(MLmetrics)
MLmetrics::MAPE(ridge_predictions,1/log(test[,15])) # 0.0561
#root mean square error
rmse<-function(actual,pred)
{
  sqrt( sum( (actual - pred)^2 , na.rm = TRUE ) / length(actual) )
}
rmse(ridge_predictions,1/log(test[,15])) # 0.04256

#-------------------------------------model comparission----------------------------------

regression_models_MAE <- list(ridge = ridge, lasso = lasso, elastic = elastic)
resamples(regression_models_MAE) %>% summary( metric = "MAE")

regression_models_RMSE <- list(ridge = ridge, lasso = lasso, elastic = elastic)
resamples(regression_models_RMSE) %>% summary( metric = "RMSE")

regression_models_r_square <- list(ridge = ridge, lasso = lasso, elastic = elastic)
resamples(regression_models_r_square) %>% summary( metric = "Rsquare")

models_RMSE <- list(random_forest = rf_random, decision_tree = dt_random, gam_boost = gam_random)
resamples(models_RMSE) %>% summary( metric = "RMSE")

models_MAE <- list(random_forest = rf_random, decision_tree = dt_random, gam_boost = gam_random)
resamples(models_MAE) %>% summary( metric = "MAE")

models_r_square <- list(random_forest = rf_random, decision_tree = dt_random, gam_boost = gam_random)
resamples(models_r_square) %>% summary( metric = "Rsquare")

#------------------------------- Residual Plot ------------------------------
library(plotmo)
plotres(lasso)
plotres(ridge)
plotres(gam_random)
plotres(elastic)

