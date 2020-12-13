setwd("C:/Users/Imtiyaz/Desktop/Research_computing/Data Sets")
asthma <- read.csv("asthma-ed-visit-rates-lghc-indicator-07.csv", header=T, na.strings=c(""), stringsAsFactors = T)
asthma_gender <- subset(asthma, Strata == "Sex")
asthma_gender <- asthma_gender[ ,-c(7)]
asthma_gender$Numerator <- gsub(',', '', asthma_gender$Numerator)
asthma_gender$Numerator[is.na(asthma_gender$Numerator)] <- 0
asthma_gender$Year <- as.character(asthma_gender$Year)
asthma_gender$Year <- as.integer(asthma_gender$Year)
asthma_gender$Numerator <- as.character(asthma_gender$Numerator)
asthma_gender$Numerator <- as.numeric(asthma_gender$Numerator)
plot(density(asthma_gender$Numerator))

sapply(asthma_gender,function(x) sum(is.na(x)))
colnames(asthma_gender) <- c("county", "year","Age_Group","Strata","Strata_Name","Numerator")
str(asthma_gender)

setwd("C:/Users/Imtiyaz/Desktop/Research_computing/Data Sets/air_pollution_data/FINAL_DATASETS")
temp = list.files(pattern = "*.csv")
myfiles = lapply(temp, read.delim)
for (i in 1:length(temp)) assign(temp[i], read.csv(temp[i]))
air_pollution <- rbind(butte.csv,conta_costa.csv,fresno.csv,humboldt.csv,imperial.csv,los_angeles.csv,marin.csv,monterey.csv,orange.csv,river_side.csv,sacramento.csv,sandiego.csv,sanfrancisco.csv,sanjoquin.csv,santaclara.csv,solano.csv,sonamo.csv)
str(air_pollution)

sapply(air_pollution,function(x) sum(is.na(x)))

Final_dataset <- merge(air_pollution,asthma_gender,by = c("county","year"))
str(Final_dataset)
table(Final_dataset$Strata)
Final_dataset <- Final_dataset[ ,-c(3)]
table(Final_dataset$county)
table(Final_dataset$year)
table(Final_dataset$Age_Group)
sapply(Final_dataset,function(x) sum(is.na(x)))
Final_dataset$Numerator <- as.numeric(Final_dataset$Numerator)
plot(density(Final_dataset$Numerator))
str(Final_dataset)

#checking correlation 
library(corrplot)
library(ggplot2)
library(httpuv)
library(Hmisc)
library(DataExplorer)
library(plotly)
plot_histogram(Final_dataset)
densityplot(Final_dataset$Numerator)
plot(Final_dataset$Age_Group, Final_dataset$NumeratorTransformed)

corrplot(cor(Final_dataset[,c(3:14,18)]), method = "number")
corrplot(cor(Final_dataset[,c(3,5,7,9,11,18)]), method = "number")


#correlation with transfromed variables
Final_dataset$NumeratorTransformed <- log(Final_dataset$Numerator)
plot(density(Final_dataset$Numerator))
plot(density(Final_dataset$NumeratorTransformed))

corrplot(cor(Final_dataset[,c(3:12,18,19)]), method = "number")
corrplot(cor(Final_dataset[,c(3:12,19)]), method = "number")

pairs(NumeratorTransformed ~ NO2_concentration_value+PM2.5_concentration_value+PM10_concentration_value+CO_concentration_value+O3_concentration_value+Strata+Age_Group,data=Final_dataset, 
      upper.panel=panel.smooth,pch=".", span=0.1)

pairs(Final_dataset,upper.panel=panel.smooth,pch=".", span=0.1,col.line="blue")

#plot the scatter plot with all variables
plot(Numerator ~ . , data = Final_dataset)
plot(NumeratorTransformed ~ . , data = Final_dataset)

plot(Final_dataset$NumeratorTransformed, Final_dataset$NO2_concentration_value)

pairs(NumeratorTransformed ~ NO2_concentration_value+PM2.5_concentration_value+PM10_concentration_value+CO_concentration_value+O3_concentration_value
      ,data=Final_dataset,panel=panel.smooth, 
      main="Simple Scatterplot Matrix")


#checking outliers with target variables
dummy_data <- Final_dataset[,c(3,5,7,9,11,19)]
dummy_data$PM10_concentration_value <- log2(dummy_data$PM10_concentration_value)
str(dummy_data)
boxplot(Final_dataset)
boxplot(log2(Final_dataset$PM10_concentration_value))
boxplot(Final_dataset$NumeratorTransformed)
boxplot(Final_dataset$CO_concentration_value)
boxplot((Final_dataset$O3_concentration_value))
boxplot(Final_dataset$NO2_concentration_value)
boxplot(Final_dataset$PM2.5_concentration_value)
plot(density(log2(dummy_data$PM10_concentration_value)))
corrplot(cor(dummy_data), method = "number")

#checking VIF
library(car)
model1 <- lm(NumeratorTransformed ~ CO_concentration_value+O3_concentration_value+PM2.5_concentration_value+PM10_concentration_value, data = Final_dataset)
summary(model1)
car::vif(model1)

#feature selection 
library(Boruta)
library(ranger)
boruta_results<-Boruta(Final_dataset$NumeratorTransformed~.,data=Final_dataset,doTrace=2)
print(boruta_results)
getSelectedAttributes(boruta_results)
b1<-attStats(boruta_results)
print(b1)

setwd("C:/Users/Imtiyaz/Desktop/Research_computing/Data Sets")
write.csv(Final_dataset, file = "Final_dataset.csv")
