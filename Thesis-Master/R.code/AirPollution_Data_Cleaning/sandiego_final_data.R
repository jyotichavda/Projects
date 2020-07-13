#sandiego 2011 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sandiego/2011")
sandiego_2011_co <- read.csv("2011sandiegoCO.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sandiego_2011_co <- sandiego_2011_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sandiego_2011_co$Date <- parse_date_time(sandiego_2011_co$Date, c("%m-%d-%y", "%m/%d/%y"))
sandiego_2011_co <- separate(sandiego_2011_co,Date, c("year","month","date"), sep = "-")
sandiego_2011_co <- aggregate(sandiego_2011_co[, c(4,5,7,8)], list(sandiego_2011_co$year,sandiego_2011_co$COUNTY), mean)
colnames(sandiego_2011_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#sandiego 2011 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sandiego/2011")
sandiego_2011_NO2 <- read.csv("2011sandiegoNO2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sandiego_2011_NO2 <- sandiego_2011_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sandiego_2011_NO2$Date <- parse_date_time(sandiego_2011_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
sandiego_2011_NO2 <- separate(sandiego_2011_NO2,Date, c("year","month","date"), sep = "-")
sandiego_2011_NO2 <- aggregate(sandiego_2011_NO2[, c(4,5,7,8)], list(sandiego_2011_NO2$year,sandiego_2011_NO2$COUNTY), mean)
colnames(sandiego_2011_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#sandiego 2011 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sandiego/2011")
sandiego_2011_O <- read.csv("2011sandiegoozone.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sandiego_2011_O <- sandiego_2011_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sandiego_2011_O$Date <- parse_date_time(sandiego_2011_O$Date, c("%m-%d-%y", "%m/%d/%y"))
sandiego_2011_O <- separate(sandiego_2011_O,Date, c("year","month","date"), sep = "-")
sandiego_2011_O <- aggregate(sandiego_2011_O[, c(4,5,7,8)], list(sandiego_2011_O$year,sandiego_2011_O$COUNTY), mean)
colnames(sandiego_2011_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#sandiego 2011 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sandiego/2011")
sandiego_2011_PM2.5 <- read.csv("2011sandiegoPM2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sandiego_2011_PM2.5 <- sandiego_2011_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sandiego_2011_PM2.5$Date <- parse_date_time(sandiego_2011_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
sandiego_2011_PM2.5 <- separate(sandiego_2011_PM2.5,Date, c("year","month","date"), sep = "-")
sandiego_2011_PM2.5 <- aggregate(sandiego_2011_PM2.5[, c(4,5,7,8)], list(sandiego_2011_PM2.5$year,sandiego_2011_PM2.5$COUNTY), mean)
colnames(sandiego_2011_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#sandiego 2011 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sandiego/2011")
sandiego_2011_PM10 <- read.csv("2011sandiegoPM10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sandiego_2011_PM10 <- sandiego_2011_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sandiego_2011_PM10$Date <- parse_date_time(sandiego_2011_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
sandiego_2011_PM10 <- separate(sandiego_2011_PM10,Date, c("year","month","date"), sep = "-")
sandiego_2011_PM10 <- aggregate(sandiego_2011_PM10[, c(4,5,7,8)], list(sandiego_2011_PM10$year,sandiego_2011_PM10$COUNTY), mean)
colnames(sandiego_2011_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#sandiego 2011 all pollutant data
sandiego_2011 <- cbind(sandiego_2011_co,sandiego_2011_NO2$NO2_concentration_value,sandiego_2011_NO2$NO2_AQI,sandiego_2011_O$O3_concentration_value,sandiego_2011_O$O3_AQI,sandiego_2011_PM2.5$PM2.5_concentration_value,sandiego_2011_PM2.5$PM2.5_AQI,sandiego_2011_PM10$PM10_concentration_value,sandiego_2011_PM10$PM10_AQI)
sandiego_2011 <- sandiego_2011[c(1:4,7:14,5,6)]
colnames(sandiego_2011) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#---------------------------------------------------------------------------------------------------
#sandiego 2012 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sandiego/2012")
sandiego_2012_co <- read.csv("2012sandiegoCO.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sandiego_2012_co <- sandiego_2012_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sandiego_2012_co$Date <- parse_date_time(sandiego_2012_co$Date, c("%m-%d-%y", "%m/%d/%y"))
sandiego_2012_co <- separate(sandiego_2012_co,Date, c("year","month","date"), sep = "-")
sandiego_2012_co <- aggregate(sandiego_2012_co[, c(4,5,7,8)], list(sandiego_2012_co$year,sandiego_2012_co$COUNTY), mean)
colnames(sandiego_2012_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#sandiego 2012 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sandiego/2012")
sandiego_2012_NO2 <- read.csv("2012sandiegoNO2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sandiego_2012_NO2 <- sandiego_2012_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sandiego_2012_NO2$Date <- parse_date_time(sandiego_2012_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
sandiego_2012_NO2 <- separate(sandiego_2012_NO2,Date, c("year","month","date"), sep = "-")
sandiego_2012_NO2 <- aggregate(sandiego_2012_NO2[, c(4,5,7,8)], list(sandiego_2012_NO2$year,sandiego_2012_NO2$COUNTY), mean)
colnames(sandiego_2012_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#sandiego 2012 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sandiego/2012")
sandiego_2012_O <- read.csv("2012sandiegoozone.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sandiego_2012_O <- sandiego_2012_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sandiego_2012_O$Date <- parse_date_time(sandiego_2012_O$Date, c("%m-%d-%y", "%m/%d/%y"))
sandiego_2012_O <- separate(sandiego_2012_O,Date, c("year","month","date"), sep = "-")
sandiego_2012_O <- aggregate(sandiego_2012_O[, c(4,5,7,8)], list(sandiego_2012_O$year,sandiego_2012_O$COUNTY), mean)
colnames(sandiego_2012_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#sandiego 2012 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sandiego/2012")
sandiego_2012_PM2.5 <- read.csv("2012sandiegoPM2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sandiego_2012_PM2.5 <- sandiego_2012_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sandiego_2012_PM2.5$Date <- parse_date_time(sandiego_2012_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
sandiego_2012_PM2.5 <- separate(sandiego_2012_PM2.5,Date, c("year","month","date"), sep = "-")
sandiego_2012_PM2.5 <- aggregate(sandiego_2012_PM2.5[, c(4,5,7,8)], list(sandiego_2012_PM2.5$year,sandiego_2012_PM2.5$COUNTY), mean)
colnames(sandiego_2012_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#sandiego 2012 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sandiego/2012")
sandiego_2012_PM10 <- read.csv("2012sandiegoPM10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sandiego_2012_PM10 <- sandiego_2012_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sandiego_2012_PM10$Date <- parse_date_time(sandiego_2012_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
sandiego_2012_PM10 <- separate(sandiego_2012_PM10,Date, c("year","month","date"), sep = "-")
sandiego_2012_PM10 <- aggregate(sandiego_2012_PM10[, c(4,5,7,8)], list(sandiego_2012_PM10$year,sandiego_2012_PM10$COUNTY), mean)
colnames(sandiego_2012_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#sandiego 2012 all pollutant data
sandiego_2012 <- cbind(sandiego_2012_co,sandiego_2012_NO2$NO2_concentration_value,sandiego_2012_NO2$NO2_AQI,sandiego_2012_O$O3_concentration_value,sandiego_2012_O$O3_AQI,sandiego_2012_PM2.5$PM2.5_concentration_value,sandiego_2012_PM2.5$PM2.5_AQI,sandiego_2012_PM10$PM10_concentration_value,sandiego_2012_PM10$PM10_AQI)
sandiego_2012 <- sandiego_2012[c(1:4,7:14,5,6)]
colnames(sandiego_2012) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#-------------------------------------------------------------------------------------------------------
#sandiego 2013 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sandiego/2013")
sandiego_2013_co <- read.csv("2013sandiegoCO.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sandiego_2013_co <- sandiego_2013_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sandiego_2013_co$Date <- parse_date_time(sandiego_2013_co$Date, c("%m-%d-%y", "%m/%d/%y"))
sandiego_2013_co <- separate(sandiego_2013_co,Date, c("year","month","date"), sep = "-")
sandiego_2013_co <- aggregate(sandiego_2013_co[, c(4,5,7,8)], list(sandiego_2013_co$year,sandiego_2013_co$COUNTY), mean)
colnames(sandiego_2013_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#sandiego 2013 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sandiego/2013")
sandiego_2013_NO2 <- read.csv("2013sandiegoNO2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sandiego_2013_NO2 <- sandiego_2013_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sandiego_2013_NO2$Date <- parse_date_time(sandiego_2013_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
sandiego_2013_NO2 <- separate(sandiego_2013_NO2,Date, c("year","month","date"), sep = "-")
sandiego_2013_NO2 <- aggregate(sandiego_2013_NO2[, c(4,5,7,8)], list(sandiego_2013_NO2$year,sandiego_2013_NO2$COUNTY), mean)
colnames(sandiego_2013_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#sandiego 2013 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sandiego/2013")
sandiego_2013_O <- read.csv("2013sandiegoozone.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sandiego_2013_O <- sandiego_2013_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sandiego_2013_O$Date <- parse_date_time(sandiego_2013_O$Date, c("%m-%d-%y", "%m/%d/%y"))
sandiego_2013_O <- separate(sandiego_2013_O,Date, c("year","month","date"), sep = "-")
sandiego_2013_O <- aggregate(sandiego_2013_O[, c(4,5,7,8)], list(sandiego_2013_O$year,sandiego_2013_O$COUNTY), mean)
colnames(sandiego_2013_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#sandiego 2013 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sandiego/2013")
sandiego_2013_PM2.5 <- read.csv("2013sandiegoPM2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sandiego_2013_PM2.5 <- sandiego_2013_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sandiego_2013_PM2.5$Date <- parse_date_time(sandiego_2013_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
sandiego_2013_PM2.5 <- separate(sandiego_2013_PM2.5,Date, c("year","month","date"), sep = "-")
sandiego_2013_PM2.5 <- aggregate(sandiego_2013_PM2.5[, c(4,5,7,8)], list(sandiego_2013_PM2.5$year,sandiego_2013_PM2.5$COUNTY), mean)
colnames(sandiego_2013_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#sandiego 2013 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sandiego/2013")
sandiego_2013_PM10 <- read.csv("2013sandiegoPM10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sandiego_2013_PM10 <- sandiego_2013_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sandiego_2013_PM10$Date <- parse_date_time(sandiego_2013_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
sandiego_2013_PM10 <- separate(sandiego_2013_PM10,Date, c("year","month","date"), sep = "-")
sandiego_2013_PM10 <- aggregate(sandiego_2013_PM10[, c(4,5,7,8)], list(sandiego_2013_PM10$year,sandiego_2013_PM10$COUNTY), mean)
colnames(sandiego_2013_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#sandiego 2013 all pollutant data
sandiego_2013 <- cbind(sandiego_2013_co,sandiego_2013_NO2$NO2_concentration_value,sandiego_2013_NO2$NO2_AQI,sandiego_2013_O$O3_concentration_value,sandiego_2013_O$O3_AQI,sandiego_2013_PM2.5$PM2.5_concentration_value,sandiego_2013_PM2.5$PM2.5_AQI,sandiego_2013_PM10$PM10_concentration_value,sandiego_2013_PM10$PM10_AQI)
sandiego_2013 <- sandiego_2013[c(1:4,7:14,5,6)]
colnames(sandiego_2013) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#-------------------------------------------------------------------------------------------------------------
#sandiego 2014 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sandiego/2014")
sandiego_2014_co <- read.csv("2014sandiegoCO.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sandiego_2014_co <- sandiego_2014_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sandiego_2014_co$Date <- parse_date_time(sandiego_2014_co$Date, c("%m-%d-%y", "%m/%d/%y"))
sandiego_2014_co <- separate(sandiego_2014_co,Date, c("year","month","date"), sep = "-")
sandiego_2014_co <- aggregate(sandiego_2014_co[, c(4,5,7,8)], list(sandiego_2014_co$year,sandiego_2014_co$COUNTY), mean)
colnames(sandiego_2014_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#sandiego 2014 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sandiego/2014")
sandiego_2014_NO2 <- read.csv("2014sandiegoNO2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sandiego_2014_NO2 <- sandiego_2014_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sandiego_2014_NO2$Date <- parse_date_time(sandiego_2014_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
sandiego_2014_NO2 <- separate(sandiego_2014_NO2,Date, c("year","month","date"), sep = "-")
sandiego_2014_NO2 <- aggregate(sandiego_2014_NO2[, c(4,5,7,8)], list(sandiego_2014_NO2$year,sandiego_2014_NO2$COUNTY), mean)
colnames(sandiego_2014_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#sandiego 2014 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sandiego/2014")
sandiego_2014_O <- read.csv("2014sandiegoozone.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sandiego_2014_O <- sandiego_2014_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sandiego_2014_O$Date <- parse_date_time(sandiego_2014_O$Date, c("%m-%d-%y", "%m/%d/%y"))
sandiego_2014_O <- separate(sandiego_2014_O,Date, c("year","month","date"), sep = "-")
sandiego_2014_O <- aggregate(sandiego_2014_O[, c(4,5,7,8)], list(sandiego_2014_O$year,sandiego_2014_O$COUNTY), mean)
colnames(sandiego_2014_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#sandiego 2014 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sandiego/2014")
sandiego_2014_PM2.5 <- read.csv("2014sandiegoPM2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sandiego_2014_PM2.5 <- sandiego_2014_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sandiego_2014_PM2.5$Date <- parse_date_time(sandiego_2014_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
sandiego_2014_PM2.5 <- separate(sandiego_2014_PM2.5,Date, c("year","month","date"), sep = "-")
sandiego_2014_PM2.5 <- aggregate(sandiego_2014_PM2.5[, c(4,5,7,8)], list(sandiego_2014_PM2.5$year,sandiego_2014_PM2.5$COUNTY), mean)
colnames(sandiego_2014_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#sandiego 2014 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sandiego/2014")
sandiego_2014_PM10 <- read.csv("2014sandiegoPM10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sandiego_2014_PM10 <- sandiego_2014_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sandiego_2014_PM10$Date <- parse_date_time(sandiego_2014_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
sandiego_2014_PM10 <- separate(sandiego_2014_PM10,Date, c("year","month","date"), sep = "-")
sandiego_2014_PM10 <- aggregate(sandiego_2014_PM10[, c(4,5,7,8)], list(sandiego_2014_PM10$year,sandiego_2014_PM10$COUNTY), mean)
colnames(sandiego_2014_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#sandiego 2014 all pollutant data
sandiego_2014 <- cbind(sandiego_2014_co,sandiego_2014_NO2$NO2_concentration_value,sandiego_2014_NO2$NO2_AQI,sandiego_2014_O$O3_concentration_value,sandiego_2014_O$O3_AQI,sandiego_2014_PM2.5$PM2.5_concentration_value,sandiego_2014_PM2.5$PM2.5_AQI,sandiego_2014_PM10$PM10_concentration_value,sandiego_2014_PM10$PM10_AQI)
sandiego_2014 <- sandiego_2014[c(1:4,7:14,5,6)]
colnames(sandiego_2014) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#----------------------------------------------------------------------------------------------------------------------

#sandiego 2015 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sandiego/2015")
sandiego_2015_co <- read.csv("2015sandiegoCO.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sandiego_2015_co <- sandiego_2015_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sandiego_2015_co$Date <- parse_date_time(sandiego_2015_co$Date, c("%m-%d-%y", "%m/%d/%y"))
sandiego_2015_co <- separate(sandiego_2015_co,Date, c("year","month","date"), sep = "-")
sandiego_2015_co <- aggregate(sandiego_2015_co[, c(4,5,7,8)], list(sandiego_2015_co$year,sandiego_2015_co$COUNTY), mean)
colnames(sandiego_2015_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#sandiego 2015 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sandiego/2015")
sandiego_2015_NO2 <- read.csv("2015sandiegoNO2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sandiego_2015_NO2 <- sandiego_2015_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sandiego_2015_NO2$Date <- parse_date_time(sandiego_2015_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
sandiego_2015_NO2 <- separate(sandiego_2015_NO2,Date, c("year","month","date"), sep = "-")
sandiego_2015_NO2 <- aggregate(sandiego_2015_NO2[, c(4,5,7,8)], list(sandiego_2015_NO2$year,sandiego_2015_NO2$COUNTY), mean)
colnames(sandiego_2015_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#sandiego 2015 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sandiego/2015")
sandiego_2015_O <- read.csv("2015sandiegoozone.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sandiego_2015_O <- sandiego_2015_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sandiego_2015_O$Date <- parse_date_time(sandiego_2015_O$Date, c("%m-%d-%y", "%m/%d/%y"))
sandiego_2015_O <- separate(sandiego_2015_O,Date, c("year","month","date"), sep = "-")
sandiego_2015_O <- aggregate(sandiego_2015_O[, c(4,5,7,8)], list(sandiego_2015_O$year,sandiego_2015_O$COUNTY), mean)
colnames(sandiego_2015_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#sandiego 2015 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sandiego/2015")
sandiego_2015_PM2.5 <- read.csv("2015sandiegoPM2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sandiego_2015_PM2.5 <- sandiego_2015_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sandiego_2015_PM2.5$Date <- parse_date_time(sandiego_2015_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
sandiego_2015_PM2.5 <- separate(sandiego_2015_PM2.5,Date, c("year","month","date"), sep = "-")
sandiego_2015_PM2.5 <- aggregate(sandiego_2015_PM2.5[, c(4,5,7,8)], list(sandiego_2015_PM2.5$year,sandiego_2015_PM2.5$COUNTY), mean)
colnames(sandiego_2015_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#sandiego 2015 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sandiego/2015")
sandiego_2015_PM10 <- read.csv("2015sandiegoPM10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sandiego_2015_PM10 <- sandiego_2015_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sandiego_2015_PM10$Date <- parse_date_time(sandiego_2015_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
sandiego_2015_PM10 <- separate(sandiego_2015_PM10,Date, c("year","month","date"), sep = "-")
sandiego_2015_PM10 <- aggregate(sandiego_2015_PM10[, c(4,5,7,8)], list(sandiego_2015_PM10$year,sandiego_2015_PM10$COUNTY), mean)
colnames(sandiego_2015_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#sandiego 2015 all pollutant data
sandiego_2015 <- cbind(sandiego_2015_co,sandiego_2015_NO2$NO2_concentration_value,sandiego_2015_NO2$NO2_AQI,sandiego_2015_O$O3_concentration_value,sandiego_2015_O$O3_AQI,sandiego_2015_PM2.5$PM2.5_concentration_value,sandiego_2015_PM2.5$PM2.5_AQI,sandiego_2015_PM10$PM10_concentration_value,sandiego_2015_PM10$PM10_AQI)
sandiego_2015 <- sandiego_2015[c(1:4,7:14,5,6)]
colnames(sandiego_2015) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#-------------------------------------------------------------------------------------------------------
#sandiego 2016 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sandiego/2016")
sandiego_2016_co <- read.csv("2016sandiegoCO.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sandiego_2016_co <- sandiego_2016_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sandiego_2016_co$Date <- parse_date_time(sandiego_2016_co$Date, c("%m-%d-%y", "%m/%d/%y"))
sandiego_2016_co <- separate(sandiego_2016_co,Date, c("year","month","date"), sep = "-")
sandiego_2016_co <- aggregate(sandiego_2016_co[, c(4,5,7,8)], list(sandiego_2016_co$year,sandiego_2016_co$COUNTY), mean)
colnames(sandiego_2016_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#sandiego 2016 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sandiego/2016")
sandiego_2016_NO2 <- read.csv("2016sandiegoNO2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sandiego_2016_NO2 <- sandiego_2016_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sandiego_2016_NO2$Date <- parse_date_time(sandiego_2016_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
sandiego_2016_NO2 <- separate(sandiego_2016_NO2,Date, c("year","month","date"), sep = "-")
sandiego_2016_NO2 <- aggregate(sandiego_2016_NO2[, c(4,5,7,8)], list(sandiego_2016_NO2$year,sandiego_2016_NO2$COUNTY), mean)
colnames(sandiego_2016_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#sandiego 2016 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sandiego/2016")
sandiego_2016_O <- read.csv("2016sandiegoozone.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sandiego_2016_O <- sandiego_2016_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sandiego_2016_O$Date <- parse_date_time(sandiego_2016_O$Date, c("%m-%d-%y", "%m/%d/%y"))
sandiego_2016_O <- separate(sandiego_2016_O,Date, c("year","month","date"), sep = "-")
sandiego_2016_O <- aggregate(sandiego_2016_O[, c(4,5,7,8)], list(sandiego_2016_O$year,sandiego_2016_O$COUNTY), mean)
colnames(sandiego_2016_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#sandiego 2016 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sandiego/2016")
sandiego_2016_PM2.5 <- read.csv("2016sandiegoPM2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sandiego_2016_PM2.5 <- sandiego_2016_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sandiego_2016_PM2.5$Date <- parse_date_time(sandiego_2016_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
sandiego_2016_PM2.5 <- separate(sandiego_2016_PM2.5,Date, c("year","month","date"), sep = "-")
sandiego_2016_PM2.5 <- aggregate(sandiego_2016_PM2.5[, c(4,5,7,8)], list(sandiego_2016_PM2.5$year,sandiego_2016_PM2.5$COUNTY), mean)
colnames(sandiego_2016_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#sandiego 2016 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sandiego/2016")
sandiego_2016_PM10 <- read.csv("2016sandiegoPM10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sandiego_2016_PM10 <- sandiego_2016_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sandiego_2016_PM10$Date <- parse_date_time(sandiego_2016_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
sandiego_2016_PM10 <- separate(sandiego_2016_PM10,Date, c("year","month","date"), sep = "-")
sandiego_2016_PM10 <- aggregate(sandiego_2016_PM10[, c(4,5,7,8)], list(sandiego_2016_PM10$year,sandiego_2016_PM10$COUNTY), mean)
colnames(sandiego_2016_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#sandiego 2016 all pollutant data
sandiego_2016 <- cbind(sandiego_2016_co,sandiego_2016_NO2$NO2_concentration_value,sandiego_2016_NO2$NO2_AQI,sandiego_2016_O$O3_concentration_value,sandiego_2016_O$O3_AQI,sandiego_2016_PM2.5$PM2.5_concentration_value,sandiego_2016_PM2.5$PM2.5_AQI,sandiego_2016_PM10$PM10_concentration_value,sandiego_2016_PM10$PM10_AQI)
sandiego_2016 <- sandiego_2016[c(1:4,7:14,5,6)]
colnames(sandiego_2016) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#----------------------------------------------------------------------------------------------------------
#sandiego 2017 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sandiego/2017")
sandiego_2017_co <- read.csv("2017sandiegoCO.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sandiego_2017_co <- sandiego_2017_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sandiego_2017_co$Date <- parse_date_time(sandiego_2017_co$Date, c("%m-%d-%y", "%m/%d/%y"))
sandiego_2017_co <- separate(sandiego_2017_co,Date, c("year","month","date"), sep = "-")
sandiego_2017_co <- aggregate(sandiego_2017_co[, c(4,5,7,8)], list(sandiego_2017_co$year,sandiego_2017_co$COUNTY), mean)
colnames(sandiego_2017_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#sandiego 2017 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sandiego/2017")
sandiego_2017_NO2 <- read.csv("2017sandiegoNO2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sandiego_2017_NO2 <- sandiego_2017_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sandiego_2017_NO2$Date <- parse_date_time(sandiego_2017_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
sandiego_2017_NO2 <- separate(sandiego_2017_NO2,Date, c("year","month","date"), sep = "-")
sandiego_2017_NO2 <- aggregate(sandiego_2017_NO2[, c(4,5,7,8)], list(sandiego_2017_NO2$year,sandiego_2017_NO2$COUNTY), mean)
colnames(sandiego_2017_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#sandiego 2017 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sandiego/2017")
sandiego_2017_O <- read.csv("2017sandiegoozone.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sandiego_2017_O <- sandiego_2017_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sandiego_2017_O$Date <- parse_date_time(sandiego_2017_O$Date, c("%m-%d-%y", "%m/%d/%y"))
sandiego_2017_O <- separate(sandiego_2017_O,Date, c("year","month","date"), sep = "-")
sandiego_2017_O <- aggregate(sandiego_2017_O[, c(4,5,7,8)], list(sandiego_2017_O$year,sandiego_2017_O$COUNTY), mean)
colnames(sandiego_2017_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#sandiego 2017 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sandiego/2017")
sandiego_2017_PM2.5 <- read.csv("2017sandiegoPM2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sandiego_2017_PM2.5 <- sandiego_2017_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sandiego_2017_PM2.5$Date <- parse_date_time(sandiego_2017_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
sandiego_2017_PM2.5 <- separate(sandiego_2017_PM2.5,Date, c("year","month","date"), sep = "-")
sandiego_2017_PM2.5 <- aggregate(sandiego_2017_PM2.5[, c(4,5,7,8)], list(sandiego_2017_PM2.5$year,sandiego_2017_PM2.5$COUNTY), mean)
colnames(sandiego_2017_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#sandiego 2017 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sandiego/2017")
sandiego_2017_PM10 <- read.csv("2017sandiegoPM10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sandiego_2017_PM10 <- sandiego_2017_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sandiego_2017_PM10$Date <- parse_date_time(sandiego_2017_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
sandiego_2017_PM10 <- separate(sandiego_2017_PM10,Date, c("year","month","date"), sep = "-")
sandiego_2017_PM10 <- aggregate(sandiego_2017_PM10[, c(4,5,7,8)], list(sandiego_2017_PM10$year,sandiego_2017_PM10$COUNTY), mean)
colnames(sandiego_2017_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#sandiego 2017 all pollutant data
sandiego_2017 <- cbind(sandiego_2017_co,sandiego_2017_NO2$NO2_concentration_value,sandiego_2017_NO2$NO2_AQI,sandiego_2017_O$O3_concentration_value,sandiego_2017_O$O3_AQI,sandiego_2017_PM2.5$PM2.5_concentration_value,sandiego_2017_PM2.5$PM2.5_AQI,sandiego_2017_PM10$PM10_concentration_value,sandiego_2017_PM10$PM10_AQI)
sandiego_2017 <- sandiego_2017[c(1:4,7:14,5,6)]
colnames(sandiego_2017) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#--------------------------------------------------------------------------------------------------------
#sandiego final data
sandiego <- rbind(sandiego_2011,sandiego_2012,sandiego_2013,sandiego_2014,sandiego_2015,sandiego_2016,sandiego_2017)
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/FINAL_DATASETS")
write.csv(sandiego, file = "sandiego.csv")