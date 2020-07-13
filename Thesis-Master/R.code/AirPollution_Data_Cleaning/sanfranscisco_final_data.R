#sanfranscisco 2011 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sanfranscisco/2011")
sanfranscisco_2011_co <- read.csv("2011sanfranciscoCO.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sanfranscisco_2011_co <- sanfranscisco_2011_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sanfranscisco_2011_co$Date <- parse_date_time(sanfranscisco_2011_co$Date, c("%m-%d-%y", "%m/%d/%y"))
sanfranscisco_2011_co <- separate(sanfranscisco_2011_co,Date, c("year","month","date"), sep = "-")
sanfranscisco_2011_co <- aggregate(sanfranscisco_2011_co[, c(4,5,7,8)], list(sanfranscisco_2011_co$year,sanfranscisco_2011_co$COUNTY), mean)
colnames(sanfranscisco_2011_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#sanfranscisco 2011 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sanfranscisco/2011")
sanfranscisco_2011_NO2 <- read.csv("2011sanfranciscoNO2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sanfranscisco_2011_NO2 <- sanfranscisco_2011_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sanfranscisco_2011_NO2$Date <- parse_date_time(sanfranscisco_2011_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
sanfranscisco_2011_NO2 <- separate(sanfranscisco_2011_NO2,Date, c("year","month","date"), sep = "-")
sanfranscisco_2011_NO2 <- aggregate(sanfranscisco_2011_NO2[, c(4,5,7,8)], list(sanfranscisco_2011_NO2$year,sanfranscisco_2011_NO2$COUNTY), mean)
colnames(sanfranscisco_2011_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#sanfranscisco 2011 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sanfranscisco/2011")
sanfranscisco_2011_O <- read.csv("2011sanfranciscoozone.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sanfranscisco_2011_O <- sanfranscisco_2011_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sanfranscisco_2011_O$Date <- parse_date_time(sanfranscisco_2011_O$Date, c("%m-%d-%y", "%m/%d/%y"))
sanfranscisco_2011_O <- separate(sanfranscisco_2011_O,Date, c("year","month","date"), sep = "-")
sanfranscisco_2011_O <- aggregate(sanfranscisco_2011_O[, c(4,5,7,8)], list(sanfranscisco_2011_O$year,sanfranscisco_2011_O$COUNTY), mean)
colnames(sanfranscisco_2011_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#sanfranscisco 2011 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sanfranscisco/2011")
sanfranscisco_2011_PM2.5 <- read.csv("2011sanfranciscoPM2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sanfranscisco_2011_PM2.5 <- sanfranscisco_2011_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sanfranscisco_2011_PM2.5$Date <- parse_date_time(sanfranscisco_2011_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
sanfranscisco_2011_PM2.5 <- separate(sanfranscisco_2011_PM2.5,Date, c("year","month","date"), sep = "-")
sanfranscisco_2011_PM2.5 <- aggregate(sanfranscisco_2011_PM2.5[, c(4,5,7,8)], list(sanfranscisco_2011_PM2.5$year,sanfranscisco_2011_PM2.5$COUNTY), mean)
colnames(sanfranscisco_2011_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#sanfranscisco 2011 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sanfranscisco/2011")
sanfranscisco_2011_PM10 <- read.csv("2011sanfranciscoPM10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sanfranscisco_2011_PM10 <- sanfranscisco_2011_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sanfranscisco_2011_PM10$Date <- parse_date_time(sanfranscisco_2011_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
sanfranscisco_2011_PM10 <- separate(sanfranscisco_2011_PM10,Date, c("year","month","date"), sep = "-")
sanfranscisco_2011_PM10 <- aggregate(sanfranscisco_2011_PM10[, c(4,5,7,8)], list(sanfranscisco_2011_PM10$year,sanfranscisco_2011_PM10$COUNTY), mean)
colnames(sanfranscisco_2011_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#sanfranscisco 2011 all pollutant data
sanfranscisco_2011 <- cbind(sanfranscisco_2011_co,sanfranscisco_2011_NO2$NO2_concentration_value,sanfranscisco_2011_NO2$NO2_AQI,sanfranscisco_2011_O$O3_concentration_value,sanfranscisco_2011_O$O3_AQI,sanfranscisco_2011_PM2.5$PM2.5_concentration_value,sanfranscisco_2011_PM2.5$PM2.5_AQI,sanfranscisco_2011_PM10$PM10_concentration_value,sanfranscisco_2011_PM10$PM10_AQI)
sanfranscisco_2011 <- sanfranscisco_2011[c(1:4,7:14,5,6)]
colnames(sanfranscisco_2011) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#---------------------------------------------------------------------------------------------------
#sanfranscisco 2012 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sanfranscisco/2012")
sanfranscisco_2012_co <- read.csv("2012sanfranciscoCO.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sanfranscisco_2012_co <- sanfranscisco_2012_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sanfranscisco_2012_co$Date <- parse_date_time(sanfranscisco_2012_co$Date, c("%m-%d-%y", "%m/%d/%y"))
sanfranscisco_2012_co <- separate(sanfranscisco_2012_co,Date, c("year","month","date"), sep = "-")
sanfranscisco_2012_co <- aggregate(sanfranscisco_2012_co[, c(4,5,7,8)], list(sanfranscisco_2012_co$year,sanfranscisco_2012_co$COUNTY), mean)
colnames(sanfranscisco_2012_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#sanfranscisco 2012 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sanfranscisco/2012")
sanfranscisco_2012_NO2 <- read.csv("2012sanfranciscoNO2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sanfranscisco_2012_NO2 <- sanfranscisco_2012_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sanfranscisco_2012_NO2$Date <- parse_date_time(sanfranscisco_2012_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
sanfranscisco_2012_NO2 <- separate(sanfranscisco_2012_NO2,Date, c("year","month","date"), sep = "-")
sanfranscisco_2012_NO2 <- aggregate(sanfranscisco_2012_NO2[, c(4,5,7,8)], list(sanfranscisco_2012_NO2$year,sanfranscisco_2012_NO2$COUNTY), mean)
colnames(sanfranscisco_2012_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#sanfranscisco 2012 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sanfranscisco/2012")
sanfranscisco_2012_O <- read.csv("2012sanfranciscoozone.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sanfranscisco_2012_O <- sanfranscisco_2012_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sanfranscisco_2012_O$Date <- parse_date_time(sanfranscisco_2012_O$Date, c("%m-%d-%y", "%m/%d/%y"))
sanfranscisco_2012_O <- separate(sanfranscisco_2012_O,Date, c("year","month","date"), sep = "-")
sanfranscisco_2012_O <- aggregate(sanfranscisco_2012_O[, c(4,5,7,8)], list(sanfranscisco_2012_O$year,sanfranscisco_2012_O$COUNTY), mean)
colnames(sanfranscisco_2012_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#sanfranscisco 2012 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sanfranscisco/2012")
sanfranscisco_2012_PM2.5 <- read.csv("2012sanfranciscoPM2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sanfranscisco_2012_PM2.5 <- sanfranscisco_2012_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sanfranscisco_2012_PM2.5$Date <- parse_date_time(sanfranscisco_2012_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
sanfranscisco_2012_PM2.5 <- separate(sanfranscisco_2012_PM2.5,Date, c("year","month","date"), sep = "-")
sanfranscisco_2012_PM2.5 <- aggregate(sanfranscisco_2012_PM2.5[, c(4,5,7,8)], list(sanfranscisco_2012_PM2.5$year,sanfranscisco_2012_PM2.5$COUNTY), mean)
colnames(sanfranscisco_2012_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#sanfranscisco 2012 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sanfranscisco/2012")
sanfranscisco_2012_PM10 <- read.csv("2012sanfranciscoPM10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sanfranscisco_2012_PM10 <- sanfranscisco_2012_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sanfranscisco_2012_PM10$Date <- parse_date_time(sanfranscisco_2012_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
sanfranscisco_2012_PM10 <- separate(sanfranscisco_2012_PM10,Date, c("year","month","date"), sep = "-")
sanfranscisco_2012_PM10 <- aggregate(sanfranscisco_2012_PM10[, c(4,5,7,8)], list(sanfranscisco_2012_PM10$year,sanfranscisco_2012_PM10$COUNTY), mean)
colnames(sanfranscisco_2012_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#sanfranscisco 2012 all pollutant data
sanfranscisco_2012 <- cbind(sanfranscisco_2012_co,sanfranscisco_2012_NO2$NO2_concentration_value,sanfranscisco_2012_NO2$NO2_AQI,sanfranscisco_2012_O$O3_concentration_value,sanfranscisco_2012_O$O3_AQI,sanfranscisco_2012_PM2.5$PM2.5_concentration_value,sanfranscisco_2012_PM2.5$PM2.5_AQI,sanfranscisco_2012_PM10$PM10_concentration_value,sanfranscisco_2012_PM10$PM10_AQI)
sanfranscisco_2012 <- sanfranscisco_2012[c(1:4,7:14,5,6)]
colnames(sanfranscisco_2012) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#-------------------------------------------------------------------------------------------------------
#sanfranscisco 2013 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sanfranscisco/2013")
sanfranscisco_2013_co <- read.csv("2013sanfranciscoCO.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sanfranscisco_2013_co <- sanfranscisco_2013_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sanfranscisco_2013_co$Date <- parse_date_time(sanfranscisco_2013_co$Date, c("%m-%d-%y", "%m/%d/%y"))
sanfranscisco_2013_co <- separate(sanfranscisco_2013_co,Date, c("year","month","date"), sep = "-")
sanfranscisco_2013_co <- aggregate(sanfranscisco_2013_co[, c(4,5,7,8)], list(sanfranscisco_2013_co$year,sanfranscisco_2013_co$COUNTY), mean)
colnames(sanfranscisco_2013_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#sanfranscisco 2013 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sanfranscisco/2013")
sanfranscisco_2013_NO2 <- read.csv("2013sanfranciscoNO2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sanfranscisco_2013_NO2 <- sanfranscisco_2013_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sanfranscisco_2013_NO2$Date <- parse_date_time(sanfranscisco_2013_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
sanfranscisco_2013_NO2 <- separate(sanfranscisco_2013_NO2,Date, c("year","month","date"), sep = "-")
sanfranscisco_2013_NO2 <- aggregate(sanfranscisco_2013_NO2[, c(4,5,7,8)], list(sanfranscisco_2013_NO2$year,sanfranscisco_2013_NO2$COUNTY), mean)
colnames(sanfranscisco_2013_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#sanfranscisco 2013 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sanfranscisco/2013")
sanfranscisco_2013_O <- read.csv("2013sanfranciscoozone.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sanfranscisco_2013_O <- sanfranscisco_2013_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sanfranscisco_2013_O$Date <- parse_date_time(sanfranscisco_2013_O$Date, c("%m-%d-%y", "%m/%d/%y"))
sanfranscisco_2013_O <- separate(sanfranscisco_2013_O,Date, c("year","month","date"), sep = "-")
sanfranscisco_2013_O <- aggregate(sanfranscisco_2013_O[, c(4,5,7,8)], list(sanfranscisco_2013_O$year,sanfranscisco_2013_O$COUNTY), mean)
colnames(sanfranscisco_2013_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#sanfranscisco 2013 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sanfranscisco/2013")
sanfranscisco_2013_PM2.5 <- read.csv("2013sanfranciscoPM2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sanfranscisco_2013_PM2.5 <- sanfranscisco_2013_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sanfranscisco_2013_PM2.5$Date <- parse_date_time(sanfranscisco_2013_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
sanfranscisco_2013_PM2.5 <- separate(sanfranscisco_2013_PM2.5,Date, c("year","month","date"), sep = "-")
sanfranscisco_2013_PM2.5 <- aggregate(sanfranscisco_2013_PM2.5[, c(4,5,7,8)], list(sanfranscisco_2013_PM2.5$year,sanfranscisco_2013_PM2.5$COUNTY), mean)
colnames(sanfranscisco_2013_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#sanfranscisco 2013 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sanfranscisco/2013")
sanfranscisco_2013_PM10 <- read.csv("2013sanfranciscoPM10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sanfranscisco_2013_PM10 <- sanfranscisco_2013_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sanfranscisco_2013_PM10$Date <- parse_date_time(sanfranscisco_2013_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
sanfranscisco_2013_PM10 <- separate(sanfranscisco_2013_PM10,Date, c("year","month","date"), sep = "-")
sanfranscisco_2013_PM10 <- aggregate(sanfranscisco_2013_PM10[, c(4,5,7,8)], list(sanfranscisco_2013_PM10$year,sanfranscisco_2013_PM10$COUNTY), mean)
colnames(sanfranscisco_2013_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#sanfranscisco 2013 all pollutant data
sanfranscisco_2013 <- cbind(sanfranscisco_2013_co,sanfranscisco_2013_NO2$NO2_concentration_value,sanfranscisco_2013_NO2$NO2_AQI,sanfranscisco_2013_O$O3_concentration_value,sanfranscisco_2013_O$O3_AQI,sanfranscisco_2013_PM2.5$PM2.5_concentration_value,sanfranscisco_2013_PM2.5$PM2.5_AQI,sanfranscisco_2013_PM10$PM10_concentration_value,sanfranscisco_2013_PM10$PM10_AQI)
sanfranscisco_2013 <- sanfranscisco_2013[c(1:4,7:14,5,6)]
colnames(sanfranscisco_2013) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#-------------------------------------------------------------------------------------------------------------
#sanfranscisco 2014 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sanfranscisco/2014")
sanfranscisco_2014_co <- read.csv("2014sanfranciscoCO.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sanfranscisco_2014_co <- sanfranscisco_2014_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sanfranscisco_2014_co$Date <- parse_date_time(sanfranscisco_2014_co$Date, c("%m-%d-%y", "%m/%d/%y"))
sanfranscisco_2014_co <- separate(sanfranscisco_2014_co,Date, c("year","month","date"), sep = "-")
sanfranscisco_2014_co <- aggregate(sanfranscisco_2014_co[, c(4,5,7,8)], list(sanfranscisco_2014_co$year,sanfranscisco_2014_co$COUNTY), mean)
colnames(sanfranscisco_2014_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#sanfranscisco 2014 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sanfranscisco/2014")
sanfranscisco_2014_NO2 <- read.csv("2014sanfranciscoNO2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sanfranscisco_2014_NO2 <- sanfranscisco_2014_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sanfranscisco_2014_NO2$Date <- parse_date_time(sanfranscisco_2014_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
sanfranscisco_2014_NO2 <- separate(sanfranscisco_2014_NO2,Date, c("year","month","date"), sep = "-")
sanfranscisco_2014_NO2 <- aggregate(sanfranscisco_2014_NO2[, c(4,5,7,8)], list(sanfranscisco_2014_NO2$year,sanfranscisco_2014_NO2$COUNTY), mean)
colnames(sanfranscisco_2014_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#sanfranscisco 2014 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sanfranscisco/2014")
sanfranscisco_2014_O <- read.csv("2014sanfranciscoozone.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sanfranscisco_2014_O <- sanfranscisco_2014_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sanfranscisco_2014_O$Date <- parse_date_time(sanfranscisco_2014_O$Date, c("%m-%d-%y", "%m/%d/%y"))
sanfranscisco_2014_O <- separate(sanfranscisco_2014_O,Date, c("year","month","date"), sep = "-")
sanfranscisco_2014_O <- aggregate(sanfranscisco_2014_O[, c(4,5,7,8)], list(sanfranscisco_2014_O$year,sanfranscisco_2014_O$COUNTY), mean)
colnames(sanfranscisco_2014_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#sanfranscisco 2014 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sanfranscisco/2014")
sanfranscisco_2014_PM2.5 <- read.csv("2014sanfranciscoPM2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sanfranscisco_2014_PM2.5 <- sanfranscisco_2014_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sanfranscisco_2014_PM2.5$Date <- parse_date_time(sanfranscisco_2014_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
sanfranscisco_2014_PM2.5 <- separate(sanfranscisco_2014_PM2.5,Date, c("year","month","date"), sep = "-")
sanfranscisco_2014_PM2.5 <- aggregate(sanfranscisco_2014_PM2.5[, c(4,5,7,8)], list(sanfranscisco_2014_PM2.5$year,sanfranscisco_2014_PM2.5$COUNTY), mean)
colnames(sanfranscisco_2014_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#sanfranscisco 2014 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sanfranscisco/2014")
sanfranscisco_2014_PM10 <- read.csv("2014sanfranciscoPM10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sanfranscisco_2014_PM10 <- sanfranscisco_2014_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sanfranscisco_2014_PM10$Date <- parse_date_time(sanfranscisco_2014_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
sanfranscisco_2014_PM10 <- separate(sanfranscisco_2014_PM10,Date, c("year","month","date"), sep = "-")
sanfranscisco_2014_PM10 <- aggregate(sanfranscisco_2014_PM10[, c(4,5,7,8)], list(sanfranscisco_2014_PM10$year,sanfranscisco_2014_PM10$COUNTY), mean)
colnames(sanfranscisco_2014_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#sanfranscisco 2014 all pollutant data
sanfranscisco_2014 <- cbind(sanfranscisco_2014_co,sanfranscisco_2014_NO2$NO2_concentration_value,sanfranscisco_2014_NO2$NO2_AQI,sanfranscisco_2014_O$O3_concentration_value,sanfranscisco_2014_O$O3_AQI,sanfranscisco_2014_PM2.5$PM2.5_concentration_value,sanfranscisco_2014_PM2.5$PM2.5_AQI,sanfranscisco_2014_PM10$PM10_concentration_value,sanfranscisco_2014_PM10$PM10_AQI)
sanfranscisco_2014 <- sanfranscisco_2014[c(1:4,7:14,5,6)]
colnames(sanfranscisco_2014) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#----------------------------------------------------------------------------------------------------------------------

#sanfranscisco 2015 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sanfranscisco/2015")
sanfranscisco_2015_co <- read.csv("2015sanfranciscoCO.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sanfranscisco_2015_co <- sanfranscisco_2015_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sanfranscisco_2015_co$Date <- parse_date_time(sanfranscisco_2015_co$Date, c("%m-%d-%y", "%m/%d/%y"))
sanfranscisco_2015_co <- separate(sanfranscisco_2015_co,Date, c("year","month","date"), sep = "-")
sanfranscisco_2015_co <- aggregate(sanfranscisco_2015_co[, c(4,5,7,8)], list(sanfranscisco_2015_co$year,sanfranscisco_2015_co$COUNTY), mean)
colnames(sanfranscisco_2015_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#sanfranscisco 2015 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sanfranscisco/2015")
sanfranscisco_2015_NO2 <- read.csv("2015sanfranciscoNO2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sanfranscisco_2015_NO2 <- sanfranscisco_2015_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sanfranscisco_2015_NO2$Date <- parse_date_time(sanfranscisco_2015_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
sanfranscisco_2015_NO2 <- separate(sanfranscisco_2015_NO2,Date, c("year","month","date"), sep = "-")
sanfranscisco_2015_NO2 <- aggregate(sanfranscisco_2015_NO2[, c(4,5,7,8)], list(sanfranscisco_2015_NO2$year,sanfranscisco_2015_NO2$COUNTY), mean)
colnames(sanfranscisco_2015_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#sanfranscisco 2015 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sanfranscisco/2015")
sanfranscisco_2015_O <- read.csv("2015sanfranciscoozone.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sanfranscisco_2015_O <- sanfranscisco_2015_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sanfranscisco_2015_O$Date <- parse_date_time(sanfranscisco_2015_O$Date, c("%m-%d-%y", "%m/%d/%y"))
sanfranscisco_2015_O <- separate(sanfranscisco_2015_O,Date, c("year","month","date"), sep = "-")
sanfranscisco_2015_O <- aggregate(sanfranscisco_2015_O[, c(4,5,7,8)], list(sanfranscisco_2015_O$year,sanfranscisco_2015_O$COUNTY), mean)
colnames(sanfranscisco_2015_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#sanfranscisco 2015 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sanfranscisco/2015")
sanfranscisco_2015_PM2.5 <- read.csv("2015sanfranciscoPM2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sanfranscisco_2015_PM2.5 <- sanfranscisco_2015_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sanfranscisco_2015_PM2.5$Date <- parse_date_time(sanfranscisco_2015_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
sanfranscisco_2015_PM2.5 <- separate(sanfranscisco_2015_PM2.5,Date, c("year","month","date"), sep = "-")
sanfranscisco_2015_PM2.5 <- aggregate(sanfranscisco_2015_PM2.5[, c(4,5,7,8)], list(sanfranscisco_2015_PM2.5$year,sanfranscisco_2015_PM2.5$COUNTY), mean)
colnames(sanfranscisco_2015_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#sanfranscisco 2015 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sanfranscisco/2015")
sanfranscisco_2015_PM10 <- read.csv("2015sanfranciscoPM10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sanfranscisco_2015_PM10 <- sanfranscisco_2015_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sanfranscisco_2015_PM10$Date <- parse_date_time(sanfranscisco_2015_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
sanfranscisco_2015_PM10 <- separate(sanfranscisco_2015_PM10,Date, c("year","month","date"), sep = "-")
sanfranscisco_2015_PM10 <- aggregate(sanfranscisco_2015_PM10[, c(4,5,7,8)], list(sanfranscisco_2015_PM10$year,sanfranscisco_2015_PM10$COUNTY), mean)
colnames(sanfranscisco_2015_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#sanfranscisco 2015 all pollutant data
sanfranscisco_2015 <- cbind(sanfranscisco_2015_co,sanfranscisco_2015_NO2$NO2_concentration_value,sanfranscisco_2015_NO2$NO2_AQI,sanfranscisco_2015_O$O3_concentration_value,sanfranscisco_2015_O$O3_AQI,sanfranscisco_2015_PM2.5$PM2.5_concentration_value,sanfranscisco_2015_PM2.5$PM2.5_AQI,sanfranscisco_2015_PM10$PM10_concentration_value,sanfranscisco_2015_PM10$PM10_AQI)
sanfranscisco_2015 <- sanfranscisco_2015[c(1:4,7:14,5,6)]
colnames(sanfranscisco_2015) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#-------------------------------------------------------------------------------------------------------
#sanfranscisco 2016 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sanfranscisco/2016")
sanfranscisco_2016_co <- read.csv("2016sanfranciscoCO.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sanfranscisco_2016_co <- sanfranscisco_2016_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sanfranscisco_2016_co$Date <- parse_date_time(sanfranscisco_2016_co$Date, c("%m-%d-%y", "%m/%d/%y"))
sanfranscisco_2016_co <- separate(sanfranscisco_2016_co,Date, c("year","month","date"), sep = "-")
sanfranscisco_2016_co <- aggregate(sanfranscisco_2016_co[, c(4,5,7,8)], list(sanfranscisco_2016_co$year,sanfranscisco_2016_co$COUNTY), mean)
colnames(sanfranscisco_2016_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#sanfranscisco 2016 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sanfranscisco/2016")
sanfranscisco_2016_NO2 <- read.csv("2016sanfranciscoNO2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sanfranscisco_2016_NO2 <- sanfranscisco_2016_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sanfranscisco_2016_NO2$Date <- parse_date_time(sanfranscisco_2016_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
sanfranscisco_2016_NO2 <- separate(sanfranscisco_2016_NO2,Date, c("year","month","date"), sep = "-")
sanfranscisco_2016_NO2 <- aggregate(sanfranscisco_2016_NO2[, c(4,5,7,8)], list(sanfranscisco_2016_NO2$year,sanfranscisco_2016_NO2$COUNTY), mean)
colnames(sanfranscisco_2016_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#sanfranscisco 2016 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sanfranscisco/2016")
sanfranscisco_2016_O <- read.csv("2016sanfranciscoozone.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sanfranscisco_2016_O <- sanfranscisco_2016_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sanfranscisco_2016_O$Date <- parse_date_time(sanfranscisco_2016_O$Date, c("%m-%d-%y", "%m/%d/%y"))
sanfranscisco_2016_O <- separate(sanfranscisco_2016_O,Date, c("year","month","date"), sep = "-")
sanfranscisco_2016_O <- aggregate(sanfranscisco_2016_O[, c(4,5,7,8)], list(sanfranscisco_2016_O$year,sanfranscisco_2016_O$COUNTY), mean)
colnames(sanfranscisco_2016_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#sanfranscisco 2016 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sanfranscisco/2016")
sanfranscisco_2016_PM2.5 <- read.csv("2016sanfranciscoPM2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sanfranscisco_2016_PM2.5 <- sanfranscisco_2016_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sanfranscisco_2016_PM2.5$Date <- parse_date_time(sanfranscisco_2016_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
sanfranscisco_2016_PM2.5 <- separate(sanfranscisco_2016_PM2.5,Date, c("year","month","date"), sep = "-")
sanfranscisco_2016_PM2.5 <- aggregate(sanfranscisco_2016_PM2.5[, c(4,5,7,8)], list(sanfranscisco_2016_PM2.5$year,sanfranscisco_2016_PM2.5$COUNTY), mean)
colnames(sanfranscisco_2016_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#sanfranscisco 2016 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sanfranscisco/2016")
sanfranscisco_2016_PM10 <- read.csv("2016sanfranciscoPM10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sanfranscisco_2016_PM10 <- sanfranscisco_2016_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sanfranscisco_2016_PM10$Date <- parse_date_time(sanfranscisco_2016_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
sanfranscisco_2016_PM10 <- separate(sanfranscisco_2016_PM10,Date, c("year","month","date"), sep = "-")
sanfranscisco_2016_PM10 <- aggregate(sanfranscisco_2016_PM10[, c(4,5,7,8)], list(sanfranscisco_2016_PM10$year,sanfranscisco_2016_PM10$COUNTY), mean)
colnames(sanfranscisco_2016_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#sanfranscisco 2016 all pollutant data
sanfranscisco_2016 <- cbind(sanfranscisco_2016_co,sanfranscisco_2016_NO2$NO2_concentration_value,sanfranscisco_2016_NO2$NO2_AQI,sanfranscisco_2016_O$O3_concentration_value,sanfranscisco_2016_O$O3_AQI,sanfranscisco_2016_PM2.5$PM2.5_concentration_value,sanfranscisco_2016_PM2.5$PM2.5_AQI,sanfranscisco_2016_PM10$PM10_concentration_value,sanfranscisco_2016_PM10$PM10_AQI)
sanfranscisco_2016 <- sanfranscisco_2016[c(1:4,7:14,5,6)]
colnames(sanfranscisco_2016) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#----------------------------------------------------------------------------------------------------------
#sanfranscisco 2017 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sanfranscisco/2017")
sanfranscisco_2017_co <- read.csv("2017sanfranciscoCO.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sanfranscisco_2017_co <- sanfranscisco_2017_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sanfranscisco_2017_co$Date <- parse_date_time(sanfranscisco_2017_co$Date, c("%m-%d-%y", "%m/%d/%y"))
sanfranscisco_2017_co <- separate(sanfranscisco_2017_co,Date, c("year","month","date"), sep = "-")
sanfranscisco_2017_co <- aggregate(sanfranscisco_2017_co[, c(4,5,7,8)], list(sanfranscisco_2017_co$year,sanfranscisco_2017_co$COUNTY), mean)
colnames(sanfranscisco_2017_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#sanfranscisco 2017 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sanfranscisco/2017")
sanfranscisco_2017_NO2 <- read.csv("2017sanfranciscoNO2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sanfranscisco_2017_NO2 <- sanfranscisco_2017_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sanfranscisco_2017_NO2$Date <- parse_date_time(sanfranscisco_2017_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
sanfranscisco_2017_NO2 <- separate(sanfranscisco_2017_NO2,Date, c("year","month","date"), sep = "-")
sanfranscisco_2017_NO2 <- aggregate(sanfranscisco_2017_NO2[, c(4,5,7,8)], list(sanfranscisco_2017_NO2$year,sanfranscisco_2017_NO2$COUNTY), mean)
colnames(sanfranscisco_2017_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#sanfranscisco 2017 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sanfranscisco/2017")
sanfranscisco_2017_O <- read.csv("2017sanfranciscoozone.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sanfranscisco_2017_O <- sanfranscisco_2017_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sanfranscisco_2017_O$Date <- parse_date_time(sanfranscisco_2017_O$Date, c("%m-%d-%y", "%m/%d/%y"))
sanfranscisco_2017_O <- separate(sanfranscisco_2017_O,Date, c("year","month","date"), sep = "-")
sanfranscisco_2017_O <- aggregate(sanfranscisco_2017_O[, c(4,5,7,8)], list(sanfranscisco_2017_O$year,sanfranscisco_2017_O$COUNTY), mean)
colnames(sanfranscisco_2017_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#sanfranscisco 2017 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sanfranscisco/2017")
sanfranscisco_2017_PM2.5 <- read.csv("2017sanfranciscoPM2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sanfranscisco_2017_PM2.5 <- sanfranscisco_2017_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sanfranscisco_2017_PM2.5$Date <- parse_date_time(sanfranscisco_2017_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
sanfranscisco_2017_PM2.5 <- separate(sanfranscisco_2017_PM2.5,Date, c("year","month","date"), sep = "-")
sanfranscisco_2017_PM2.5 <- aggregate(sanfranscisco_2017_PM2.5[, c(4,5,7,8)], list(sanfranscisco_2017_PM2.5$year,sanfranscisco_2017_PM2.5$COUNTY), mean)
colnames(sanfranscisco_2017_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#sanfranscisco 2017 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sanfranscisco/2017")
sanfranscisco_2017_PM10 <- read.csv("2017sanfranciscoPM10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sanfranscisco_2017_PM10 <- sanfranscisco_2017_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sanfranscisco_2017_PM10$Date <- parse_date_time(sanfranscisco_2017_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
sanfranscisco_2017_PM10 <- separate(sanfranscisco_2017_PM10,Date, c("year","month","date"), sep = "-")
sanfranscisco_2017_PM10 <- aggregate(sanfranscisco_2017_PM10[, c(4,5,7,8)], list(sanfranscisco_2017_PM10$year,sanfranscisco_2017_PM10$COUNTY), mean)
colnames(sanfranscisco_2017_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#sanfranscisco 2017 all pollutant data
sanfranscisco_2017 <- cbind(sanfranscisco_2017_co,sanfranscisco_2017_NO2$NO2_concentration_value,sanfranscisco_2017_NO2$NO2_AQI,sanfranscisco_2017_O$O3_concentration_value,sanfranscisco_2017_O$O3_AQI,sanfranscisco_2017_PM2.5$PM2.5_concentration_value,sanfranscisco_2017_PM2.5$PM2.5_AQI,sanfranscisco_2017_PM10$PM10_concentration_value,sanfranscisco_2017_PM10$PM10_AQI)
sanfranscisco_2017 <- sanfranscisco_2017[c(1:4,7:14,5,6)]
colnames(sanfranscisco_2017) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#--------------------------------------------------------------------------------------------------------
#sanfranscisco final data
sanfranscisco <- rbind(sanfranscisco_2011,sanfranscisco_2012,sanfranscisco_2013,sanfranscisco_2014,sanfranscisco_2015,sanfranscisco_2016,sanfranscisco_2017)
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/FINAL_DATASETS")
write.csv(sanfranscisco, file = "sanfrancisco.csv")