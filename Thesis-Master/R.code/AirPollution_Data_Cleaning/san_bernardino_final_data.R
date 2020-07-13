#san_bernardino 2011 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/san_bernardino/2011")
san_bernardino_2011_co <- read.csv("2011sanbernardinoCO.csv", header=T, na.strings=c(""), stringsAsFactors = T)
san_bernardino_2011_co <- san_bernardino_2011_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
san_bernardino_2011_co$Date <- parse_date_time(san_bernardino_2011_co$Date, c("%m-%d-%y", "%m/%d/%y"))
san_bernardino_2011_co <- separate(san_bernardino_2011_co,Date, c("year","month","date"), sep = "-")
san_bernardino_2011_co <- aggregate(san_bernardino_2011_co[, c(4,5,7,8)], list(san_bernardino_2011_co$year,san_bernardino_2011_co$COUNTY), mean)
colnames(san_bernardino_2011_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#san_bernardino 2011 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/san_bernardino/2011")
san_bernardino_2011_NO2 <- read.csv("2011sanbernardinoNO2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
san_bernardino_2011_NO2 <- san_bernardino_2011_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
san_bernardino_2011_NO2$Date <- parse_date_time(san_bernardino_2011_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
san_bernardino_2011_NO2 <- separate(san_bernardino_2011_NO2,Date, c("year","month","date"), sep = "-")
san_bernardino_2011_NO2 <- aggregate(san_bernardino_2011_NO2[, c(4,5,7,8)], list(san_bernardino_2011_NO2$year,san_bernardino_2011_NO2$COUNTY), mean)
colnames(san_bernardino_2011_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#san_bernardino 2011 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/san_bernardino/2011")
san_bernardino_2011_O <- read.csv("2011sanbernardinoozone.csv", header=T, na.strings=c(""), stringsAsFactors = T)
san_bernardino_2011_O <- san_bernardino_2011_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
san_bernardino_2011_O$Date <- parse_date_time(san_bernardino_2011_O$Date, c("%m-%d-%y", "%m/%d/%y"))
san_bernardino_2011_O <- separate(san_bernardino_2011_O,Date, c("year","month","date"), sep = "-")
san_bernardino_2011_O <- aggregate(san_bernardino_2011_O[, c(4,5,7,8)], list(san_bernardino_2011_O$year,san_bernardino_2011_O$COUNTY), mean)
colnames(san_bernardino_2011_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#san_bernardino 2011 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/san_bernardino/2011")
san_bernardino_2011_PM2.5 <- read.csv("2011sanbernardinoPM2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
san_bernardino_2011_PM2.5 <- san_bernardino_2011_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
san_bernardino_2011_PM2.5$Date <- parse_date_time(san_bernardino_2011_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
san_bernardino_2011_PM2.5 <- separate(san_bernardino_2011_PM2.5,Date, c("year","month","date"), sep = "-")
san_bernardino_2011_PM2.5 <- aggregate(san_bernardino_2011_PM2.5[, c(4,5,7,8)], list(san_bernardino_2011_PM2.5$year,san_bernardino_2011_PM2.5$COUNTY), mean)
colnames(san_bernardino_2011_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#san_bernardino 2011 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/san_bernardino/2011")
san_bernardino_2011_PM10 <- read.csv("2011sanbernardinoPM10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
san_bernardino_2011_PM10 <- san_bernardino_2011_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
san_bernardino_2011_PM10$Date <- parse_date_time(san_bernardino_2011_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
san_bernardino_2011_PM10 <- separate(san_bernardino_2011_PM10,Date, c("year","month","date"), sep = "-")
san_bernardino_2011_PM10 <- aggregate(san_bernardino_2011_PM10[, c(4,5,7,8)], list(san_bernardino_2011_PM10$year,san_bernardino_2011_PM10$COUNTY), mean)
colnames(san_bernardino_2011_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#san_bernardino 2011 all pollutant data
san_bernardino_2011 <- cbind(san_bernardino_2011_co,san_bernardino_2011_NO2$NO2_concentration_value,san_bernardino_2011_NO2$NO2_AQI,san_bernardino_2011_O$O3_concentration_value,san_bernardino_2011_O$O3_AQI,san_bernardino_2011_PM2.5$PM2.5_concentration_value,san_bernardino_2011_PM2.5$PM2.5_AQI,san_bernardino_2011_PM10$PM10_concentration_value,san_bernardino_2011_PM10$PM10_AQI)
san_bernardino_2011 <- san_bernardino_2011[c(1:4,7:14,5,6)]
colnames(san_bernardino_2011) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#---------------------------------------------------------------------------------------------------
#san_bernardino 2012 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/san_bernardino/2012")
san_bernardino_2012_co <- read.csv("2012sanbernardinoCO.csv", header=T, na.strings=c(""), stringsAsFactors = T)
san_bernardino_2012_co <- san_bernardino_2012_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
san_bernardino_2012_co$Date <- parse_date_time(san_bernardino_2012_co$Date, c("%m-%d-%y", "%m/%d/%y"))
san_bernardino_2012_co <- separate(san_bernardino_2012_co,Date, c("year","month","date"), sep = "-")
san_bernardino_2012_co <- aggregate(san_bernardino_2012_co[, c(4,5,7,8)], list(san_bernardino_2012_co$year,san_bernardino_2012_co$COUNTY), mean)
colnames(san_bernardino_2012_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#san_bernardino 2012 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/san_bernardino/2012")
san_bernardino_2012_NO2 <- read.csv("2012sanbernardinoNO2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
san_bernardino_2012_NO2 <- san_bernardino_2012_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
san_bernardino_2012_NO2$Date <- parse_date_time(san_bernardino_2012_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
san_bernardino_2012_NO2 <- separate(san_bernardino_2012_NO2,Date, c("year","month","date"), sep = "-")
san_bernardino_2012_NO2 <- aggregate(san_bernardino_2012_NO2[, c(4,5,7,8)], list(san_bernardino_2012_NO2$year,san_bernardino_2012_NO2$COUNTY), mean)
colnames(san_bernardino_2012_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#san_bernardino 2012 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/san_bernardino/2012")
san_bernardino_2012_O <- read.csv("2012sanbernardinoozone.csv", header=T, na.strings=c(""), stringsAsFactors = T)
san_bernardino_2012_O <- san_bernardino_2012_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
san_bernardino_2012_O$Date <- parse_date_time(san_bernardino_2012_O$Date, c("%m-%d-%y", "%m/%d/%y"))
san_bernardino_2012_O <- separate(san_bernardino_2012_O,Date, c("year","month","date"), sep = "-")
san_bernardino_2012_O <- aggregate(san_bernardino_2012_O[, c(4,5,7,8)], list(san_bernardino_2012_O$year,san_bernardino_2012_O$COUNTY), mean)
colnames(san_bernardino_2012_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#san_bernardino 2012 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/san_bernardino/2012")
san_bernardino_2012_PM2.5 <- read.csv("2012sanbernardinoPM2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
san_bernardino_2012_PM2.5 <- san_bernardino_2012_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
san_bernardino_2012_PM2.5$Date <- parse_date_time(san_bernardino_2012_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
san_bernardino_2012_PM2.5 <- separate(san_bernardino_2012_PM2.5,Date, c("year","month","date"), sep = "-")
san_bernardino_2012_PM2.5 <- aggregate(san_bernardino_2012_PM2.5[, c(4,5,7,8)], list(san_bernardino_2012_PM2.5$year,san_bernardino_2012_PM2.5$COUNTY), mean)
colnames(san_bernardino_2012_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#san_bernardino 2012 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/san_bernardino/2012")
san_bernardino_2012_PM10 <- read.csv("2012sanbernardinoPM10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
san_bernardino_2012_PM10 <- san_bernardino_2012_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
san_bernardino_2012_PM10$Date <- parse_date_time(san_bernardino_2012_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
san_bernardino_2012_PM10 <- separate(san_bernardino_2012_PM10,Date, c("year","month","date"), sep = "-")
san_bernardino_2012_PM10 <- aggregate(san_bernardino_2012_PM10[, c(4,5,7,8)], list(san_bernardino_2012_PM10$year,san_bernardino_2012_PM10$COUNTY), mean)
colnames(san_bernardino_2012_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#san_bernardino 2012 all pollutant data
san_bernardino_2012 <- cbind(san_bernardino_2012_co,san_bernardino_2012_NO2$NO2_concentration_value,san_bernardino_2012_NO2$NO2_AQI,san_bernardino_2012_O$O3_concentration_value,san_bernardino_2012_O$O3_AQI,san_bernardino_2012_PM2.5$PM2.5_concentration_value,san_bernardino_2012_PM2.5$PM2.5_AQI,san_bernardino_2012_PM10$PM10_concentration_value,san_bernardino_2012_PM10$PM10_AQI)
san_bernardino_2012 <- san_bernardino_2012[c(1:4,7:14,5,6)]
colnames(san_bernardino_2012) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#-------------------------------------------------------------------------------------------------------
#san_bernardino 2013 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/san_bernardino/2013")
san_bernardino_2013_co <- read.csv("2013sanbernardinoCO.csv", header=T, na.strings=c(""), stringsAsFactors = T)
san_bernardino_2013_co <- san_bernardino_2013_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
san_bernardino_2013_co$Date <- parse_date_time(san_bernardino_2013_co$Date, c("%m-%d-%y", "%m/%d/%y"))
san_bernardino_2013_co <- separate(san_bernardino_2013_co,Date, c("year","month","date"), sep = "-")
san_bernardino_2013_co <- aggregate(san_bernardino_2013_co[, c(4,5,7,8)], list(san_bernardino_2013_co$year,san_bernardino_2013_co$COUNTY), mean)
colnames(san_bernardino_2013_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#san_bernardino 2013 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/san_bernardino/2013")
san_bernardino_2013_NO2 <- read.csv("2013sanbernardinoNO2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
san_bernardino_2013_NO2 <- san_bernardino_2013_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
san_bernardino_2013_NO2$Date <- parse_date_time(san_bernardino_2013_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
san_bernardino_2013_NO2 <- separate(san_bernardino_2013_NO2,Date, c("year","month","date"), sep = "-")
san_bernardino_2013_NO2 <- aggregate(san_bernardino_2013_NO2[, c(4,5,7,8)], list(san_bernardino_2013_NO2$year,san_bernardino_2013_NO2$COUNTY), mean)
colnames(san_bernardino_2013_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#san_bernardino 2013 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/san_bernardino/2013")
san_bernardino_2013_O <- read.csv("2013sanbernardinoozone.csv", header=T, na.strings=c(""), stringsAsFactors = T)
san_bernardino_2013_O <- san_bernardino_2013_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
san_bernardino_2013_O$Date <- parse_date_time(san_bernardino_2013_O$Date, c("%m-%d-%y", "%m/%d/%y"))
san_bernardino_2013_O <- separate(san_bernardino_2013_O,Date, c("year","month","date"), sep = "-")
san_bernardino_2013_O <- aggregate(san_bernardino_2013_O[, c(4,5,7,8)], list(san_bernardino_2013_O$year,san_bernardino_2013_O$COUNTY), mean)
colnames(san_bernardino_2013_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#san_bernardino 2013 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/san_bernardino/2013")
san_bernardino_2013_PM2.5 <- read.csv("2013sanbernardinoPM2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
san_bernardino_2013_PM2.5 <- san_bernardino_2013_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
san_bernardino_2013_PM2.5$Date <- parse_date_time(san_bernardino_2013_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
san_bernardino_2013_PM2.5 <- separate(san_bernardino_2013_PM2.5,Date, c("year","month","date"), sep = "-")
san_bernardino_2013_PM2.5 <- aggregate(san_bernardino_2013_PM2.5[, c(4,5,7,8)], list(san_bernardino_2013_PM2.5$year,san_bernardino_2013_PM2.5$COUNTY), mean)
colnames(san_bernardino_2013_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#san_bernardino 2013 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/san_bernardino/2013")
san_bernardino_2013_PM10 <- read.csv("2013sanbernardinoPM10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
san_bernardino_2013_PM10 <- san_bernardino_2013_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
san_bernardino_2013_PM10$Date <- parse_date_time(san_bernardino_2013_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
san_bernardino_2013_PM10 <- separate(san_bernardino_2013_PM10,Date, c("year","month","date"), sep = "-")
san_bernardino_2013_PM10 <- aggregate(san_bernardino_2013_PM10[, c(4,5,7,8)], list(san_bernardino_2013_PM10$year,san_bernardino_2013_PM10$COUNTY), mean)
colnames(san_bernardino_2013_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#san_bernardino 2013 all pollutant data
san_bernardino_2013 <- cbind(san_bernardino_2013_co,san_bernardino_2013_NO2$NO2_concentration_value,san_bernardino_2013_NO2$NO2_AQI,san_bernardino_2013_O$O3_concentration_value,san_bernardino_2013_O$O3_AQI,san_bernardino_2013_PM2.5$PM2.5_concentration_value,san_bernardino_2013_PM2.5$PM2.5_AQI,san_bernardino_2013_PM10$PM10_concentration_value,san_bernardino_2013_PM10$PM10_AQI)
san_bernardino_2013 <- san_bernardino_2013[c(1:4,7:14,5,6)]
colnames(san_bernardino_2013) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#-------------------------------------------------------------------------------------------------------------
#san_bernardino 2014 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/san_bernardino/2014")
san_bernardino_2014_co <- read.csv("2014sanbernardinoCO.csv", header=T, na.strings=c(""), stringsAsFactors = T)
san_bernardino_2014_co <- san_bernardino_2014_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
san_bernardino_2014_co$Date <- parse_date_time(san_bernardino_2014_co$Date, c("%m-%d-%y", "%m/%d/%y"))
san_bernardino_2014_co <- separate(san_bernardino_2014_co,Date, c("year","month","date"), sep = "-")
san_bernardino_2014_co <- aggregate(san_bernardino_2014_co[, c(4,5,7,8)], list(san_bernardino_2014_co$year,san_bernardino_2014_co$COUNTY), mean)
colnames(san_bernardino_2014_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#san_bernardino 2014 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/san_bernardino/2014")
san_bernardino_2014_NO2 <- read.csv("2014sanbernardinoNO2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
san_bernardino_2014_NO2 <- san_bernardino_2014_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
san_bernardino_2014_NO2$Date <- parse_date_time(san_bernardino_2014_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
san_bernardino_2014_NO2 <- separate(san_bernardino_2014_NO2,Date, c("year","month","date"), sep = "-")
san_bernardino_2014_NO2 <- aggregate(san_bernardino_2014_NO2[, c(4,5,7,8)], list(san_bernardino_2014_NO2$year,san_bernardino_2014_NO2$COUNTY), mean)
colnames(san_bernardino_2014_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#san_bernardino 2014 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/san_bernardino/2014")
san_bernardino_2014_O <- read.csv("2014sanbernardinoozone.csv", header=T, na.strings=c(""), stringsAsFactors = T)
san_bernardino_2014_O <- san_bernardino_2014_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
san_bernardino_2014_O$Date <- parse_date_time(san_bernardino_2014_O$Date, c("%m-%d-%y", "%m/%d/%y"))
san_bernardino_2014_O <- separate(san_bernardino_2014_O,Date, c("year","month","date"), sep = "-")
san_bernardino_2014_O <- aggregate(san_bernardino_2014_O[, c(4,5,7,8)], list(san_bernardino_2014_O$year,san_bernardino_2014_O$COUNTY), mean)
colnames(san_bernardino_2014_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#san_bernardino 2014 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/san_bernardino/2014")
san_bernardino_2014_PM2.5 <- read.csv("2014sanbernardinoPM2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
san_bernardino_2014_PM2.5 <- san_bernardino_2014_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
san_bernardino_2014_PM2.5$Date <- parse_date_time(san_bernardino_2014_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
san_bernardino_2014_PM2.5 <- separate(san_bernardino_2014_PM2.5,Date, c("year","month","date"), sep = "-")
san_bernardino_2014_PM2.5 <- aggregate(san_bernardino_2014_PM2.5[, c(4,5,7,8)], list(san_bernardino_2014_PM2.5$year,san_bernardino_2014_PM2.5$COUNTY), mean)
colnames(san_bernardino_2014_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#san_bernardino 2014 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/san_bernardino/2014")
san_bernardino_2014_PM10 <- read.csv("2014sanbernardinoPM10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
san_bernardino_2014_PM10 <- san_bernardino_2014_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
san_bernardino_2014_PM10$Date <- parse_date_time(san_bernardino_2014_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
san_bernardino_2014_PM10 <- separate(san_bernardino_2014_PM10,Date, c("year","month","date"), sep = "-")
san_bernardino_2014_PM10 <- aggregate(san_bernardino_2014_PM10[, c(4,5,7,8)], list(san_bernardino_2014_PM10$year,san_bernardino_2014_PM10$COUNTY), mean)
colnames(san_bernardino_2014_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#san_bernardino 2014 all pollutant data
san_bernardino_2014 <- cbind(san_bernardino_2014_co,san_bernardino_2014_NO2$NO2_concentration_value,san_bernardino_2014_NO2$NO2_AQI,san_bernardino_2014_O$O3_concentration_value,san_bernardino_2014_O$O3_AQI,san_bernardino_2014_PM2.5$PM2.5_concentration_value,san_bernardino_2014_PM2.5$PM2.5_AQI,san_bernardino_2014_PM10$PM10_concentration_value,san_bernardino_2014_PM10$PM10_AQI)
san_bernardino_2014 <- san_bernardino_2014[c(1:4,7:14,5,6)]
colnames(san_bernardino_2014) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#----------------------------------------------------------------------------------------------------------------------

#san_bernardino 2015 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/san_bernardino/2015")
san_bernardino_2015_co <- read.csv("2015sanbernardinoCO.csv", header=T, na.strings=c(""), stringsAsFactors = T)
san_bernardino_2015_co <- san_bernardino_2015_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
san_bernardino_2015_co$Date <- parse_date_time(san_bernardino_2015_co$Date, c("%m-%d-%y", "%m/%d/%y"))
san_bernardino_2015_co <- separate(san_bernardino_2015_co,Date, c("year","month","date"), sep = "-")
san_bernardino_2015_co <- aggregate(san_bernardino_2015_co[, c(4,5,7,8)], list(san_bernardino_2015_co$year,san_bernardino_2015_co$COUNTY), mean)
colnames(san_bernardino_2015_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#san_bernardino 2015 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/san_bernardino/2015")
san_bernardino_2015_NO2 <- read.csv("2015sanbernardinoNO2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
san_bernardino_2015_NO2 <- san_bernardino_2015_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
san_bernardino_2015_NO2$Date <- parse_date_time(san_bernardino_2015_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
san_bernardino_2015_NO2 <- separate(san_bernardino_2015_NO2,Date, c("year","month","date"), sep = "-")
san_bernardino_2015_NO2 <- aggregate(san_bernardino_2015_NO2[, c(4,5,7,8)], list(san_bernardino_2015_NO2$year,san_bernardino_2015_NO2$COUNTY), mean)
colnames(san_bernardino_2015_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#san_bernardino 2015 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/san_bernardino/2015")
san_bernardino_2015_O <- read.csv("2015sanbernardinoozone.csv", header=T, na.strings=c(""), stringsAsFactors = T)
san_bernardino_2015_O <- san_bernardino_2015_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
san_bernardino_2015_O$Date <- parse_date_time(san_bernardino_2015_O$Date, c("%m-%d-%y", "%m/%d/%y"))
san_bernardino_2015_O <- separate(san_bernardino_2015_O,Date, c("year","month","date"), sep = "-")
san_bernardino_2015_O <- aggregate(san_bernardino_2015_O[, c(4,5,7,8)], list(san_bernardino_2015_O$year,san_bernardino_2015_O$COUNTY), mean)
colnames(san_bernardino_2015_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#san_bernardino 2015 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/san_bernardino/2015")
san_bernardino_2015_PM2.5 <- read.csv("2015sanbernardinoPM2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
san_bernardino_2015_PM2.5 <- san_bernardino_2015_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
san_bernardino_2015_PM2.5$Date <- parse_date_time(san_bernardino_2015_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
san_bernardino_2015_PM2.5 <- separate(san_bernardino_2015_PM2.5,Date, c("year","month","date"), sep = "-")
san_bernardino_2015_PM2.5 <- aggregate(san_bernardino_2015_PM2.5[, c(4,5,7,8)], list(san_bernardino_2015_PM2.5$year,san_bernardino_2015_PM2.5$COUNTY), mean)
colnames(san_bernardino_2015_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#san_bernardino 2015 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/san_bernardino/2015")
san_bernardino_2015_PM10 <- read.csv("2015sanbernardinoPM10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
san_bernardino_2015_PM10 <- san_bernardino_2015_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
san_bernardino_2015_PM10$Date <- parse_date_time(san_bernardino_2015_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
san_bernardino_2015_PM10 <- separate(san_bernardino_2015_PM10,Date, c("year","month","date"), sep = "-")
san_bernardino_2015_PM10 <- aggregate(san_bernardino_2015_PM10[, c(4,5,7,8)], list(san_bernardino_2015_PM10$year,san_bernardino_2015_PM10$COUNTY), mean)
colnames(san_bernardino_2015_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#san_bernardino 2015 all pollutant data
san_bernardino_2015 <- cbind(san_bernardino_2015_co,san_bernardino_2015_NO2$NO2_concentration_value,san_bernardino_2015_NO2$NO2_AQI,san_bernardino_2015_O$O3_concentration_value,san_bernardino_2015_O$O3_AQI,san_bernardino_2015_PM2.5$PM2.5_concentration_value,san_bernardino_2015_PM2.5$PM2.5_AQI,san_bernardino_2015_PM10$PM10_concentration_value,san_bernardino_2015_PM10$PM10_AQI)
san_bernardino_2015 <- san_bernardino_2015[c(1:4,7:14,5,6)]
colnames(san_bernardino_2015) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#-------------------------------------------------------------------------------------------------------
#san_bernardino 2016 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/san_bernardino/2016")
san_bernardino_2016_co <- read.csv("2016sanbernardinoCO.csv", header=T, na.strings=c(""), stringsAsFactors = T)
san_bernardino_2016_co <- san_bernardino_2016_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
san_bernardino_2016_co$Date <- parse_date_time(san_bernardino_2016_co$Date, c("%m-%d-%y", "%m/%d/%y"))
san_bernardino_2016_co <- separate(san_bernardino_2016_co,Date, c("year","month","date"), sep = "-")
san_bernardino_2016_co <- aggregate(san_bernardino_2016_co[, c(4,5,7,8)], list(san_bernardino_2016_co$year,san_bernardino_2016_co$COUNTY), mean)
colnames(san_bernardino_2016_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#san_bernardino 2016 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/san_bernardino/2016")
san_bernardino_2016_NO2 <- read.csv("2016sanbernardinoNO2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
san_bernardino_2016_NO2 <- san_bernardino_2016_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
san_bernardino_2016_NO2$Date <- parse_date_time(san_bernardino_2016_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
san_bernardino_2016_NO2 <- separate(san_bernardino_2016_NO2,Date, c("year","month","date"), sep = "-")
san_bernardino_2016_NO2 <- aggregate(san_bernardino_2016_NO2[, c(4,5,7,8)], list(san_bernardino_2016_NO2$year,san_bernardino_2016_NO2$COUNTY), mean)
colnames(san_bernardino_2016_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#san_bernardino 2016 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/san_bernardino/2016")
san_bernardino_2016_O <- read.csv("2016sanbernardinoozone.csv", header=T, na.strings=c(""), stringsAsFactors = T)
san_bernardino_2016_O <- san_bernardino_2016_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
san_bernardino_2016_O$Date <- parse_date_time(san_bernardino_2016_O$Date, c("%m-%d-%y", "%m/%d/%y"))
san_bernardino_2016_O <- separate(san_bernardino_2016_O,Date, c("year","month","date"), sep = "-")
san_bernardino_2016_O <- aggregate(san_bernardino_2016_O[, c(4,5,7,8)], list(san_bernardino_2016_O$year,san_bernardino_2016_O$COUNTY), mean)
colnames(san_bernardino_2016_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#san_bernardino 2016 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/san_bernardino/2016")
san_bernardino_2016_PM2.5 <- read.csv("2016sanbernardinoPM2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
san_bernardino_2016_PM2.5 <- san_bernardino_2016_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
san_bernardino_2016_PM2.5$Date <- parse_date_time(san_bernardino_2016_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
san_bernardino_2016_PM2.5 <- separate(san_bernardino_2016_PM2.5,Date, c("year","month","date"), sep = "-")
san_bernardino_2016_PM2.5 <- aggregate(san_bernardino_2016_PM2.5[, c(4,5,7,8)], list(san_bernardino_2016_PM2.5$year,san_bernardino_2016_PM2.5$COUNTY), mean)
colnames(san_bernardino_2016_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#san_bernardino 2016 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/san_bernardino/2016")
san_bernardino_2016_PM10 <- read.csv("2016sanbernardinoPM10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
san_bernardino_2016_PM10 <- san_bernardino_2016_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
san_bernardino_2016_PM10$Date <- parse_date_time(san_bernardino_2016_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
san_bernardino_2016_PM10 <- separate(san_bernardino_2016_PM10,Date, c("year","month","date"), sep = "-")
san_bernardino_2016_PM10 <- aggregate(san_bernardino_2016_PM10[, c(4,5,7,8)], list(san_bernardino_2016_PM10$year,san_bernardino_2016_PM10$COUNTY), mean)
colnames(san_bernardino_2016_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#san_bernardino 2016 all pollutant data
san_bernardino_2016 <- cbind(san_bernardino_2016_co,san_bernardino_2016_NO2$NO2_concentration_value,san_bernardino_2016_NO2$NO2_AQI,san_bernardino_2016_O$O3_concentration_value,san_bernardino_2016_O$O3_AQI,san_bernardino_2016_PM2.5$PM2.5_concentration_value,san_bernardino_2016_PM2.5$PM2.5_AQI,san_bernardino_2016_PM10$PM10_concentration_value,san_bernardino_2016_PM10$PM10_AQI)
san_bernardino_2016 <- san_bernardino_2016[c(1:4,7:14,5,6)]
colnames(san_bernardino_2016) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#----------------------------------------------------------------------------------------------------------
#san_bernardino 2017 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/san_bernardino/2017")
san_bernardino_2017_co <- read.csv("2017sanbernardinoCO.csv", header=T, na.strings=c(""), stringsAsFactors = T)
san_bernardino_2017_co <- san_bernardino_2017_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
san_bernardino_2017_co$Date <- parse_date_time(san_bernardino_2017_co$Date, c("%m-%d-%y", "%m/%d/%y"))
san_bernardino_2017_co <- separate(san_bernardino_2017_co,Date, c("year","month","date"), sep = "-")
san_bernardino_2017_co <- aggregate(san_bernardino_2017_co[, c(4,5,7,8)], list(san_bernardino_2017_co$year,san_bernardino_2017_co$COUNTY), mean)
colnames(san_bernardino_2017_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#san_bernardino 2017 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/san_bernardino/2017")
san_bernardino_2017_NO2 <- read.csv("2017sanbernardinoNO2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
san_bernardino_2017_NO2 <- san_bernardino_2017_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
san_bernardino_2017_NO2$Date <- parse_date_time(san_bernardino_2017_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
san_bernardino_2017_NO2 <- separate(san_bernardino_2017_NO2,Date, c("year","month","date"), sep = "-")
san_bernardino_2017_NO2 <- aggregate(san_bernardino_2017_NO2[, c(4,5,7,8)], list(san_bernardino_2017_NO2$year,san_bernardino_2017_NO2$COUNTY), mean)
colnames(san_bernardino_2017_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#san_bernardino 2017 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/san_bernardino/2017")
san_bernardino_2017_O <- read.csv("2017sanbernardinoozone.csv", header=T, na.strings=c(""), stringsAsFactors = T)
san_bernardino_2017_O <- san_bernardino_2017_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
san_bernardino_2017_O$Date <- parse_date_time(san_bernardino_2017_O$Date, c("%m-%d-%y", "%m/%d/%y"))
san_bernardino_2017_O <- separate(san_bernardino_2017_O,Date, c("year","month","date"), sep = "-")
san_bernardino_2017_O <- aggregate(san_bernardino_2017_O[, c(4,5,7,8)], list(san_bernardino_2017_O$year,san_bernardino_2017_O$COUNTY), mean)
colnames(san_bernardino_2017_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#san_bernardino 2017 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/san_bernardino/2017")
san_bernardino_2017_PM2.5 <- read.csv("2017sanbernardinoPM2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
san_bernardino_2017_PM2.5 <- san_bernardino_2017_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
san_bernardino_2017_PM2.5$Date <- parse_date_time(san_bernardino_2017_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
san_bernardino_2017_PM2.5 <- separate(san_bernardino_2017_PM2.5,Date, c("year","month","date"), sep = "-")
san_bernardino_2017_PM2.5 <- aggregate(san_bernardino_2017_PM2.5[, c(4,5,7,8)], list(san_bernardino_2017_PM2.5$year,san_bernardino_2017_PM2.5$COUNTY), mean)
colnames(san_bernardino_2017_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#san_bernardino 2017 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/san_bernardino/2017")
san_bernardino_2017_PM10 <- read.csv("2017sanbernardino2017.csv", header=T, na.strings=c(""), stringsAsFactors = T)
san_bernardino_2017_PM10 <- san_bernardino_2017_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
san_bernardino_2017_PM10$Date <- parse_date_time(san_bernardino_2017_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
san_bernardino_2017_PM10 <- separate(san_bernardino_2017_PM10,Date, c("year","month","date"), sep = "-")
san_bernardino_2017_PM10 <- aggregate(san_bernardino_2017_PM10[, c(4,5,7,8)], list(san_bernardino_2017_PM10$year,san_bernardino_2017_PM10$COUNTY), mean)
colnames(san_bernardino_2017_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#san_bernardino 2017 all pollutant data
san_bernardino_2017 <- cbind(san_bernardino_2017_co,san_bernardino_2017_NO2$NO2_concentration_value,san_bernardino_2017_NO2$NO2_AQI,san_bernardino_2017_O$O3_concentration_value,san_bernardino_2017_O$O3_AQI,san_bernardino_2017_PM2.5$PM2.5_concentration_value,san_bernardino_2017_PM2.5$PM2.5_AQI,san_bernardino_2017_PM10$PM10_concentration_value,san_bernardino_2017_PM10$PM10_AQI)
san_bernardino_2017 <- san_bernardino_2017[c(1:4,7:14,5,6)]
colnames(san_bernardino_2017) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#--------------------------------------------------------------------------------------------------------
#san_bernardino final data
san_bernardino <- rbind(san_bernardino_2011,san_bernardino_2012,san_bernardino_2013,san_bernardino_2014,san_bernardino_2015,san_bernardino_2016,san_bernardino_2017)
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/FINAL_DATASETS")
write.csv(san_bernardino, file = "san_bernardino.csv")