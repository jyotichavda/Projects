#sanjoquin 2011 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sanjoquin/2011")
sanjoquin_2011_co <- read.csv("2011sanjoquinCO.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sanjoquin_2011_co <- sanjoquin_2011_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sanjoquin_2011_co$Date <- parse_date_time(sanjoquin_2011_co$Date, c("%m-%d-%y", "%m/%d/%y"))
sanjoquin_2011_co <- separate(sanjoquin_2011_co,Date, c("year","month","date"), sep = "-")
sanjoquin_2011_co <- aggregate(sanjoquin_2011_co[, c(4,5,7,8)], list(sanjoquin_2011_co$year,sanjoquin_2011_co$COUNTY), mean)
colnames(sanjoquin_2011_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#sanjoquin 2011 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sanjoquin/2011")
sanjoquin_2011_NO2 <- read.csv("2011sanjoquinNO2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sanjoquin_2011_NO2 <- sanjoquin_2011_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sanjoquin_2011_NO2$Date <- parse_date_time(sanjoquin_2011_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
sanjoquin_2011_NO2 <- separate(sanjoquin_2011_NO2,Date, c("year","month","date"), sep = "-")
sanjoquin_2011_NO2 <- aggregate(sanjoquin_2011_NO2[, c(4,5,7,8)], list(sanjoquin_2011_NO2$year,sanjoquin_2011_NO2$COUNTY), mean)
colnames(sanjoquin_2011_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#sanjoquin 2011 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sanjoquin/2011")
sanjoquin_2011_O <- read.csv("2011sanjoquinozone.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sanjoquin_2011_O <- sanjoquin_2011_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sanjoquin_2011_O$Date <- parse_date_time(sanjoquin_2011_O$Date, c("%m-%d-%y", "%m/%d/%y"))
sanjoquin_2011_O <- separate(sanjoquin_2011_O,Date, c("year","month","date"), sep = "-")
sanjoquin_2011_O <- aggregate(sanjoquin_2011_O[, c(4,5,7,8)], list(sanjoquin_2011_O$year,sanjoquin_2011_O$COUNTY), mean)
colnames(sanjoquin_2011_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#sanjoquin 2011 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sanjoquin/2011")
sanjoquin_2011_PM2.5 <- read.csv("2011sanjoquinPM2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sanjoquin_2011_PM2.5 <- sanjoquin_2011_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sanjoquin_2011_PM2.5$Date <- parse_date_time(sanjoquin_2011_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
sanjoquin_2011_PM2.5 <- separate(sanjoquin_2011_PM2.5,Date, c("year","month","date"), sep = "-")
sanjoquin_2011_PM2.5 <- aggregate(sanjoquin_2011_PM2.5[, c(4,5,7,8)], list(sanjoquin_2011_PM2.5$year,sanjoquin_2011_PM2.5$COUNTY), mean)
colnames(sanjoquin_2011_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#sanjoquin 2011 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sanjoquin/2011")
sanjoquin_2011_PM10 <- read.csv("2011sanjoquinPM10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sanjoquin_2011_PM10 <- sanjoquin_2011_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sanjoquin_2011_PM10$Date <- parse_date_time(sanjoquin_2011_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
sanjoquin_2011_PM10 <- separate(sanjoquin_2011_PM10,Date, c("year","month","date"), sep = "-")
sanjoquin_2011_PM10 <- aggregate(sanjoquin_2011_PM10[, c(4,5,7,8)], list(sanjoquin_2011_PM10$year,sanjoquin_2011_PM10$COUNTY), mean)
colnames(sanjoquin_2011_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#sanjoquin 2011 all pollutant data
sanjoquin_2011 <- cbind(sanjoquin_2011_co,sanjoquin_2011_NO2$NO2_concentration_value,sanjoquin_2011_NO2$NO2_AQI,sanjoquin_2011_O$O3_concentration_value,sanjoquin_2011_O$O3_AQI,sanjoquin_2011_PM2.5$PM2.5_concentration_value,sanjoquin_2011_PM2.5$PM2.5_AQI,sanjoquin_2011_PM10$PM10_concentration_value,sanjoquin_2011_PM10$PM10_AQI)
sanjoquin_2011 <- sanjoquin_2011[c(1:4,7:14,5,6)]
colnames(sanjoquin_2011) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#---------------------------------------------------------------------------------------------------
#sanjoquin 2012 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sanjoquin/2012")
sanjoquin_2012_co <- read.csv("2012sanjoquinCO.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sanjoquin_2012_co <- sanjoquin_2012_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sanjoquin_2012_co$Date <- parse_date_time(sanjoquin_2012_co$Date, c("%m-%d-%y", "%m/%d/%y"))
sanjoquin_2012_co <- separate(sanjoquin_2012_co,Date, c("year","month","date"), sep = "-")
sanjoquin_2012_co <- aggregate(sanjoquin_2012_co[, c(4,5,7,8)], list(sanjoquin_2012_co$year,sanjoquin_2012_co$COUNTY), mean)
colnames(sanjoquin_2012_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#sanjoquin 2012 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sanjoquin/2012")
sanjoquin_2012_NO2 <- read.csv("2012sanjoquinNO2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sanjoquin_2012_NO2 <- sanjoquin_2012_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sanjoquin_2012_NO2$Date <- parse_date_time(sanjoquin_2012_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
sanjoquin_2012_NO2 <- separate(sanjoquin_2012_NO2,Date, c("year","month","date"), sep = "-")
sanjoquin_2012_NO2 <- aggregate(sanjoquin_2012_NO2[, c(4,5,7,8)], list(sanjoquin_2012_NO2$year,sanjoquin_2012_NO2$COUNTY), mean)
colnames(sanjoquin_2012_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#sanjoquin 2012 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sanjoquin/2012")
sanjoquin_2012_O <- read.csv("2012sanjoquinozone.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sanjoquin_2012_O <- sanjoquin_2012_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sanjoquin_2012_O$Date <- parse_date_time(sanjoquin_2012_O$Date, c("%m-%d-%y", "%m/%d/%y"))
sanjoquin_2012_O <- separate(sanjoquin_2012_O,Date, c("year","month","date"), sep = "-")
sanjoquin_2012_O <- aggregate(sanjoquin_2012_O[, c(4,5,7,8)], list(sanjoquin_2012_O$year,sanjoquin_2012_O$COUNTY), mean)
colnames(sanjoquin_2012_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#sanjoquin 2012 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sanjoquin/2012")
sanjoquin_2012_PM2.5 <- read.csv("2012sanjoquinPM2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sanjoquin_2012_PM2.5 <- sanjoquin_2012_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sanjoquin_2012_PM2.5$Date <- parse_date_time(sanjoquin_2012_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
sanjoquin_2012_PM2.5 <- separate(sanjoquin_2012_PM2.5,Date, c("year","month","date"), sep = "-")
sanjoquin_2012_PM2.5 <- aggregate(sanjoquin_2012_PM2.5[, c(4,5,7,8)], list(sanjoquin_2012_PM2.5$year,sanjoquin_2012_PM2.5$COUNTY), mean)
colnames(sanjoquin_2012_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#sanjoquin 2012 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sanjoquin/2012")
sanjoquin_2012_PM10 <- read.csv("2012sanjoquinPM10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sanjoquin_2012_PM10 <- sanjoquin_2012_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sanjoquin_2012_PM10$Date <- parse_date_time(sanjoquin_2012_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
sanjoquin_2012_PM10 <- separate(sanjoquin_2012_PM10,Date, c("year","month","date"), sep = "-")
sanjoquin_2012_PM10 <- aggregate(sanjoquin_2012_PM10[, c(4,5,7,8)], list(sanjoquin_2012_PM10$year,sanjoquin_2012_PM10$COUNTY), mean)
colnames(sanjoquin_2012_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#sanjoquin 2012 all pollutant data
sanjoquin_2012 <- cbind(sanjoquin_2012_co,sanjoquin_2012_NO2$NO2_concentration_value,sanjoquin_2012_NO2$NO2_AQI,sanjoquin_2012_O$O3_concentration_value,sanjoquin_2012_O$O3_AQI,sanjoquin_2012_PM2.5$PM2.5_concentration_value,sanjoquin_2012_PM2.5$PM2.5_AQI,sanjoquin_2012_PM10$PM10_concentration_value,sanjoquin_2012_PM10$PM10_AQI)
sanjoquin_2012 <- sanjoquin_2012[c(1:4,7:14,5,6)]
colnames(sanjoquin_2012) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#-------------------------------------------------------------------------------------------------------
#sanjoquin 2013 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sanjoquin/2013")
sanjoquin_2013_co <- read.csv("2013sanjoquinCO.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sanjoquin_2013_co <- sanjoquin_2013_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sanjoquin_2013_co$Date <- parse_date_time(sanjoquin_2013_co$Date, c("%m-%d-%y", "%m/%d/%y"))
sanjoquin_2013_co <- separate(sanjoquin_2013_co,Date, c("year","month","date"), sep = "-")
sanjoquin_2013_co <- aggregate(sanjoquin_2013_co[, c(4,5,7,8)], list(sanjoquin_2013_co$year,sanjoquin_2013_co$COUNTY), mean)
colnames(sanjoquin_2013_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#sanjoquin 2013 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sanjoquin/2013")
sanjoquin_2013_NO2 <- read.csv("2013sanjoquinNO2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sanjoquin_2013_NO2 <- sanjoquin_2013_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sanjoquin_2013_NO2$Date <- parse_date_time(sanjoquin_2013_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
sanjoquin_2013_NO2 <- separate(sanjoquin_2013_NO2,Date, c("year","month","date"), sep = "-")
sanjoquin_2013_NO2 <- aggregate(sanjoquin_2013_NO2[, c(4,5,7,8)], list(sanjoquin_2013_NO2$year,sanjoquin_2013_NO2$COUNTY), mean)
colnames(sanjoquin_2013_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#sanjoquin 2013 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sanjoquin/2013")
sanjoquin_2013_O <- read.csv("2013sanjoquinozone.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sanjoquin_2013_O <- sanjoquin_2013_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sanjoquin_2013_O$Date <- parse_date_time(sanjoquin_2013_O$Date, c("%m-%d-%y", "%m/%d/%y"))
sanjoquin_2013_O <- separate(sanjoquin_2013_O,Date, c("year","month","date"), sep = "-")
sanjoquin_2013_O <- aggregate(sanjoquin_2013_O[, c(4,5,7,8)], list(sanjoquin_2013_O$year,sanjoquin_2013_O$COUNTY), mean)
colnames(sanjoquin_2013_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#sanjoquin 2013 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sanjoquin/2013")
sanjoquin_2013_PM2.5 <- read.csv("2013sanjoquinPM2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sanjoquin_2013_PM2.5 <- sanjoquin_2013_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sanjoquin_2013_PM2.5$Date <- parse_date_time(sanjoquin_2013_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
sanjoquin_2013_PM2.5 <- separate(sanjoquin_2013_PM2.5,Date, c("year","month","date"), sep = "-")
sanjoquin_2013_PM2.5 <- aggregate(sanjoquin_2013_PM2.5[, c(4,5,7,8)], list(sanjoquin_2013_PM2.5$year,sanjoquin_2013_PM2.5$COUNTY), mean)
colnames(sanjoquin_2013_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#sanjoquin 2013 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sanjoquin/2013")
sanjoquin_2013_PM10 <- read.csv("2013sanjoquinPM10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sanjoquin_2013_PM10 <- sanjoquin_2013_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sanjoquin_2013_PM10$Date <- parse_date_time(sanjoquin_2013_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
sanjoquin_2013_PM10 <- separate(sanjoquin_2013_PM10,Date, c("year","month","date"), sep = "-")
sanjoquin_2013_PM10 <- aggregate(sanjoquin_2013_PM10[, c(4,5,7,8)], list(sanjoquin_2013_PM10$year,sanjoquin_2013_PM10$COUNTY), mean)
colnames(sanjoquin_2013_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#sanjoquin 2013 all pollutant data
sanjoquin_2013 <- cbind(sanjoquin_2013_co,sanjoquin_2013_NO2$NO2_concentration_value,sanjoquin_2013_NO2$NO2_AQI,sanjoquin_2013_O$O3_concentration_value,sanjoquin_2013_O$O3_AQI,sanjoquin_2013_PM2.5$PM2.5_concentration_value,sanjoquin_2013_PM2.5$PM2.5_AQI,sanjoquin_2013_PM10$PM10_concentration_value,sanjoquin_2013_PM10$PM10_AQI)
sanjoquin_2013 <- sanjoquin_2013[c(1:4,7:14,5,6)]
colnames(sanjoquin_2013) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#-------------------------------------------------------------------------------------------------------------
#sanjoquin 2014 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sanjoquin/2014")
sanjoquin_2014_co <- read.csv("2014sanjoquinCO.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sanjoquin_2014_co <- sanjoquin_2014_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sanjoquin_2014_co$Date <- parse_date_time(sanjoquin_2014_co$Date, c("%m-%d-%y", "%m/%d/%y"))
sanjoquin_2014_co <- separate(sanjoquin_2014_co,Date, c("year","month","date"), sep = "-")
sanjoquin_2014_co <- aggregate(sanjoquin_2014_co[, c(4,5,7,8)], list(sanjoquin_2014_co$year,sanjoquin_2014_co$COUNTY), mean)
colnames(sanjoquin_2014_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#sanjoquin 2014 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sanjoquin/2014")
sanjoquin_2014_NO2 <- read.csv("2014sanjoquinNO2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sanjoquin_2014_NO2 <- sanjoquin_2014_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sanjoquin_2014_NO2$Date <- parse_date_time(sanjoquin_2014_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
sanjoquin_2014_NO2 <- separate(sanjoquin_2014_NO2,Date, c("year","month","date"), sep = "-")
sanjoquin_2014_NO2 <- aggregate(sanjoquin_2014_NO2[, c(4,5,7,8)], list(sanjoquin_2014_NO2$year,sanjoquin_2014_NO2$COUNTY), mean)
colnames(sanjoquin_2014_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#sanjoquin 2014 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sanjoquin/2014")
sanjoquin_2014_O <- read.csv("2014sanjoquinozone.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sanjoquin_2014_O <- sanjoquin_2014_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sanjoquin_2014_O$Date <- parse_date_time(sanjoquin_2014_O$Date, c("%m-%d-%y", "%m/%d/%y"))
sanjoquin_2014_O <- separate(sanjoquin_2014_O,Date, c("year","month","date"), sep = "-")
sanjoquin_2014_O <- aggregate(sanjoquin_2014_O[, c(4,5,7,8)], list(sanjoquin_2014_O$year,sanjoquin_2014_O$COUNTY), mean)
colnames(sanjoquin_2014_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#sanjoquin 2014 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sanjoquin/2014")
sanjoquin_2014_PM2.5 <- read.csv("2014sanjoquinPM2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sanjoquin_2014_PM2.5 <- sanjoquin_2014_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sanjoquin_2014_PM2.5$Date <- parse_date_time(sanjoquin_2014_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
sanjoquin_2014_PM2.5 <- separate(sanjoquin_2014_PM2.5,Date, c("year","month","date"), sep = "-")
sanjoquin_2014_PM2.5 <- aggregate(sanjoquin_2014_PM2.5[, c(4,5,7,8)], list(sanjoquin_2014_PM2.5$year,sanjoquin_2014_PM2.5$COUNTY), mean)
colnames(sanjoquin_2014_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#sanjoquin 2014 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sanjoquin/2014")
sanjoquin_2014_PM10 <- read.csv("2014sanjoquinPM10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sanjoquin_2014_PM10 <- sanjoquin_2014_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sanjoquin_2014_PM10$Date <- parse_date_time(sanjoquin_2014_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
sanjoquin_2014_PM10 <- separate(sanjoquin_2014_PM10,Date, c("year","month","date"), sep = "-")
sanjoquin_2014_PM10 <- aggregate(sanjoquin_2014_PM10[, c(4,5,7,8)], list(sanjoquin_2014_PM10$year,sanjoquin_2014_PM10$COUNTY), mean)
colnames(sanjoquin_2014_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#sanjoquin 2014 all pollutant data
sanjoquin_2014 <- cbind(sanjoquin_2014_co,sanjoquin_2014_NO2$NO2_concentration_value,sanjoquin_2014_NO2$NO2_AQI,sanjoquin_2014_O$O3_concentration_value,sanjoquin_2014_O$O3_AQI,sanjoquin_2014_PM2.5$PM2.5_concentration_value,sanjoquin_2014_PM2.5$PM2.5_AQI,sanjoquin_2014_PM10$PM10_concentration_value,sanjoquin_2014_PM10$PM10_AQI)
sanjoquin_2014 <- sanjoquin_2014[c(1:4,7:14,5,6)]
colnames(sanjoquin_2014) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#----------------------------------------------------------------------------------------------------------------------

#sanjoquin 2015 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sanjoquin/2015")
sanjoquin_2015_co <- read.csv("2015sanjoquinCO.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sanjoquin_2015_co <- sanjoquin_2015_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sanjoquin_2015_co$Date <- parse_date_time(sanjoquin_2015_co$Date, c("%m-%d-%y", "%m/%d/%y"))
sanjoquin_2015_co <- separate(sanjoquin_2015_co,Date, c("year","month","date"), sep = "-")
sanjoquin_2015_co <- aggregate(sanjoquin_2015_co[, c(4,5,7,8)], list(sanjoquin_2015_co$year,sanjoquin_2015_co$COUNTY), mean)
colnames(sanjoquin_2015_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#sanjoquin 2015 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sanjoquin/2015")
sanjoquin_2015_NO2 <- read.csv("2015sanjoquinNO2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sanjoquin_2015_NO2 <- sanjoquin_2015_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sanjoquin_2015_NO2$Date <- parse_date_time(sanjoquin_2015_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
sanjoquin_2015_NO2 <- separate(sanjoquin_2015_NO2,Date, c("year","month","date"), sep = "-")
sanjoquin_2015_NO2 <- aggregate(sanjoquin_2015_NO2[, c(4,5,7,8)], list(sanjoquin_2015_NO2$year,sanjoquin_2015_NO2$COUNTY), mean)
colnames(sanjoquin_2015_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#sanjoquin 2015 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sanjoquin/2015")
sanjoquin_2015_O <- read.csv("2015sanjoquinozone.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sanjoquin_2015_O <- sanjoquin_2015_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sanjoquin_2015_O$Date <- parse_date_time(sanjoquin_2015_O$Date, c("%m-%d-%y", "%m/%d/%y"))
sanjoquin_2015_O <- separate(sanjoquin_2015_O,Date, c("year","month","date"), sep = "-")
sanjoquin_2015_O <- aggregate(sanjoquin_2015_O[, c(4,5,7,8)], list(sanjoquin_2015_O$year,sanjoquin_2015_O$COUNTY), mean)
colnames(sanjoquin_2015_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#sanjoquin 2015 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sanjoquin/2015")
sanjoquin_2015_PM2.5 <- read.csv("2015sanjoquinPM2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sanjoquin_2015_PM2.5 <- sanjoquin_2015_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sanjoquin_2015_PM2.5$Date <- parse_date_time(sanjoquin_2015_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
sanjoquin_2015_PM2.5 <- separate(sanjoquin_2015_PM2.5,Date, c("year","month","date"), sep = "-")
sanjoquin_2015_PM2.5 <- aggregate(sanjoquin_2015_PM2.5[, c(4,5,7,8)], list(sanjoquin_2015_PM2.5$year,sanjoquin_2015_PM2.5$COUNTY), mean)
colnames(sanjoquin_2015_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#sanjoquin 2015 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sanjoquin/2015")
sanjoquin_2015_PM10 <- read.csv("2015sanjoquinPM10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sanjoquin_2015_PM10 <- sanjoquin_2015_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sanjoquin_2015_PM10$Date <- parse_date_time(sanjoquin_2015_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
sanjoquin_2015_PM10 <- separate(sanjoquin_2015_PM10,Date, c("year","month","date"), sep = "-")
sanjoquin_2015_PM10 <- aggregate(sanjoquin_2015_PM10[, c(4,5,7,8)], list(sanjoquin_2015_PM10$year,sanjoquin_2015_PM10$COUNTY), mean)
colnames(sanjoquin_2015_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#sanjoquin 2015 all pollutant data
sanjoquin_2015 <- cbind(sanjoquin_2015_co,sanjoquin_2015_NO2$NO2_concentration_value,sanjoquin_2015_NO2$NO2_AQI,sanjoquin_2015_O$O3_concentration_value,sanjoquin_2015_O$O3_AQI,sanjoquin_2015_PM2.5$PM2.5_concentration_value,sanjoquin_2015_PM2.5$PM2.5_AQI,sanjoquin_2015_PM10$PM10_concentration_value,sanjoquin_2015_PM10$PM10_AQI)
sanjoquin_2015 <- sanjoquin_2015[c(1:4,7:14,5,6)]
colnames(sanjoquin_2015) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#-------------------------------------------------------------------------------------------------------
#sanjoquin 2016 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sanjoquin/2016")
sanjoquin_2016_co <- read.csv("2016sanjoquinCO.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sanjoquin_2016_co <- sanjoquin_2016_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sanjoquin_2016_co$Date <- parse_date_time(sanjoquin_2016_co$Date, c("%m-%d-%y", "%m/%d/%y"))
sanjoquin_2016_co <- separate(sanjoquin_2016_co,Date, c("year","month","date"), sep = "-")
sanjoquin_2016_co <- aggregate(sanjoquin_2016_co[, c(4,5,7,8)], list(sanjoquin_2016_co$year,sanjoquin_2016_co$COUNTY), mean)
colnames(sanjoquin_2016_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#sanjoquin 2016 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sanjoquin/2016")
sanjoquin_2016_NO2 <- read.csv("2016sanjoquinNO2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sanjoquin_2016_NO2 <- sanjoquin_2016_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sanjoquin_2016_NO2$Date <- parse_date_time(sanjoquin_2016_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
sanjoquin_2016_NO2 <- separate(sanjoquin_2016_NO2,Date, c("year","month","date"), sep = "-")
sanjoquin_2016_NO2 <- aggregate(sanjoquin_2016_NO2[, c(4,5,7,8)], list(sanjoquin_2016_NO2$year,sanjoquin_2016_NO2$COUNTY), mean)
colnames(sanjoquin_2016_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#sanjoquin 2016 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sanjoquin/2016")
sanjoquin_2016_O <- read.csv("2016sanjoquinozone.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sanjoquin_2016_O <- sanjoquin_2016_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sanjoquin_2016_O$Date <- parse_date_time(sanjoquin_2016_O$Date, c("%m-%d-%y", "%m/%d/%y"))
sanjoquin_2016_O <- separate(sanjoquin_2016_O,Date, c("year","month","date"), sep = "-")
sanjoquin_2016_O <- aggregate(sanjoquin_2016_O[, c(4,5,7,8)], list(sanjoquin_2016_O$year,sanjoquin_2016_O$COUNTY), mean)
colnames(sanjoquin_2016_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#sanjoquin 2016 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sanjoquin/2016")
sanjoquin_2016_PM2.5 <- read.csv("2016sanjoquinPM2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sanjoquin_2016_PM2.5 <- sanjoquin_2016_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sanjoquin_2016_PM2.5$Date <- parse_date_time(sanjoquin_2016_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
sanjoquin_2016_PM2.5 <- separate(sanjoquin_2016_PM2.5,Date, c("year","month","date"), sep = "-")
sanjoquin_2016_PM2.5 <- aggregate(sanjoquin_2016_PM2.5[, c(4,5,7,8)], list(sanjoquin_2016_PM2.5$year,sanjoquin_2016_PM2.5$COUNTY), mean)
colnames(sanjoquin_2016_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#sanjoquin 2016 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sanjoquin/2016")
sanjoquin_2016_PM10 <- read.csv("2016sanjoquinPM10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sanjoquin_2016_PM10 <- sanjoquin_2016_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sanjoquin_2016_PM10$Date <- parse_date_time(sanjoquin_2016_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
sanjoquin_2016_PM10 <- separate(sanjoquin_2016_PM10,Date, c("year","month","date"), sep = "-")
sanjoquin_2016_PM10 <- aggregate(sanjoquin_2016_PM10[, c(4,5,7,8)], list(sanjoquin_2016_PM10$year,sanjoquin_2016_PM10$COUNTY), mean)
colnames(sanjoquin_2016_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#sanjoquin 2016 all pollutant data
sanjoquin_2016 <- cbind(sanjoquin_2016_co,sanjoquin_2016_NO2$NO2_concentration_value,sanjoquin_2016_NO2$NO2_AQI,sanjoquin_2016_O$O3_concentration_value,sanjoquin_2016_O$O3_AQI,sanjoquin_2016_PM2.5$PM2.5_concentration_value,sanjoquin_2016_PM2.5$PM2.5_AQI,sanjoquin_2016_PM10$PM10_concentration_value,sanjoquin_2016_PM10$PM10_AQI)
sanjoquin_2016 <- sanjoquin_2016[c(1:4,7:14,5,6)]
colnames(sanjoquin_2016) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#----------------------------------------------------------------------------------------------------------
#sanjoquin 2017 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sanjoquin/2017")
sanjoquin_2017_co <- read.csv("2017sanjoquinCO.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sanjoquin_2017_co <- sanjoquin_2017_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sanjoquin_2017_co$Date <- parse_date_time(sanjoquin_2017_co$Date, c("%m-%d-%y", "%m/%d/%y"))
sanjoquin_2017_co <- separate(sanjoquin_2017_co,Date, c("year","month","date"), sep = "-")
sanjoquin_2017_co <- aggregate(sanjoquin_2017_co[, c(4,5,7,8)], list(sanjoquin_2017_co$year,sanjoquin_2017_co$COUNTY), mean)
colnames(sanjoquin_2017_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#sanjoquin 2017 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sanjoquin/2017")
sanjoquin_2017_NO2 <- read.csv("2017sanjoquinNO2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sanjoquin_2017_NO2 <- sanjoquin_2017_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sanjoquin_2017_NO2$Date <- parse_date_time(sanjoquin_2017_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
sanjoquin_2017_NO2 <- separate(sanjoquin_2017_NO2,Date, c("year","month","date"), sep = "-")
sanjoquin_2017_NO2 <- aggregate(sanjoquin_2017_NO2[, c(4,5,7,8)], list(sanjoquin_2017_NO2$year,sanjoquin_2017_NO2$COUNTY), mean)
colnames(sanjoquin_2017_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#sanjoquin 2017 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sanjoquin/2017")
sanjoquin_2017_O <- read.csv("2017sanjoquinozone.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sanjoquin_2017_O <- sanjoquin_2017_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sanjoquin_2017_O$Date <- parse_date_time(sanjoquin_2017_O$Date, c("%m-%d-%y", "%m/%d/%y"))
sanjoquin_2017_O <- separate(sanjoquin_2017_O,Date, c("year","month","date"), sep = "-")
sanjoquin_2017_O <- aggregate(sanjoquin_2017_O[, c(4,5,7,8)], list(sanjoquin_2017_O$year,sanjoquin_2017_O$COUNTY), mean)
colnames(sanjoquin_2017_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#sanjoquin 2017 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sanjoquin/2017")
sanjoquin_2017_PM2.5 <- read.csv("2017sanjoquinPM2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sanjoquin_2017_PM2.5 <- sanjoquin_2017_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sanjoquin_2017_PM2.5$Date <- parse_date_time(sanjoquin_2017_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
sanjoquin_2017_PM2.5 <- separate(sanjoquin_2017_PM2.5,Date, c("year","month","date"), sep = "-")
sanjoquin_2017_PM2.5 <- aggregate(sanjoquin_2017_PM2.5[, c(4,5,7,8)], list(sanjoquin_2017_PM2.5$year,sanjoquin_2017_PM2.5$COUNTY), mean)
colnames(sanjoquin_2017_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#sanjoquin 2017 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sanjoquin/2017")
sanjoquin_2017_PM10 <- read.csv("2017sanjoquinPM10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sanjoquin_2017_PM10 <- sanjoquin_2017_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sanjoquin_2017_PM10$Date <- parse_date_time(sanjoquin_2017_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
sanjoquin_2017_PM10 <- separate(sanjoquin_2017_PM10,Date, c("year","month","date"), sep = "-")
sanjoquin_2017_PM10 <- aggregate(sanjoquin_2017_PM10[, c(4,5,7,8)], list(sanjoquin_2017_PM10$year,sanjoquin_2017_PM10$COUNTY), mean)
colnames(sanjoquin_2017_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#sanjoquin 2017 all pollutant data
sanjoquin_2017 <- cbind(sanjoquin_2017_co,sanjoquin_2017_NO2$NO2_concentration_value,sanjoquin_2017_NO2$NO2_AQI,sanjoquin_2017_O$O3_concentration_value,sanjoquin_2017_O$O3_AQI,sanjoquin_2017_PM2.5$PM2.5_concentration_value,sanjoquin_2017_PM2.5$PM2.5_AQI,sanjoquin_2017_PM10$PM10_concentration_value,sanjoquin_2017_PM10$PM10_AQI)
sanjoquin_2017 <- sanjoquin_2017[c(1:4,7:14,5,6)]
colnames(sanjoquin_2017) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#--------------------------------------------------------------------------------------------------------
#sanjoquin final data
sanjoquin <- rbind(sanjoquin_2011,sanjoquin_2012,sanjoquin_2013,sanjoquin_2014,sanjoquin_2015,sanjoquin_2016,sanjoquin_2017)
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/FINAL_DATASETS")
write.csv(sanjoquin, file = "sanjoquin.csv")