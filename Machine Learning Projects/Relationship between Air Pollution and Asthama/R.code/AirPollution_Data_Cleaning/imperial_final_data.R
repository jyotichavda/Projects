#imperial 2011 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/imperial/2011")
imperial_2011_co <- read.csv("co.csv", header=T, na.strings=c(""), stringsAsFactors = T)
imperial_2011_co <- imperial_2011_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
imperial_2011_co$Date <- parse_date_time(imperial_2011_co$Date, c("%m-%d-%y", "%m/%d/%y"))
imperial_2011_co <- separate(imperial_2011_co,Date, c("year","month","date"), sep = "-")
imperial_2011_co <- aggregate(imperial_2011_co[, c(4,5,7,8)], list(imperial_2011_co$year,imperial_2011_co$COUNTY), mean)
colnames(imperial_2011_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#imperial 2011 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/imperial/2011")
imperial_2011_NO2 <- read.csv("no2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
imperial_2011_NO2 <- imperial_2011_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
imperial_2011_NO2$Date <- parse_date_time(imperial_2011_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
imperial_2011_NO2 <- separate(imperial_2011_NO2,Date, c("year","month","date"), sep = "-")
imperial_2011_NO2 <- aggregate(imperial_2011_NO2[, c(4,5,7,8)], list(imperial_2011_NO2$year,imperial_2011_NO2$COUNTY), mean)
colnames(imperial_2011_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#imperial 2011 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/imperial/2011")
imperial_2011_O <- read.csv("o.csv", header=T, na.strings=c(""), stringsAsFactors = T)
imperial_2011_O <- imperial_2011_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
imperial_2011_O$Date <- parse_date_time(imperial_2011_O$Date, c("%m-%d-%y", "%m/%d/%y"))
imperial_2011_O <- separate(imperial_2011_O,Date, c("year","month","date"), sep = "-")
imperial_2011_O <- aggregate(imperial_2011_O[, c(4,5,7,8)], list(imperial_2011_O$year,imperial_2011_O$COUNTY), mean)
colnames(imperial_2011_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#imperial 2011 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/imperial/2011")
imperial_2011_PM2.5 <- read.csv("pm2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
imperial_2011_PM2.5 <- imperial_2011_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
imperial_2011_PM2.5$Date <- parse_date_time(imperial_2011_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
imperial_2011_PM2.5 <- separate(imperial_2011_PM2.5,Date, c("year","month","date"), sep = "-")
imperial_2011_PM2.5 <- aggregate(imperial_2011_PM2.5[, c(4,5,7,8)], list(imperial_2011_PM2.5$year,imperial_2011_PM2.5$COUNTY), mean)
colnames(imperial_2011_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#imperial 2011 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/imperial/2011")
imperial_2011_PM10 <- read.csv("pm10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
imperial_2011_PM10 <- imperial_2011_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
imperial_2011_PM10$Date <- parse_date_time(imperial_2011_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
imperial_2011_PM10 <- separate(imperial_2011_PM10,Date, c("year","month","date"), sep = "-")
imperial_2011_PM10 <- aggregate(imperial_2011_PM10[, c(4,5,7,8)], list(imperial_2011_PM10$year,imperial_2011_PM10$COUNTY), mean)
colnames(imperial_2011_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#imperial 2011 all pollutant data
imperial_2011 <- cbind(imperial_2011_co,imperial_2011_NO2$NO2_concentration_value,imperial_2011_NO2$NO2_AQI,imperial_2011_O$O3_concentration_value,imperial_2011_O$O3_AQI,imperial_2011_PM2.5$PM2.5_concentration_value,imperial_2011_PM2.5$PM2.5_AQI,imperial_2011_PM10$PM10_concentration_value,imperial_2011_PM10$PM10_AQI)
imperial_2011 <- imperial_2011[c(1:4,7:14,5,6)]
colnames(imperial_2011) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#---------------------------------------------------------------------------------------------------
#imperial 2012 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/imperial/2012")
imperial_2012_co <- read.csv("co.csv", header=T, na.strings=c(""), stringsAsFactors = T)
imperial_2012_co <- imperial_2012_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
imperial_2012_co$Date <- parse_date_time(imperial_2012_co$Date, c("%m-%d-%y", "%m/%d/%y"))
imperial_2012_co <- separate(imperial_2012_co,Date, c("year","month","date"), sep = "-")
imperial_2012_co <- aggregate(imperial_2012_co[, c(4,5,7,8)], list(imperial_2012_co$year,imperial_2012_co$COUNTY), mean)
colnames(imperial_2012_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#imperial 2012 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/imperial/2012")
imperial_2012_NO2 <- read.csv("no2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
imperial_2012_NO2 <- imperial_2012_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
imperial_2012_NO2$Date <- parse_date_time(imperial_2012_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
imperial_2012_NO2 <- separate(imperial_2012_NO2,Date, c("year","month","date"), sep = "-")
imperial_2012_NO2 <- aggregate(imperial_2012_NO2[, c(4,5,7,8)], list(imperial_2012_NO2$year,imperial_2012_NO2$COUNTY), mean)
colnames(imperial_2012_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#imperial 2012 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/imperial/2012")
imperial_2012_O <- read.csv("o.csv", header=T, na.strings=c(""), stringsAsFactors = T)
imperial_2012_O <- imperial_2012_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
imperial_2012_O$Date <- parse_date_time(imperial_2012_O$Date, c("%m-%d-%y", "%m/%d/%y"))
imperial_2012_O <- separate(imperial_2012_O,Date, c("year","month","date"), sep = "-")
imperial_2012_O <- aggregate(imperial_2012_O[, c(4,5,7,8)], list(imperial_2012_O$year,imperial_2012_O$COUNTY), mean)
colnames(imperial_2012_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#imperial 2012 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/imperial/2012")
imperial_2012_PM2.5 <- read.csv("pm2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
imperial_2012_PM2.5 <- imperial_2012_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
imperial_2012_PM2.5$Date <- parse_date_time(imperial_2012_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
imperial_2012_PM2.5 <- separate(imperial_2012_PM2.5,Date, c("year","month","date"), sep = "-")
imperial_2012_PM2.5 <- aggregate(imperial_2012_PM2.5[, c(4,5,7,8)], list(imperial_2012_PM2.5$year,imperial_2012_PM2.5$COUNTY), mean)
colnames(imperial_2012_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#imperial 2012 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/imperial/2012")
imperial_2012_PM10 <- read.csv("pm10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
imperial_2012_PM10 <- imperial_2012_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
imperial_2012_PM10$Date <- parse_date_time(imperial_2012_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
imperial_2012_PM10 <- separate(imperial_2012_PM10,Date, c("year","month","date"), sep = "-")
imperial_2012_PM10 <- aggregate(imperial_2012_PM10[, c(4,5,7,8)], list(imperial_2012_PM10$year,imperial_2012_PM10$COUNTY), mean)
colnames(imperial_2012_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#imperial 2012 all pollutant data
imperial_2012 <- cbind(imperial_2012_co,imperial_2012_NO2$NO2_concentration_value,imperial_2012_NO2$NO2_AQI,imperial_2012_O$O3_concentration_value,imperial_2012_O$O3_AQI,imperial_2012_PM2.5$PM2.5_concentration_value,imperial_2012_PM2.5$PM2.5_AQI,imperial_2012_PM10$PM10_concentration_value,imperial_2012_PM10$PM10_AQI)
imperial_2012 <- imperial_2012[c(1:4,7:14,5,6)]
colnames(imperial_2012) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#-------------------------------------------------------------------------------------------------------
#imperial 2013 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/imperial/2013")
imperial_2013_co <- read.csv("co.csv", header=T, na.strings=c(""), stringsAsFactors = T)
imperial_2013_co <- imperial_2013_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
imperial_2013_co$Date <- parse_date_time(imperial_2013_co$Date, c("%m-%d-%y", "%m/%d/%y"))
imperial_2013_co <- separate(imperial_2013_co,Date, c("year","month","date"), sep = "-")
imperial_2013_co <- aggregate(imperial_2013_co[, c(4,5,7,8)], list(imperial_2013_co$year,imperial_2013_co$COUNTY), mean)
colnames(imperial_2013_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#imperial 2013 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/imperial/2013")
imperial_2013_NO2 <- read.csv("no2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
imperial_2013_NO2 <- imperial_2013_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
imperial_2013_NO2$Date <- parse_date_time(imperial_2013_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
imperial_2013_NO2 <- separate(imperial_2013_NO2,Date, c("year","month","date"), sep = "-")
imperial_2013_NO2 <- aggregate(imperial_2013_NO2[, c(4,5,7,8)], list(imperial_2013_NO2$year,imperial_2013_NO2$COUNTY), mean)
colnames(imperial_2013_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#imperial 2013 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/imperial/2013")
imperial_2013_O <- read.csv("O.csv", header=T, na.strings=c(""), stringsAsFactors = T)
imperial_2013_O <- imperial_2013_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
imperial_2013_O$Date <- parse_date_time(imperial_2013_O$Date, c("%m-%d-%y", "%m/%d/%y"))
imperial_2013_O <- separate(imperial_2013_O,Date, c("year","month","date"), sep = "-")
imperial_2013_O <- aggregate(imperial_2013_O[, c(4,5,7,8)], list(imperial_2013_O$year,imperial_2013_O$COUNTY), mean)
colnames(imperial_2013_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#imperial 2013 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/imperial/2013")
imperial_2013_PM2.5 <- read.csv("pm2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
imperial_2013_PM2.5 <- imperial_2013_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
imperial_2013_PM2.5$Date <- parse_date_time(imperial_2013_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
imperial_2013_PM2.5 <- separate(imperial_2013_PM2.5,Date, c("year","month","date"), sep = "-")
imperial_2013_PM2.5 <- aggregate(imperial_2013_PM2.5[, c(4,5,7,8)], list(imperial_2013_PM2.5$year,imperial_2013_PM2.5$COUNTY), mean)
colnames(imperial_2013_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#imperial 2013 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/imperial/2013")
imperial_2013_PM10 <- read.csv("pm10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
imperial_2013_PM10 <- imperial_2013_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
imperial_2013_PM10$Date <- parse_date_time(imperial_2013_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
imperial_2013_PM10 <- separate(imperial_2013_PM10,Date, c("year","month","date"), sep = "-")
imperial_2013_PM10 <- aggregate(imperial_2013_PM10[, c(4,5,7,8)], list(imperial_2013_PM10$year,imperial_2013_PM10$COUNTY), mean)
colnames(imperial_2013_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#imperial 2013 all pollutant data
imperial_2013 <- cbind(imperial_2013_co,imperial_2013_NO2$NO2_concentration_value,imperial_2013_NO2$NO2_AQI,imperial_2013_O$O3_concentration_value,imperial_2013_O$O3_AQI,imperial_2013_PM2.5$PM2.5_concentration_value,imperial_2013_PM2.5$PM2.5_AQI,imperial_2013_PM10$PM10_concentration_value,imperial_2013_PM10$PM10_AQI)
imperial_2013 <- imperial_2013[c(1:4,7:14,5,6)]
colnames(imperial_2013) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#-------------------------------------------------------------------------------------------------------------
#imperial 2014 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/imperial/2014")
imperial_2014_co <- read.csv("co.csv", header=T, na.strings=c(""), stringsAsFactors = T)
imperial_2014_co <- imperial_2014_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
imperial_2014_co$Date <- parse_date_time(imperial_2014_co$Date, c("%m-%d-%y", "%m/%d/%y"))
imperial_2014_co <- separate(imperial_2014_co,Date, c("year","month","date"), sep = "-")
imperial_2014_co <- aggregate(imperial_2014_co[, c(4,5,7,8)], list(imperial_2014_co$year,imperial_2014_co$COUNTY), mean)
colnames(imperial_2014_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#imperial 2014 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/imperial/2014")
imperial_2014_NO2 <- read.csv("no2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
imperial_2014_NO2 <- imperial_2014_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
imperial_2014_NO2$Date <- parse_date_time(imperial_2014_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
imperial_2014_NO2 <- separate(imperial_2014_NO2,Date, c("year","month","date"), sep = "-")
imperial_2014_NO2 <- aggregate(imperial_2014_NO2[, c(4,5,7,8)], list(imperial_2014_NO2$year,imperial_2014_NO2$COUNTY), mean)
colnames(imperial_2014_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#imperial 2014 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/imperial/2014")
imperial_2014_O <- read.csv("o.csv", header=T, na.strings=c(""), stringsAsFactors = T)
imperial_2014_O <- imperial_2014_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
imperial_2014_O$Date <- parse_date_time(imperial_2014_O$Date, c("%m-%d-%y", "%m/%d/%y"))
imperial_2014_O <- separate(imperial_2014_O,Date, c("year","month","date"), sep = "-")
imperial_2014_O <- aggregate(imperial_2014_O[, c(4,5,7,8)], list(imperial_2014_O$year,imperial_2014_O$COUNTY), mean)
colnames(imperial_2014_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#imperial 2014 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/imperial/2014")
imperial_2014_PM2.5 <- read.csv("pm2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
imperial_2014_PM2.5 <- imperial_2014_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
imperial_2014_PM2.5$Date <- parse_date_time(imperial_2014_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
imperial_2014_PM2.5 <- separate(imperial_2014_PM2.5,Date, c("year","month","date"), sep = "-")
imperial_2014_PM2.5 <- aggregate(imperial_2014_PM2.5[, c(4,5,7,8)], list(imperial_2014_PM2.5$year,imperial_2014_PM2.5$COUNTY), mean)
colnames(imperial_2014_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#imperial 2014 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/imperial/2014")
imperial_2014_PM10 <- read.csv("pm10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
imperial_2014_PM10 <- imperial_2014_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
imperial_2014_PM10$Date <- parse_date_time(imperial_2014_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
imperial_2014_PM10 <- separate(imperial_2014_PM10,Date, c("year","month","date"), sep = "-")
imperial_2014_PM10 <- aggregate(imperial_2014_PM10[, c(4,5,7,8)], list(imperial_2014_PM10$year,imperial_2014_PM10$COUNTY), mean)
colnames(imperial_2014_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#imperial 2014 all pollutant data
imperial_2014 <- cbind(imperial_2014_co,imperial_2014_NO2$NO2_concentration_value,imperial_2014_NO2$NO2_AQI,imperial_2014_O$O3_concentration_value,imperial_2014_O$O3_AQI,imperial_2014_PM2.5$PM2.5_concentration_value,imperial_2014_PM2.5$PM2.5_AQI,imperial_2014_PM10$PM10_concentration_value,imperial_2014_PM10$PM10_AQI)
imperial_2014 <- imperial_2014[c(1:4,7:14,5,6)]
colnames(imperial_2014) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#----------------------------------------------------------------------------------------------------------------------

#imperial 2015 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/imperial/2015")
imperial_2015_co <- read.csv("co.csv", header=T, na.strings=c(""), stringsAsFactors = T)
imperial_2015_co <- imperial_2015_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
imperial_2015_co$Date <- parse_date_time(imperial_2015_co$Date, c("%m-%d-%y", "%m/%d/%y"))
imperial_2015_co <- separate(imperial_2015_co,Date, c("year","month","date"), sep = "-")
imperial_2015_co <- aggregate(imperial_2015_co[, c(4,5,7,8)], list(imperial_2015_co$year,imperial_2015_co$COUNTY), mean)
colnames(imperial_2015_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#imperial 2015 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/imperial/2015")
imperial_2015_NO2 <- read.csv("no2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
imperial_2015_NO2 <- imperial_2015_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
imperial_2015_NO2$Date <- parse_date_time(imperial_2015_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
imperial_2015_NO2 <- separate(imperial_2015_NO2,Date, c("year","month","date"), sep = "-")
imperial_2015_NO2 <- aggregate(imperial_2015_NO2[, c(4,5,7,8)], list(imperial_2015_NO2$year,imperial_2015_NO2$COUNTY), mean)
colnames(imperial_2015_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#imperial 2015 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/imperial/2015")
imperial_2015_O <- read.csv("o.csv", header=T, na.strings=c(""), stringsAsFactors = T)
imperial_2015_O <- imperial_2015_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
imperial_2015_O$Date <- parse_date_time(imperial_2015_O$Date, c("%m-%d-%y", "%m/%d/%y"))
imperial_2015_O <- separate(imperial_2015_O,Date, c("year","month","date"), sep = "-")
imperial_2015_O <- aggregate(imperial_2015_O[, c(4,5,7,8)], list(imperial_2015_O$year,imperial_2015_O$COUNTY), mean)
colnames(imperial_2015_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#imperial 2015 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/imperial/2015")
imperial_2015_PM2.5 <- read.csv("pm2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
imperial_2015_PM2.5 <- imperial_2015_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
imperial_2015_PM2.5$Date <- parse_date_time(imperial_2015_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
imperial_2015_PM2.5 <- separate(imperial_2015_PM2.5,Date, c("year","month","date"), sep = "-")
imperial_2015_PM2.5 <- aggregate(imperial_2015_PM2.5[, c(4,5,7,8)], list(imperial_2015_PM2.5$year,imperial_2015_PM2.5$COUNTY), mean)
colnames(imperial_2015_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#imperial 2015 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/imperial/2015")
imperial_2015_PM10 <- read.csv("pm10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
imperial_2015_PM10 <- imperial_2015_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
imperial_2015_PM10$Date <- parse_date_time(imperial_2015_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
imperial_2015_PM10 <- separate(imperial_2015_PM10,Date, c("year","month","date"), sep = "-")
imperial_2015_PM10 <- aggregate(imperial_2015_PM10[, c(4,5,7,8)], list(imperial_2015_PM10$year,imperial_2015_PM10$COUNTY), mean)
colnames(imperial_2015_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#imperial 2015 all pollutant data
imperial_2015 <- cbind(imperial_2015_co,imperial_2015_NO2$NO2_concentration_value,imperial_2015_NO2$NO2_AQI,imperial_2015_O$O3_concentration_value,imperial_2015_O$O3_AQI,imperial_2015_PM2.5$PM2.5_concentration_value,imperial_2015_PM2.5$PM2.5_AQI,imperial_2015_PM10$PM10_concentration_value,imperial_2015_PM10$PM10_AQI)
imperial_2015 <- imperial_2015[c(1:4,7:14,5,6)]
colnames(imperial_2015) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#-------------------------------------------------------------------------------------------------------
#imperial 2016 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/imperial/2016")
imperial_2016_co <- read.csv("co.csv", header=T, na.strings=c(""), stringsAsFactors = T)
imperial_2016_co <- imperial_2016_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
imperial_2016_co$Date <- parse_date_time(imperial_2016_co$Date, c("%m-%d-%y", "%m/%d/%y"))
imperial_2016_co <- separate(imperial_2016_co,Date, c("year","month","date"), sep = "-")
imperial_2016_co <- aggregate(imperial_2016_co[, c(4,5,7,8)], list(imperial_2016_co$year,imperial_2016_co$COUNTY), mean)
colnames(imperial_2016_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#imperial 2016 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/imperial/2016")
imperial_2016_NO2 <- read.csv("no2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
imperial_2016_NO2 <- imperial_2016_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
imperial_2016_NO2$Date <- parse_date_time(imperial_2016_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
imperial_2016_NO2 <- separate(imperial_2016_NO2,Date, c("year","month","date"), sep = "-")
imperial_2016_NO2 <- aggregate(imperial_2016_NO2[, c(4,5,7,8)], list(imperial_2016_NO2$year,imperial_2016_NO2$COUNTY), mean)
colnames(imperial_2016_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#imperial 2016 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/imperial/2016")
imperial_2016_O <- read.csv("o.csv", header=T, na.strings=c(""), stringsAsFactors = T)
imperial_2016_O <- imperial_2016_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
imperial_2016_O$Date <- parse_date_time(imperial_2016_O$Date, c("%m-%d-%y", "%m/%d/%y"))
imperial_2016_O <- separate(imperial_2016_O,Date, c("year","month","date"), sep = "-")
imperial_2016_O <- aggregate(imperial_2016_O[, c(4,5,7,8)], list(imperial_2016_O$year,imperial_2016_O$COUNTY), mean)
colnames(imperial_2016_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#imperial 2016 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/imperial/2016")
imperial_2016_PM2.5 <- read.csv("pm2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
imperial_2016_PM2.5 <- imperial_2016_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
imperial_2016_PM2.5$Date <- parse_date_time(imperial_2016_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
imperial_2016_PM2.5 <- separate(imperial_2016_PM2.5,Date, c("year","month","date"), sep = "-")
imperial_2016_PM2.5 <- aggregate(imperial_2016_PM2.5[, c(4,5,7,8)], list(imperial_2016_PM2.5$year,imperial_2016_PM2.5$COUNTY), mean)
colnames(imperial_2016_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#imperial 2016 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/imperial/2016")
imperial_2016_PM10 <- read.csv("pm10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
imperial_2016_PM10 <- imperial_2016_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
imperial_2016_PM10$Date <- parse_date_time(imperial_2016_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
imperial_2016_PM10 <- separate(imperial_2016_PM10,Date, c("year","month","date"), sep = "-")
imperial_2016_PM10 <- aggregate(imperial_2016_PM10[, c(4,5,7,8)], list(imperial_2016_PM10$year,imperial_2016_PM10$COUNTY), mean)
colnames(imperial_2016_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#imperial 2016 all pollutant data
imperial_2016 <- cbind(imperial_2016_co,imperial_2016_NO2$NO2_concentration_value,imperial_2016_NO2$NO2_AQI,imperial_2016_O$O3_concentration_value,imperial_2016_O$O3_AQI,imperial_2016_PM2.5$PM2.5_concentration_value,imperial_2016_PM2.5$PM2.5_AQI,imperial_2016_PM10$PM10_concentration_value,imperial_2016_PM10$PM10_AQI)
imperial_2016 <- imperial_2016[c(1:4,7:14,5,6)]
colnames(imperial_2016) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#----------------------------------------------------------------------------------------------------------
#imperial 2017 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/imperial/2017")
imperial_2017_co <- read.csv("co.csv", header=T, na.strings=c(""), stringsAsFactors = T)
imperial_2017_co <- imperial_2017_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
imperial_2017_co$Date <- parse_date_time(imperial_2017_co$Date, c("%m-%d-%y", "%m/%d/%y"))
imperial_2017_co <- separate(imperial_2017_co,Date, c("year","month","date"), sep = "-")
imperial_2017_co <- aggregate(imperial_2017_co[, c(4,5,7,8)], list(imperial_2017_co$year,imperial_2017_co$COUNTY), mean)
colnames(imperial_2017_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#imperial 2017 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/imperial/2017")
imperial_2017_NO2 <- read.csv("no2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
imperial_2017_NO2 <- imperial_2017_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
imperial_2017_NO2$Date <- parse_date_time(imperial_2017_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
imperial_2017_NO2 <- separate(imperial_2017_NO2,Date, c("year","month","date"), sep = "-")
imperial_2017_NO2 <- aggregate(imperial_2017_NO2[, c(4,5,7,8)], list(imperial_2017_NO2$year,imperial_2017_NO2$COUNTY), mean)
colnames(imperial_2017_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#imperial 2017 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/imperial/2017")
imperial_2017_O <- read.csv("o.csv", header=T, na.strings=c(""), stringsAsFactors = T)
imperial_2017_O <- imperial_2017_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
imperial_2017_O$Date <- parse_date_time(imperial_2017_O$Date, c("%m-%d-%y", "%m/%d/%y"))
imperial_2017_O <- separate(imperial_2017_O,Date, c("year","month","date"), sep = "-")
imperial_2017_O <- aggregate(imperial_2017_O[, c(4,5,7,8)], list(imperial_2017_O$year,imperial_2017_O$COUNTY), mean)
colnames(imperial_2017_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#imperial 2017 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/imperial/2017")
imperial_2017_PM2.5 <- read.csv("pm2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
imperial_2017_PM2.5 <- imperial_2017_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
imperial_2017_PM2.5$Date <- parse_date_time(imperial_2017_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
imperial_2017_PM2.5 <- separate(imperial_2017_PM2.5,Date, c("year","month","date"), sep = "-")
imperial_2017_PM2.5 <- aggregate(imperial_2017_PM2.5[, c(4,5,7,8)], list(imperial_2017_PM2.5$year,imperial_2017_PM2.5$COUNTY), mean)
colnames(imperial_2017_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#imperial 2017 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/imperial/2017")
imperial_2017_PM10 <- read.csv("pm10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
imperial_2017_PM10 <- imperial_2017_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
imperial_2017_PM10$Date <- parse_date_time(imperial_2017_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
imperial_2017_PM10 <- separate(imperial_2017_PM10,Date, c("year","month","date"), sep = "-")
imperial_2017_PM10 <- aggregate(imperial_2017_PM10[, c(4,5,7,8)], list(imperial_2017_PM10$year,imperial_2017_PM10$COUNTY), mean)
colnames(imperial_2017_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#imperial 2017 all pollutant data
imperial_2017 <- cbind(imperial_2017_co,imperial_2017_NO2$NO2_concentration_value,imperial_2017_NO2$NO2_AQI,imperial_2017_O$O3_concentration_value,imperial_2017_O$O3_AQI,imperial_2017_PM2.5$PM2.5_concentration_value,imperial_2017_PM2.5$PM2.5_AQI,imperial_2017_PM10$PM10_concentration_value,imperial_2017_PM10$PM10_AQI)
imperial_2017 <- imperial_2017[c(1:4,7:14,5,6)]
colnames(imperial_2017) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#--------------------------------------------------------------------------------------------------------
#imperial final data
imperial <- rbind(imperial_2011,imperial_2012,imperial_2013,imperial_2014,imperial_2015,imperial_2016,imperial_2017)
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/FINAL_DATASETS")
write.csv(imperial, file = "imperial.csv")
