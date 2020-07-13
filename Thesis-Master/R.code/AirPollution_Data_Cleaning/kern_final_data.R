#kern 2011 CO
#setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/kern/2011")
#kern_2011_co <- read.csv("co.csv", header=T, na.strings=c(""), stringsAsFactors = T)
#kern_2011_co <- kern_2011_co[ ,-c(2,3,4,6,8:17)]
#library(lubridate)
#kern_2011_co$Date <- parse_date_time(kern_2011_co$Date, c("%m-%d-%y", "%m/%d/%y"))
#kern_2011_co <- separate(kern_2011_co,Date, c("year","month","date"), sep = "-")
#kern_2011_co <- aggregate(kern_2011_co[, c(4,5,7,8)], list(kern_2011_co$year,kern_2011_co$COUNTY), mean)
#colnames(kern_2011_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#kern 2011 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/kern/2011")
kern_2011_NO2 <- read.csv("no2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
kern_2011_NO2 <- kern_2011_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
kern_2011_NO2$Date <- parse_date_time(kern_2011_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
kern_2011_NO2 <- separate(kern_2011_NO2,Date, c("year","month","date"), sep = "-")
kern_2011_NO2 <- aggregate(kern_2011_NO2[, c(4,5,7,8)], list(kern_2011_NO2$year,kern_2011_NO2$COUNTY), mean)
colnames(kern_2011_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#kern 2011 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/kern/2011")
kern_2011_O <- read.csv("o.csv", header=T, na.strings=c(""), stringsAsFactors = T)
kern_2011_O <- kern_2011_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
kern_2011_O$Date <- parse_date_time(kern_2011_O$Date, c("%m-%d-%y", "%m/%d/%y"))
kern_2011_O <- separate(kern_2011_O,Date, c("year","month","date"), sep = "-")
kern_2011_O <- aggregate(kern_2011_O[, c(4,5,7,8)], list(kern_2011_O$year,kern_2011_O$COUNTY), mean)
colnames(kern_2011_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#kern 2011 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/kern/2011")
kern_2011_PM2.5 <- read.csv("pm2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
kern_2011_PM2.5 <- kern_2011_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
kern_2011_PM2.5$Date <- parse_date_time(kern_2011_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
kern_2011_PM2.5 <- separate(kern_2011_PM2.5,Date, c("year","month","date"), sep = "-")
kern_2011_PM2.5 <- aggregate(kern_2011_PM2.5[, c(4,5,7,8)], list(kern_2011_PM2.5$year,kern_2011_PM2.5$COUNTY), mean)
colnames(kern_2011_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#kern 2011 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/kern/2011")
kern_2011_PM10 <- read.csv("pm10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
kern_2011_PM10 <- kern_2011_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
kern_2011_PM10$Date <- parse_date_time(kern_2011_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
kern_2011_PM10 <- separate(kern_2011_PM10,Date, c("year","month","date"), sep = "-")
kern_2011_PM10 <- aggregate(kern_2011_PM10[, c(4,5,7,8)], list(kern_2011_PM10$year,kern_2011_PM10$COUNTY), mean)
colnames(kern_2011_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#kern 2011 all pollutant data
kern_2011 <- cbind(kern_2011_NO2,kern_2011_O$O3_concentration_value,kern_2011_O$O3_AQI,kern_2011_PM2.5$PM2.5_concentration_value,kern_2011_PM2.5$PM2.5_AQI,kern_2011_PM10$PM10_concentration_value,kern_2011_PM10$PM10_AQI)
kern_2011 <- kern_2011[c(1:4,7:14,5,6)]
colnames(kern_2011) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#---------------------------------------------------------------------------------------------------
#kern 2012 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/kern/2012")
kern_2012_co <- read.csv("co.csv", header=T, na.strings=c(""), stringsAsFactors = T)
kern_2012_co <- kern_2012_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
kern_2012_co$Date <- parse_date_time(kern_2012_co$Date, c("%m-%d-%y", "%m/%d/%y"))
kern_2012_co <- separate(kern_2012_co,Date, c("year","month","date"), sep = "-")
kern_2012_co <- aggregate(kern_2012_co[, c(4,5,7,8)], list(kern_2012_co$year,kern_2012_co$COUNTY), mean)
colnames(kern_2012_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#kern 2012 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/kern/2012")
kern_2012_NO2 <- read.csv("no2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
kern_2012_NO2 <- kern_2012_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
kern_2012_NO2$Date <- parse_date_time(kern_2012_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
kern_2012_NO2 <- separate(kern_2012_NO2,Date, c("year","month","date"), sep = "-")
kern_2012_NO2 <- aggregate(kern_2012_NO2[, c(4,5,7,8)], list(kern_2012_NO2$year,kern_2012_NO2$COUNTY), mean)
colnames(kern_2012_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#kern 2012 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/kern/2012")
kern_2012_O <- read.csv("o.csv", header=T, na.strings=c(""), stringsAsFactors = T)
kern_2012_O <- kern_2012_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
kern_2012_O$Date <- parse_date_time(kern_2012_O$Date, c("%m-%d-%y", "%m/%d/%y"))
kern_2012_O <- separate(kern_2012_O,Date, c("year","month","date"), sep = "-")
kern_2012_O <- aggregate(kern_2012_O[, c(4,5,7,8)], list(kern_2012_O$year,kern_2012_O$COUNTY), mean)
colnames(kern_2012_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#kern 2012 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/kern/2012")
kern_2012_PM2.5 <- read.csv("pm2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
kern_2012_PM2.5 <- kern_2012_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
kern_2012_PM2.5$Date <- parse_date_time(kern_2012_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
kern_2012_PM2.5 <- separate(kern_2012_PM2.5,Date, c("year","month","date"), sep = "-")
kern_2012_PM2.5 <- aggregate(kern_2012_PM2.5[, c(4,5,7,8)], list(kern_2012_PM2.5$year,kern_2012_PM2.5$COUNTY), mean)
colnames(kern_2012_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#kern 2012 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/kern/2012")
kern_2012_PM10 <- read.csv("pm10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
kern_2012_PM10 <- kern_2012_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
kern_2012_PM10$Date <- parse_date_time(kern_2012_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
kern_2012_PM10 <- separate(kern_2012_PM10,Date, c("year","month","date"), sep = "-")
kern_2012_PM10 <- aggregate(kern_2012_PM10[, c(4,5,7,8)], list(kern_2012_PM10$year,kern_2012_PM10$COUNTY), mean)
colnames(kern_2012_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#kern 2012 all pollutant data
kern_2012 <- cbind(kern_2012_co,kern_2012_NO2$NO2_concentration_value,kern_2012_NO2$NO2_AQI,kern_2012_O$O3_concentration_value,kern_2012_O$O3_AQI,kern_2012_PM2.5$PM2.5_concentration_value,kern_2012_PM2.5$PM2.5_AQI,kern_2012_PM10$PM10_concentration_value,kern_2012_PM10$PM10_AQI)
kern_2012 <- kern_2012[c(1:4,7:14,5,6)]
colnames(kern_2012) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#-------------------------------------------------------------------------------------------------------
#kern 2013 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/kern/2013")
kern_2013_co <- read.csv("co.csv", header=T, na.strings=c(""), stringsAsFactors = T)
kern_2013_co <- kern_2013_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
kern_2013_co$Date <- parse_date_time(kern_2013_co$Date, c("%m-%d-%y", "%m/%d/%y"))
kern_2013_co <- separate(kern_2013_co,Date, c("year","month","date"), sep = "-")
kern_2013_co <- aggregate(kern_2013_co[, c(4,5,7,8)], list(kern_2013_co$year,kern_2013_co$COUNTY), mean)
colnames(kern_2013_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#kern 2013 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/kern/2013")
kern_2013_NO2 <- read.csv("no2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
kern_2013_NO2 <- kern_2013_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
kern_2013_NO2$Date <- parse_date_time(kern_2013_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
kern_2013_NO2 <- separate(kern_2013_NO2,Date, c("year","month","date"), sep = "-")
kern_2013_NO2 <- aggregate(kern_2013_NO2[, c(4,5,7,8)], list(kern_2013_NO2$year,kern_2013_NO2$COUNTY), mean)
colnames(kern_2013_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#kern 2013 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/kern/2013")
kern_2013_O <- read.csv("O.csv", header=T, na.strings=c(""), stringsAsFactors = T)
kern_2013_O <- kern_2013_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
kern_2013_O$Date <- parse_date_time(kern_2013_O$Date, c("%m-%d-%y", "%m/%d/%y"))
kern_2013_O <- separate(kern_2013_O,Date, c("year","month","date"), sep = "-")
kern_2013_O <- aggregate(kern_2013_O[, c(4,5,7,8)], list(kern_2013_O$year,kern_2013_O$COUNTY), mean)
colnames(kern_2013_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#kern 2013 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/kern/2013")
kern_2013_PM2.5 <- read.csv("pm2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
kern_2013_PM2.5 <- kern_2013_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
kern_2013_PM2.5$Date <- parse_date_time(kern_2013_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
kern_2013_PM2.5 <- separate(kern_2013_PM2.5,Date, c("year","month","date"), sep = "-")
kern_2013_PM2.5 <- aggregate(kern_2013_PM2.5[, c(4,5,7,8)], list(kern_2013_PM2.5$year,kern_2013_PM2.5$COUNTY), mean)
colnames(kern_2013_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#kern 2013 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/kern/2013")
kern_2013_PM10 <- read.csv("pm10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
kern_2013_PM10 <- kern_2013_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
kern_2013_PM10$Date <- parse_date_time(kern_2013_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
kern_2013_PM10 <- separate(kern_2013_PM10,Date, c("year","month","date"), sep = "-")
kern_2013_PM10 <- aggregate(kern_2013_PM10[, c(4,5,7,8)], list(kern_2013_PM10$year,kern_2013_PM10$COUNTY), mean)
colnames(kern_2013_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#kern 2013 all pollutant data
kern_2013 <- cbind(kern_2013_co,kern_2013_NO2$NO2_concentration_value,kern_2013_NO2$NO2_AQI,kern_2013_O$O3_concentration_value,kern_2013_O$O3_AQI,kern_2013_PM2.5$PM2.5_concentration_value,kern_2013_PM2.5$PM2.5_AQI,kern_2013_PM10$PM10_concentration_value,kern_2013_PM10$PM10_AQI)
kern_2013 <- kern_2013[c(1:4,7:14,5,6)]
colnames(kern_2013) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#-------------------------------------------------------------------------------------------------------------
#kern 2014 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/kern/2014")
kern_2014_co <- read.csv("co.csv", header=T, na.strings=c(""), stringsAsFactors = T)
kern_2014_co <- kern_2014_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
kern_2014_co$Date <- parse_date_time(kern_2014_co$Date, c("%m-%d-%y", "%m/%d/%y"))
kern_2014_co <- separate(kern_2014_co,Date, c("year","month","date"), sep = "-")
kern_2014_co <- aggregate(kern_2014_co[, c(4,5,7,8)], list(kern_2014_co$year,kern_2014_co$COUNTY), mean)
colnames(kern_2014_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#kern 2014 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/kern/2014")
kern_2014_NO2 <- read.csv("no2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
kern_2014_NO2 <- kern_2014_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
kern_2014_NO2$Date <- parse_date_time(kern_2014_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
kern_2014_NO2 <- separate(kern_2014_NO2,Date, c("year","month","date"), sep = "-")
kern_2014_NO2 <- aggregate(kern_2014_NO2[, c(4,5,7,8)], list(kern_2014_NO2$year,kern_2014_NO2$COUNTY), mean)
colnames(kern_2014_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#kern 2014 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/kern/2014")
kern_2014_O <- read.csv("o.csv", header=T, na.strings=c(""), stringsAsFactors = T)
kern_2014_O <- kern_2014_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
kern_2014_O$Date <- parse_date_time(kern_2014_O$Date, c("%m-%d-%y", "%m/%d/%y"))
kern_2014_O <- separate(kern_2014_O,Date, c("year","month","date"), sep = "-")
kern_2014_O <- aggregate(kern_2014_O[, c(4,5,7,8)], list(kern_2014_O$year,kern_2014_O$COUNTY), mean)
colnames(kern_2014_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#kern 2014 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/kern/2014")
kern_2014_PM2.5 <- read.csv("pm2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
kern_2014_PM2.5 <- kern_2014_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
kern_2014_PM2.5$Date <- parse_date_time(kern_2014_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
kern_2014_PM2.5 <- separate(kern_2014_PM2.5,Date, c("year","month","date"), sep = "-")
kern_2014_PM2.5 <- aggregate(kern_2014_PM2.5[, c(4,5,7,8)], list(kern_2014_PM2.5$year,kern_2014_PM2.5$COUNTY), mean)
colnames(kern_2014_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#kern 2014 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/kern/2014")
kern_2014_PM10 <- read.csv("pm10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
kern_2014_PM10 <- kern_2014_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
kern_2014_PM10$Date <- parse_date_time(kern_2014_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
kern_2014_PM10 <- separate(kern_2014_PM10,Date, c("year","month","date"), sep = "-")
kern_2014_PM10 <- aggregate(kern_2014_PM10[, c(4,5,7,8)], list(kern_2014_PM10$year,kern_2014_PM10$COUNTY), mean)
colnames(kern_2014_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#kern 2014 all pollutant data
kern_2014 <- cbind(kern_2014_co,kern_2014_NO2$NO2_concentration_value,kern_2014_NO2$NO2_AQI,kern_2014_O$O3_concentration_value,kern_2014_O$O3_AQI,kern_2014_PM2.5$PM2.5_concentration_value,kern_2014_PM2.5$PM2.5_AQI,kern_2014_PM10$PM10_concentration_value,kern_2014_PM10$PM10_AQI)
kern_2014 <- kern_2014[c(1:4,7:14,5,6)]
colnames(kern_2014) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#----------------------------------------------------------------------------------------------------------------------

#kern 2015 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/kern/2015")
kern_2015_co <- read.csv("co.csv", header=T, na.strings=c(""), stringsAsFactors = T)
kern_2015_co <- kern_2015_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
kern_2015_co$Date <- parse_date_time(kern_2015_co$Date, c("%m-%d-%y", "%m/%d/%y"))
kern_2015_co <- separate(kern_2015_co,Date, c("year","month","date"), sep = "-")
kern_2015_co <- aggregate(kern_2015_co[, c(4,5,7,8)], list(kern_2015_co$year,kern_2015_co$COUNTY), mean)
colnames(kern_2015_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#kern 2015 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/kern/2015")
kern_2015_NO2 <- read.csv("no2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
kern_2015_NO2 <- kern_2015_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
kern_2015_NO2$Date <- parse_date_time(kern_2015_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
kern_2015_NO2 <- separate(kern_2015_NO2,Date, c("year","month","date"), sep = "-")
kern_2015_NO2 <- aggregate(kern_2015_NO2[, c(4,5,7,8)], list(kern_2015_NO2$year,kern_2015_NO2$COUNTY), mean)
colnames(kern_2015_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#kern 2015 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/kern/2015")
kern_2015_O <- read.csv("o.csv", header=T, na.strings=c(""), stringsAsFactors = T)
kern_2015_O <- kern_2015_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
kern_2015_O$Date <- parse_date_time(kern_2015_O$Date, c("%m-%d-%y", "%m/%d/%y"))
kern_2015_O <- separate(kern_2015_O,Date, c("year","month","date"), sep = "-")
kern_2015_O <- aggregate(kern_2015_O[, c(4,5,7,8)], list(kern_2015_O$year,kern_2015_O$COUNTY), mean)
colnames(kern_2015_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#kern 2015 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/kern/2015")
kern_2015_PM2.5 <- read.csv("pm2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
kern_2015_PM2.5 <- kern_2015_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
kern_2015_PM2.5$Date <- parse_date_time(kern_2015_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
kern_2015_PM2.5 <- separate(kern_2015_PM2.5,Date, c("year","month","date"), sep = "-")
kern_2015_PM2.5 <- aggregate(kern_2015_PM2.5[, c(4,5,7,8)], list(kern_2015_PM2.5$year,kern_2015_PM2.5$COUNTY), mean)
colnames(kern_2015_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#kern 2015 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/kern/2015")
kern_2015_PM10 <- read.csv("pm10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
kern_2015_PM10 <- kern_2015_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
kern_2015_PM10$Date <- parse_date_time(kern_2015_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
kern_2015_PM10 <- separate(kern_2015_PM10,Date, c("year","month","date"), sep = "-")
kern_2015_PM10 <- aggregate(kern_2015_PM10[, c(4,5,7,8)], list(kern_2015_PM10$year,kern_2015_PM10$COUNTY), mean)
colnames(kern_2015_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#kern 2015 all pollutant data
kern_2015 <- cbind(kern_2015_co,kern_2015_NO2$NO2_concentration_value,kern_2015_NO2$NO2_AQI,kern_2015_O$O3_concentration_value,kern_2015_O$O3_AQI,kern_2015_PM2.5$PM2.5_concentration_value,kern_2015_PM2.5$PM2.5_AQI,kern_2015_PM10$PM10_concentration_value,kern_2015_PM10$PM10_AQI)
kern_2015 <- kern_2015[c(1:4,7:14,5,6)]
colnames(kern_2015) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#-------------------------------------------------------------------------------------------------------
#kern 2016 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/kern/2016")
kern_2016_co <- read.csv("co.csv", header=T, na.strings=c(""), stringsAsFactors = T)
kern_2016_co <- kern_2016_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
kern_2016_co$Date <- parse_date_time(kern_2016_co$Date, c("%m-%d-%y", "%m/%d/%y"))
kern_2016_co <- separate(kern_2016_co,Date, c("year","month","date"), sep = "-")
kern_2016_co <- aggregate(kern_2016_co[, c(4,5,7,8)], list(kern_2016_co$year,kern_2016_co$COUNTY), mean)
colnames(kern_2016_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#kern 2016 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/kern/2016")
kern_2016_NO2 <- read.csv("no2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
kern_2016_NO2 <- kern_2016_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
kern_2016_NO2$Date <- parse_date_time(kern_2016_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
kern_2016_NO2 <- separate(kern_2016_NO2,Date, c("year","month","date"), sep = "-")
kern_2016_NO2 <- aggregate(kern_2016_NO2[, c(4,5,7,8)], list(kern_2016_NO2$year,kern_2016_NO2$COUNTY), mean)
colnames(kern_2016_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#kern 2016 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/kern/2016")
kern_2016_O <- read.csv("o.csv", header=T, na.strings=c(""), stringsAsFactors = T)
kern_2016_O <- kern_2016_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
kern_2016_O$Date <- parse_date_time(kern_2016_O$Date, c("%m-%d-%y", "%m/%d/%y"))
kern_2016_O <- separate(kern_2016_O,Date, c("year","month","date"), sep = "-")
kern_2016_O <- aggregate(kern_2016_O[, c(4,5,7,8)], list(kern_2016_O$year,kern_2016_O$COUNTY), mean)
colnames(kern_2016_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#kern 2016 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/kern/2016")
kern_2016_PM2.5 <- read.csv("pm2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
kern_2016_PM2.5 <- kern_2016_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
kern_2016_PM2.5$Date <- parse_date_time(kern_2016_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
kern_2016_PM2.5 <- separate(kern_2016_PM2.5,Date, c("year","month","date"), sep = "-")
kern_2016_PM2.5 <- aggregate(kern_2016_PM2.5[, c(4,5,7,8)], list(kern_2016_PM2.5$year,kern_2016_PM2.5$COUNTY), mean)
colnames(kern_2016_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#kern 2016 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/kern/2016")
kern_2016_PM10 <- read.csv("pm10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
kern_2016_PM10 <- kern_2016_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
kern_2016_PM10$Date <- parse_date_time(kern_2016_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
kern_2016_PM10 <- separate(kern_2016_PM10,Date, c("year","month","date"), sep = "-")
kern_2016_PM10 <- aggregate(kern_2016_PM10[, c(4,5,7,8)], list(kern_2016_PM10$year,kern_2016_PM10$COUNTY), mean)
colnames(kern_2016_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#kern 2016 all pollutant data
kern_2016 <- cbind(kern_2016_co,kern_2016_NO2$NO2_concentration_value,kern_2016_NO2$NO2_AQI,kern_2016_O$O3_concentration_value,kern_2016_O$O3_AQI,kern_2016_PM2.5$PM2.5_concentration_value,kern_2016_PM2.5$PM2.5_AQI,kern_2016_PM10$PM10_concentration_value,kern_2016_PM10$PM10_AQI)
kern_2016 <- kern_2016[c(1:4,7:14,5,6)]
colnames(kern_2016) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#----------------------------------------------------------------------------------------------------------
#kern 2017 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/kern/2017")
kern_2017_co <- read.csv("co.csv", header=T, na.strings=c(""), stringsAsFactors = T)
kern_2017_co <- kern_2017_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
kern_2017_co$Date <- parse_date_time(kern_2017_co$Date, c("%m-%d-%y", "%m/%d/%y"))
kern_2017_co <- separate(kern_2017_co,Date, c("year","month","date"), sep = "-")
kern_2017_co <- aggregate(kern_2017_co[, c(4,5,7,8)], list(kern_2017_co$year,kern_2017_co$COUNTY), mean)
colnames(kern_2017_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#kern 2017 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/kern/2017")
kern_2017_NO2 <- read.csv("no2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
kern_2017_NO2 <- kern_2017_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
kern_2017_NO2$Date <- parse_date_time(kern_2017_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
kern_2017_NO2 <- separate(kern_2017_NO2,Date, c("year","month","date"), sep = "-")
kern_2017_NO2 <- aggregate(kern_2017_NO2[, c(4,5,7,8)], list(kern_2017_NO2$year,kern_2017_NO2$COUNTY), mean)
colnames(kern_2017_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#kern 2017 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/kern/2017")
kern_2017_O <- read.csv("o.csv", header=T, na.strings=c(""), stringsAsFactors = T)
kern_2017_O <- kern_2017_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
kern_2017_O$Date <- parse_date_time(kern_2017_O$Date, c("%m-%d-%y", "%m/%d/%y"))
kern_2017_O <- separate(kern_2017_O,Date, c("year","month","date"), sep = "-")
kern_2017_O <- aggregate(kern_2017_O[, c(4,5,7,8)], list(kern_2017_O$year,kern_2017_O$COUNTY), mean)
colnames(kern_2017_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#kern 2017 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/kern/2017")
kern_2017_PM2.5 <- read.csv("pm2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
kern_2017_PM2.5 <- kern_2017_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
kern_2017_PM2.5$Date <- parse_date_time(kern_2017_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
kern_2017_PM2.5 <- separate(kern_2017_PM2.5,Date, c("year","month","date"), sep = "-")
kern_2017_PM2.5 <- aggregate(kern_2017_PM2.5[, c(4,5,7,8)], list(kern_2017_PM2.5$year,kern_2017_PM2.5$COUNTY), mean)
colnames(kern_2017_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#kern 2017 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/kern/2017")
kern_2017_PM10 <- read.csv("pm10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
kern_2017_PM10 <- kern_2017_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
kern_2017_PM10$Date <- parse_date_time(kern_2017_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
kern_2017_PM10 <- separate(kern_2017_PM10,Date, c("year","month","date"), sep = "-")
kern_2017_PM10 <- aggregate(kern_2017_PM10[, c(4,5,7,8)], list(kern_2017_PM10$year,kern_2017_PM10$COUNTY), mean)
colnames(kern_2017_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#kern 2017 all pollutant data
kern_2017 <- cbind(kern_2017_co,kern_2017_NO2$NO2_concentration_value,kern_2017_NO2$NO2_AQI,kern_2017_O$O3_concentration_value,kern_2017_O$O3_AQI,kern_2017_PM2.5$PM2.5_concentration_value,kern_2017_PM2.5$PM2.5_AQI,kern_2017_PM10$PM10_concentration_value,kern_2017_PM10$PM10_AQI)
kern_2017 <- kern_2017[c(1:4,7:14,5,6)]
colnames(kern_2017) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#--------------------------------------------------------------------------------------------------------
#kern final data
kern <- rbind(kern_2011,kern_2012,kern_2013,kern_2014,kern_2015,kern_2016,kern_2017)
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/FINAL_DATASETS")
write.csv(kern, file = "kern.csv")
