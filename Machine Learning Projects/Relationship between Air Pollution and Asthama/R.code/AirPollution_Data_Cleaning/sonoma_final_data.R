#sonamo 2011 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sonamo/2011")
sonamo_2011_co <- read.csv("2011sonamoCO.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sonamo_2011_co <- sonamo_2011_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sonamo_2011_co$Date <- parse_date_time(sonamo_2011_co$Date, c("%m-%d-%y", "%m/%d/%y"))
sonamo_2011_co <- separate(sonamo_2011_co,Date, c("year","month","date"), sep = "-")
sonamo_2011_co <- aggregate(sonamo_2011_co[, c(4,5,7,8)], list(sonamo_2011_co$year,sonamo_2011_co$COUNTY), mean)
colnames(sonamo_2011_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#sonamo 2011 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sonamo/2011")
sonamo_2011_NO2 <- read.csv("2011sonamoNO2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sonamo_2011_NO2 <- sonamo_2011_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sonamo_2011_NO2$Date <- parse_date_time(sonamo_2011_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
sonamo_2011_NO2 <- separate(sonamo_2011_NO2,Date, c("year","month","date"), sep = "-")
sonamo_2011_NO2 <- aggregate(sonamo_2011_NO2[, c(4,5,7,8)], list(sonamo_2011_NO2$year,sonamo_2011_NO2$COUNTY), mean)
colnames(sonamo_2011_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#sonamo 2011 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sonamo/2011")
sonamo_2011_O <- read.csv("2011sonamoozone.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sonamo_2011_O <- sonamo_2011_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sonamo_2011_O$Date <- parse_date_time(sonamo_2011_O$Date, c("%m-%d-%y", "%m/%d/%y"))
sonamo_2011_O <- separate(sonamo_2011_O,Date, c("year","month","date"), sep = "-")
sonamo_2011_O <- aggregate(sonamo_2011_O[, c(4,5,7,8)], list(sonamo_2011_O$year,sonamo_2011_O$COUNTY), mean)
colnames(sonamo_2011_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#sonamo 2011 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sonamo/2011")
sonamo_2011_PM2.5 <- read.csv("2011sonamoPM2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sonamo_2011_PM2.5 <- sonamo_2011_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sonamo_2011_PM2.5$Date <- parse_date_time(sonamo_2011_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
sonamo_2011_PM2.5 <- separate(sonamo_2011_PM2.5,Date, c("year","month","date"), sep = "-")
sonamo_2011_PM2.5 <- aggregate(sonamo_2011_PM2.5[, c(4,5,7,8)], list(sonamo_2011_PM2.5$year,sonamo_2011_PM2.5$COUNTY), mean)
colnames(sonamo_2011_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#sonamo 2011 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sonamo/2011")
sonamo_2011_PM10 <- read.csv("2011sonamoPM10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sonamo_2011_PM10 <- sonamo_2011_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sonamo_2011_PM10$Date <- parse_date_time(sonamo_2011_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
sonamo_2011_PM10 <- separate(sonamo_2011_PM10,Date, c("year","month","date"), sep = "-")
sonamo_2011_PM10 <- aggregate(sonamo_2011_PM10[, c(4,5,7,8)], list(sonamo_2011_PM10$year,sonamo_2011_PM10$COUNTY), mean)
colnames(sonamo_2011_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#sonamo 2011 all pollutant data
sonamo_2011 <- cbind(sonamo_2011_co,sonamo_2011_NO2$NO2_concentration_value,sonamo_2011_NO2$NO2_AQI,sonamo_2011_O$O3_concentration_value,sonamo_2011_O$O3_AQI,sonamo_2011_PM2.5$PM2.5_concentration_value,sonamo_2011_PM2.5$PM2.5_AQI,sonamo_2011_PM10$PM10_concentration_value,sonamo_2011_PM10$PM10_AQI)
sonamo_2011 <- sonamo_2011[c(1:4,7:14,5,6)]
colnames(sonamo_2011) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#---------------------------------------------------------------------------------------------------
#sonamo 2012 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sonamo/2012")
sonamo_2012_co <- read.csv("2012sonamoCO.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sonamo_2012_co <- sonamo_2012_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sonamo_2012_co$Date <- parse_date_time(sonamo_2012_co$Date, c("%m-%d-%y", "%m/%d/%y"))
sonamo_2012_co <- separate(sonamo_2012_co,Date, c("year","month","date"), sep = "-")
sonamo_2012_co <- aggregate(sonamo_2012_co[, c(4,5,7,8)], list(sonamo_2012_co$year,sonamo_2012_co$COUNTY), mean)
colnames(sonamo_2012_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#sonamo 2012 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sonamo/2012")
sonamo_2012_NO2 <- read.csv("2012sonamoNO2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sonamo_2012_NO2 <- sonamo_2012_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sonamo_2012_NO2$Date <- parse_date_time(sonamo_2012_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
sonamo_2012_NO2 <- separate(sonamo_2012_NO2,Date, c("year","month","date"), sep = "-")
sonamo_2012_NO2 <- aggregate(sonamo_2012_NO2[, c(4,5,7,8)], list(sonamo_2012_NO2$year,sonamo_2012_NO2$COUNTY), mean)
colnames(sonamo_2012_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#sonamo 2012 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sonamo/2012")
sonamo_2012_O <- read.csv("2012sonmaoozone.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sonamo_2012_O <- sonamo_2012_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sonamo_2012_O$Date <- parse_date_time(sonamo_2012_O$Date, c("%m-%d-%y", "%m/%d/%y"))
sonamo_2012_O <- separate(sonamo_2012_O,Date, c("year","month","date"), sep = "-")
sonamo_2012_O <- aggregate(sonamo_2012_O[, c(4,5,7,8)], list(sonamo_2012_O$year,sonamo_2012_O$COUNTY), mean)
colnames(sonamo_2012_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#sonamo 2012 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sonamo/2012")
sonamo_2012_PM2.5 <- read.csv("2012sonamoPM2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sonamo_2012_PM2.5 <- sonamo_2012_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sonamo_2012_PM2.5$Date <- parse_date_time(sonamo_2012_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
sonamo_2012_PM2.5 <- separate(sonamo_2012_PM2.5,Date, c("year","month","date"), sep = "-")
sonamo_2012_PM2.5 <- aggregate(sonamo_2012_PM2.5[, c(4,5,7,8)], list(sonamo_2012_PM2.5$year,sonamo_2012_PM2.5$COUNTY), mean)
colnames(sonamo_2012_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#sonamo 2012 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sonamo/2012")
sonamo_2012_PM10 <- read.csv("2012sonamoPM10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sonamo_2012_PM10 <- sonamo_2012_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sonamo_2012_PM10$Date <- parse_date_time(sonamo_2012_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
sonamo_2012_PM10 <- separate(sonamo_2012_PM10,Date, c("year","month","date"), sep = "-")
sonamo_2012_PM10 <- aggregate(sonamo_2012_PM10[, c(4,5,7,8)], list(sonamo_2012_PM10$year,sonamo_2012_PM10$COUNTY), mean)
colnames(sonamo_2012_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#sonamo 2012 all pollutant data
sonamo_2012 <- cbind(sonamo_2012_co,sonamo_2012_NO2$NO2_concentration_value,sonamo_2012_NO2$NO2_AQI,sonamo_2012_O$O3_concentration_value,sonamo_2012_O$O3_AQI,sonamo_2012_PM2.5$PM2.5_concentration_value,sonamo_2012_PM2.5$PM2.5_AQI,sonamo_2012_PM10$PM10_concentration_value,sonamo_2012_PM10$PM10_AQI)
sonamo_2012 <- sonamo_2012[c(1:4,7:14,5,6)]
colnames(sonamo_2012) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#-------------------------------------------------------------------------------------------------------
#sonamo 2013 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sonamo/2013")
sonamo_2013_co <- read.csv("2013sonamoCO.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sonamo_2013_co <- sonamo_2013_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sonamo_2013_co$Date <- parse_date_time(sonamo_2013_co$Date, c("%m-%d-%y", "%m/%d/%y"))
sonamo_2013_co <- separate(sonamo_2013_co,Date, c("year","month","date"), sep = "-")
sonamo_2013_co <- aggregate(sonamo_2013_co[, c(4,5,7,8)], list(sonamo_2013_co$year,sonamo_2013_co$COUNTY), mean)
colnames(sonamo_2013_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#sonamo 2013 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sonamo/2013")
sonamo_2013_NO2 <- read.csv("2013sonamoNO2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sonamo_2013_NO2 <- sonamo_2013_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sonamo_2013_NO2$Date <- parse_date_time(sonamo_2013_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
sonamo_2013_NO2 <- separate(sonamo_2013_NO2,Date, c("year","month","date"), sep = "-")
sonamo_2013_NO2 <- aggregate(sonamo_2013_NO2[, c(4,5,7,8)], list(sonamo_2013_NO2$year,sonamo_2013_NO2$COUNTY), mean)
colnames(sonamo_2013_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#sonamo 2013 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sonamo/2013")
sonamo_2013_O <- read.csv("2013sonamoozone.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sonamo_2013_O <- sonamo_2013_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sonamo_2013_O$Date <- parse_date_time(sonamo_2013_O$Date, c("%m-%d-%y", "%m/%d/%y"))
sonamo_2013_O <- separate(sonamo_2013_O,Date, c("year","month","date"), sep = "-")
sonamo_2013_O <- aggregate(sonamo_2013_O[, c(4,5,7,8)], list(sonamo_2013_O$year,sonamo_2013_O$COUNTY), mean)
colnames(sonamo_2013_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#sonamo 2013 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sonamo/2013")
sonamo_2013_PM2.5 <- read.csv("2013sonamoPM2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sonamo_2013_PM2.5 <- sonamo_2013_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sonamo_2013_PM2.5$Date <- parse_date_time(sonamo_2013_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
sonamo_2013_PM2.5 <- separate(sonamo_2013_PM2.5,Date, c("year","month","date"), sep = "-")
sonamo_2013_PM2.5 <- aggregate(sonamo_2013_PM2.5[, c(4,5,7,8)], list(sonamo_2013_PM2.5$year,sonamo_2013_PM2.5$COUNTY), mean)
colnames(sonamo_2013_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#sonamo 2013 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sonamo/2013")
sonamo_2013_PM10 <- read.csv("2013sonmaoPM10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sonamo_2013_PM10 <- sonamo_2013_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sonamo_2013_PM10$Date <- parse_date_time(sonamo_2013_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
sonamo_2013_PM10 <- separate(sonamo_2013_PM10,Date, c("year","month","date"), sep = "-")
sonamo_2013_PM10 <- aggregate(sonamo_2013_PM10[, c(4,5,7,8)], list(sonamo_2013_PM10$year,sonamo_2013_PM10$COUNTY), mean)
colnames(sonamo_2013_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#sonamo 2013 all pollutant data
sonamo_2013 <- cbind(sonamo_2013_co,sonamo_2013_NO2$NO2_concentration_value,sonamo_2013_NO2$NO2_AQI,sonamo_2013_O$O3_concentration_value,sonamo_2013_O$O3_AQI,sonamo_2013_PM2.5$PM2.5_concentration_value,sonamo_2013_PM2.5$PM2.5_AQI,sonamo_2013_PM10$PM10_concentration_value,sonamo_2013_PM10$PM10_AQI)
sonamo_2013 <- sonamo_2013[c(1:4,7:14,5,6)]
colnames(sonamo_2013) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#-------------------------------------------------------------------------------------------------------------
#sonamo 2014 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sonamo/2014")
sonamo_2014_co <- read.csv("2014sonamoCO.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sonamo_2014_co <- sonamo_2014_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sonamo_2014_co$Date <- parse_date_time(sonamo_2014_co$Date, c("%m-%d-%y", "%m/%d/%y"))
sonamo_2014_co <- separate(sonamo_2014_co,Date, c("year","month","date"), sep = "-")
sonamo_2014_co <- aggregate(sonamo_2014_co[, c(4,5,7,8)], list(sonamo_2014_co$year,sonamo_2014_co$COUNTY), mean)
colnames(sonamo_2014_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#sonamo 2014 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sonamo/2014")
sonamo_2014_NO2 <- read.csv("2014sonamoNO2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sonamo_2014_NO2 <- sonamo_2014_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sonamo_2014_NO2$Date <- parse_date_time(sonamo_2014_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
sonamo_2014_NO2 <- separate(sonamo_2014_NO2,Date, c("year","month","date"), sep = "-")
sonamo_2014_NO2 <- aggregate(sonamo_2014_NO2[, c(4,5,7,8)], list(sonamo_2014_NO2$year,sonamo_2014_NO2$COUNTY), mean)
colnames(sonamo_2014_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#sonamo 2014 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sonamo/2014")
sonamo_2014_O <- read.csv("2014sonamoozone.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sonamo_2014_O <- sonamo_2014_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sonamo_2014_O$Date <- parse_date_time(sonamo_2014_O$Date, c("%m-%d-%y", "%m/%d/%y"))
sonamo_2014_O <- separate(sonamo_2014_O,Date, c("year","month","date"), sep = "-")
sonamo_2014_O <- aggregate(sonamo_2014_O[, c(4,5,7,8)], list(sonamo_2014_O$year,sonamo_2014_O$COUNTY), mean)
colnames(sonamo_2014_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#sonamo 2014 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sonamo/2014")
sonamo_2014_PM2.5 <- read.csv("2014sonamoPM2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sonamo_2014_PM2.5 <- sonamo_2014_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sonamo_2014_PM2.5$Date <- parse_date_time(sonamo_2014_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
sonamo_2014_PM2.5 <- separate(sonamo_2014_PM2.5,Date, c("year","month","date"), sep = "-")
sonamo_2014_PM2.5 <- aggregate(sonamo_2014_PM2.5[, c(4,5,7,8)], list(sonamo_2014_PM2.5$year,sonamo_2014_PM2.5$COUNTY), mean)
colnames(sonamo_2014_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#sonamo 2014 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sonamo/2014")
sonamo_2014_PM10 <- read.csv("2014sonamoPM10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sonamo_2014_PM10 <- sonamo_2014_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sonamo_2014_PM10$Date <- parse_date_time(sonamo_2014_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
sonamo_2014_PM10 <- separate(sonamo_2014_PM10,Date, c("year","month","date"), sep = "-")
sonamo_2014_PM10 <- aggregate(sonamo_2014_PM10[, c(4,5,7,8)], list(sonamo_2014_PM10$year,sonamo_2014_PM10$COUNTY), mean)
colnames(sonamo_2014_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#sonamo 2014 all pollutant data
sonamo_2014 <- cbind(sonamo_2014_co,sonamo_2014_NO2$NO2_concentration_value,sonamo_2014_NO2$NO2_AQI,sonamo_2014_O$O3_concentration_value,sonamo_2014_O$O3_AQI,sonamo_2014_PM2.5$PM2.5_concentration_value,sonamo_2014_PM2.5$PM2.5_AQI,sonamo_2014_PM10$PM10_concentration_value,sonamo_2014_PM10$PM10_AQI)
sonamo_2014 <- sonamo_2014[c(1:4,7:14,5,6)]
colnames(sonamo_2014) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#----------------------------------------------------------------------------------------------------------------------

#sonamo 2015 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sonamo/2015")
sonamo_2015_co <- read.csv("2015sonamoCO.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sonamo_2015_co <- sonamo_2015_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sonamo_2015_co$Date <- parse_date_time(sonamo_2015_co$Date, c("%m-%d-%y", "%m/%d/%y"))
sonamo_2015_co <- separate(sonamo_2015_co,Date, c("year","month","date"), sep = "-")
sonamo_2015_co <- aggregate(sonamo_2015_co[, c(4,5,7,8)], list(sonamo_2015_co$year,sonamo_2015_co$COUNTY), mean)
colnames(sonamo_2015_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#sonamo 2015 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sonamo/2015")
sonamo_2015_NO2 <- read.csv("2015sonamoNO2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sonamo_2015_NO2 <- sonamo_2015_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sonamo_2015_NO2$Date <- parse_date_time(sonamo_2015_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
sonamo_2015_NO2 <- separate(sonamo_2015_NO2,Date, c("year","month","date"), sep = "-")
sonamo_2015_NO2 <- aggregate(sonamo_2015_NO2[, c(4,5,7,8)], list(sonamo_2015_NO2$year,sonamo_2015_NO2$COUNTY), mean)
colnames(sonamo_2015_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#sonamo 2015 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sonamo/2015")
sonamo_2015_O <- read.csv("2015sonamoozone.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sonamo_2015_O <- sonamo_2015_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sonamo_2015_O$Date <- parse_date_time(sonamo_2015_O$Date, c("%m-%d-%y", "%m/%d/%y"))
sonamo_2015_O <- separate(sonamo_2015_O,Date, c("year","month","date"), sep = "-")
sonamo_2015_O <- aggregate(sonamo_2015_O[, c(4,5,7,8)], list(sonamo_2015_O$year,sonamo_2015_O$COUNTY), mean)
colnames(sonamo_2015_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#sonamo 2015 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sonamo/2015")
sonamo_2015_PM2.5 <- read.csv("2015sonamoPM2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sonamo_2015_PM2.5 <- sonamo_2015_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sonamo_2015_PM2.5$Date <- parse_date_time(sonamo_2015_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
sonamo_2015_PM2.5 <- separate(sonamo_2015_PM2.5,Date, c("year","month","date"), sep = "-")
sonamo_2015_PM2.5 <- aggregate(sonamo_2015_PM2.5[, c(4,5,7,8)], list(sonamo_2015_PM2.5$year,sonamo_2015_PM2.5$COUNTY), mean)
colnames(sonamo_2015_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#sonamo 2015 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sonamo/2015")
sonamo_2015_PM10 <- read.csv("2015sonamoPM10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sonamo_2015_PM10 <- sonamo_2015_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sonamo_2015_PM10$Date <- parse_date_time(sonamo_2015_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
sonamo_2015_PM10 <- separate(sonamo_2015_PM10,Date, c("year","month","date"), sep = "-")
sonamo_2015_PM10 <- aggregate(sonamo_2015_PM10[, c(4,5,7,8)], list(sonamo_2015_PM10$year,sonamo_2015_PM10$COUNTY), mean)
colnames(sonamo_2015_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#sonamo 2015 all pollutant data
sonamo_2015 <- cbind(sonamo_2015_co,sonamo_2015_NO2$NO2_concentration_value,sonamo_2015_NO2$NO2_AQI,sonamo_2015_O$O3_concentration_value,sonamo_2015_O$O3_AQI,sonamo_2015_PM2.5$PM2.5_concentration_value,sonamo_2015_PM2.5$PM2.5_AQI,sonamo_2015_PM10$PM10_concentration_value,sonamo_2015_PM10$PM10_AQI)
sonamo_2015 <- sonamo_2015[c(1:4,7:14,5,6)]
colnames(sonamo_2015) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#-------------------------------------------------------------------------------------------------------
#sonamo 2016 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sonamo/2016")
sonamo_2016_co <- read.csv("2016sonamoCO.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sonamo_2016_co <- sonamo_2016_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sonamo_2016_co$Date <- parse_date_time(sonamo_2016_co$Date, c("%m-%d-%y", "%m/%d/%y"))
sonamo_2016_co <- separate(sonamo_2016_co,Date, c("year","month","date"), sep = "-")
sonamo_2016_co <- aggregate(sonamo_2016_co[, c(4,5,7,8)], list(sonamo_2016_co$year,sonamo_2016_co$COUNTY), mean)
colnames(sonamo_2016_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#sonamo 2016 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sonamo/2016")
sonamo_2016_NO2 <- read.csv("2016sonamoNO2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sonamo_2016_NO2 <- sonamo_2016_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sonamo_2016_NO2$Date <- parse_date_time(sonamo_2016_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
sonamo_2016_NO2 <- separate(sonamo_2016_NO2,Date, c("year","month","date"), sep = "-")
sonamo_2016_NO2 <- aggregate(sonamo_2016_NO2[, c(4,5,7,8)], list(sonamo_2016_NO2$year,sonamo_2016_NO2$COUNTY), mean)
colnames(sonamo_2016_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#sonamo 2016 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sonamo/2016")
sonamo_2016_O <- read.csv("2016sonamoozone.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sonamo_2016_O <- sonamo_2016_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sonamo_2016_O$Date <- parse_date_time(sonamo_2016_O$Date, c("%m-%d-%y", "%m/%d/%y"))
sonamo_2016_O <- separate(sonamo_2016_O,Date, c("year","month","date"), sep = "-")
sonamo_2016_O <- aggregate(sonamo_2016_O[, c(4,5,7,8)], list(sonamo_2016_O$year,sonamo_2016_O$COUNTY), mean)
colnames(sonamo_2016_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#sonamo 2016 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sonamo/2016")
sonamo_2016_PM2.5 <- read.csv("2016sonamoPM2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sonamo_2016_PM2.5 <- sonamo_2016_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sonamo_2016_PM2.5$Date <- parse_date_time(sonamo_2016_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
sonamo_2016_PM2.5 <- separate(sonamo_2016_PM2.5,Date, c("year","month","date"), sep = "-")
sonamo_2016_PM2.5 <- aggregate(sonamo_2016_PM2.5[, c(4,5,7,8)], list(sonamo_2016_PM2.5$year,sonamo_2016_PM2.5$COUNTY), mean)
colnames(sonamo_2016_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#sonamo 2016 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sonamo/2016")
sonamo_2016_PM10 <- read.csv("2016sonamoPM10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sonamo_2016_PM10 <- sonamo_2016_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sonamo_2016_PM10$Date <- parse_date_time(sonamo_2016_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
sonamo_2016_PM10 <- separate(sonamo_2016_PM10,Date, c("year","month","date"), sep = "-")
sonamo_2016_PM10 <- aggregate(sonamo_2016_PM10[, c(4,5,7,8)], list(sonamo_2016_PM10$year,sonamo_2016_PM10$COUNTY), mean)
colnames(sonamo_2016_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#sonamo 2016 all pollutant data
sonamo_2016 <- cbind(sonamo_2016_co,sonamo_2016_NO2$NO2_concentration_value,sonamo_2016_NO2$NO2_AQI,sonamo_2016_O$O3_concentration_value,sonamo_2016_O$O3_AQI,sonamo_2016_PM2.5$PM2.5_concentration_value,sonamo_2016_PM2.5$PM2.5_AQI,sonamo_2016_PM10$PM10_concentration_value,sonamo_2016_PM10$PM10_AQI)
sonamo_2016 <- sonamo_2016[c(1:4,7:14,5,6)]
colnames(sonamo_2016) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#----------------------------------------------------------------------------------------------------------
#sonamo 2017 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sonamo/2017")
sonamo_2017_co <- read.csv("2017sonamoCO.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sonamo_2017_co <- sonamo_2017_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sonamo_2017_co$Date <- parse_date_time(sonamo_2017_co$Date, c("%m-%d-%y", "%m/%d/%y"))
sonamo_2017_co <- separate(sonamo_2017_co,Date, c("year","month","date"), sep = "-")
sonamo_2017_co <- aggregate(sonamo_2017_co[, c(4,5,7,8)], list(sonamo_2017_co$year,sonamo_2017_co$COUNTY), mean)
colnames(sonamo_2017_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#sonamo 2017 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sonamo/2017")
sonamo_2017_NO2 <- read.csv("2017sonamoNO2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sonamo_2017_NO2 <- sonamo_2017_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sonamo_2017_NO2$Date <- parse_date_time(sonamo_2017_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
sonamo_2017_NO2 <- separate(sonamo_2017_NO2,Date, c("year","month","date"), sep = "-")
sonamo_2017_NO2 <- aggregate(sonamo_2017_NO2[, c(4,5,7,8)], list(sonamo_2017_NO2$year,sonamo_2017_NO2$COUNTY), mean)
colnames(sonamo_2017_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#sonamo 2017 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sonamo/2017")
sonamo_2017_O <- read.csv("2017sonamoozone.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sonamo_2017_O <- sonamo_2017_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sonamo_2017_O$Date <- parse_date_time(sonamo_2017_O$Date, c("%m-%d-%y", "%m/%d/%y"))
sonamo_2017_O <- separate(sonamo_2017_O,Date, c("year","month","date"), sep = "-")
sonamo_2017_O <- aggregate(sonamo_2017_O[, c(4,5,7,8)], list(sonamo_2017_O$year,sonamo_2017_O$COUNTY), mean)
colnames(sonamo_2017_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#sonamo 2017 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sonamo/2017")
sonamo_2017_PM2.5 <- read.csv("2017sonamoPM2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sonamo_2017_PM2.5 <- sonamo_2017_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sonamo_2017_PM2.5$Date <- parse_date_time(sonamo_2017_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
sonamo_2017_PM2.5 <- separate(sonamo_2017_PM2.5,Date, c("year","month","date"), sep = "-")
sonamo_2017_PM2.5 <- aggregate(sonamo_2017_PM2.5[, c(4,5,7,8)], list(sonamo_2017_PM2.5$year,sonamo_2017_PM2.5$COUNTY), mean)
colnames(sonamo_2017_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#sonamo 2017 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sonamo/2017")
sonamo_2017_PM10 <- read.csv("2017sonamoPM10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sonamo_2017_PM10 <- sonamo_2017_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sonamo_2017_PM10$Date <- parse_date_time(sonamo_2017_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
sonamo_2017_PM10 <- separate(sonamo_2017_PM10,Date, c("year","month","date"), sep = "-")
sonamo_2017_PM10 <- aggregate(sonamo_2017_PM10[, c(4,5,7,8)], list(sonamo_2017_PM10$year,sonamo_2017_PM10$COUNTY), mean)
colnames(sonamo_2017_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#sonamo 2017 all pollutant data
sonamo_2017 <- cbind(sonamo_2017_co,sonamo_2017_NO2$NO2_concentration_value,sonamo_2017_NO2$NO2_AQI,sonamo_2017_O$O3_concentration_value,sonamo_2017_O$O3_AQI,sonamo_2017_PM2.5$PM2.5_concentration_value,sonamo_2017_PM2.5$PM2.5_AQI,sonamo_2017_PM10$PM10_concentration_value,sonamo_2017_PM10$PM10_AQI)
sonamo_2017 <- sonamo_2017[c(1:4,7:14,5,6)]
colnames(sonamo_2017) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#--------------------------------------------------------------------------------------------------------
#sonamo final data
sonamo <- rbind(sonamo_2011,sonamo_2012,sonamo_2013,sonamo_2014,sonamo_2015,sonamo_2016,sonamo_2017)
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/FINAL_DATASETS")
write.csv(sonamo, file = "sonamo.csv")
