#river_side 2011 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/river_side/2011")
river_side_2011_co <- read.csv("2011riversideCO.csv", header=T, na.strings=c(""), stringsAsFactors = T)
river_side_2011_co <- river_side_2011_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
river_side_2011_co$Date <- parse_date_time(river_side_2011_co$Date, c("%m-%d-%y", "%m/%d/%y"))
river_side_2011_co <- separate(river_side_2011_co,Date, c("year","month","date"), sep = "-")
river_side_2011_co <- aggregate(river_side_2011_co[, c(4,5,7,8)], list(river_side_2011_co$year,river_side_2011_co$COUNTY), mean)
colnames(river_side_2011_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#river_side 2011 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/river_side/2011")
river_side_2011_NO2 <- read.csv("2011riversideNO2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
river_side_2011_NO2 <- river_side_2011_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
river_side_2011_NO2$Date <- parse_date_time(river_side_2011_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
river_side_2011_NO2 <- separate(river_side_2011_NO2,Date, c("year","month","date"), sep = "-")
river_side_2011_NO2 <- aggregate(river_side_2011_NO2[, c(4,5,7,8)], list(river_side_2011_NO2$year,river_side_2011_NO2$COUNTY), mean)
colnames(river_side_2011_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#river_side 2011 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/river_side/2011")
river_side_2011_O <- read.csv("2011riversideozone.csv", header=T, na.strings=c(""), stringsAsFactors = T)
river_side_2011_O <- river_side_2011_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
river_side_2011_O$Date <- parse_date_time(river_side_2011_O$Date, c("%m-%d-%y", "%m/%d/%y"))
river_side_2011_O <- separate(river_side_2011_O,Date, c("year","month","date"), sep = "-")
river_side_2011_O <- aggregate(river_side_2011_O[, c(4,5,7,8)], list(river_side_2011_O$year,river_side_2011_O$COUNTY), mean)
colnames(river_side_2011_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#river_side 2011 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/river_side/2011")
river_side_2011_PM2.5 <- read.csv("2011riversidePM2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
river_side_2011_PM2.5 <- river_side_2011_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
river_side_2011_PM2.5$Date <- parse_date_time(river_side_2011_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
river_side_2011_PM2.5 <- separate(river_side_2011_PM2.5,Date, c("year","month","date"), sep = "-")
river_side_2011_PM2.5 <- aggregate(river_side_2011_PM2.5[, c(4,5,7,8)], list(river_side_2011_PM2.5$year,river_side_2011_PM2.5$COUNTY), mean)
colnames(river_side_2011_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#river_side 2011 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/river_side/2011")
river_side_2011_PM10 <- read.csv("2011riversidePM10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
river_side_2011_PM10 <- river_side_2011_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
river_side_2011_PM10$Date <- parse_date_time(river_side_2011_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
river_side_2011_PM10 <- separate(river_side_2011_PM10,Date, c("year","month","date"), sep = "-")
river_side_2011_PM10 <- aggregate(river_side_2011_PM10[, c(4,5,7,8)], list(river_side_2011_PM10$year,river_side_2011_PM10$COUNTY), mean)
colnames(river_side_2011_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#river_side 2011 all pollutant data
river_side_2011 <- cbind(river_side_2011_co,river_side_2011_NO2$NO2_concentration_value,river_side_2011_NO2$NO2_AQI,river_side_2011_O$O3_concentration_value,river_side_2011_O$O3_AQI,river_side_2011_PM2.5$PM2.5_concentration_value,river_side_2011_PM2.5$PM2.5_AQI,river_side_2011_PM10$PM10_concentration_value,river_side_2011_PM10$PM10_AQI)
river_side_2011 <- river_side_2011[c(1:4,7:14,5,6)]
colnames(river_side_2011) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#---------------------------------------------------------------------------------------------------
#river_side 2012 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/river_side/2012")
river_side_2012_co <- read.csv("2012riversideCO.csv", header=T, na.strings=c(""), stringsAsFactors = T)
river_side_2012_co <- river_side_2012_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
river_side_2012_co$Date <- parse_date_time(river_side_2012_co$Date, c("%m-%d-%y", "%m/%d/%y"))
river_side_2012_co <- separate(river_side_2012_co,Date, c("year","month","date"), sep = "-")
river_side_2012_co <- aggregate(river_side_2012_co[, c(4,5,7,8)], list(river_side_2012_co$year,river_side_2012_co$COUNTY), mean)
colnames(river_side_2012_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#river_side 2012 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/river_side/2012")
river_side_2012_NO2 <- read.csv("2012riversideNO2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
river_side_2012_NO2 <- river_side_2012_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
river_side_2012_NO2$Date <- parse_date_time(river_side_2012_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
river_side_2012_NO2 <- separate(river_side_2012_NO2,Date, c("year","month","date"), sep = "-")
river_side_2012_NO2 <- aggregate(river_side_2012_NO2[, c(4,5,7,8)], list(river_side_2012_NO2$year,river_side_2012_NO2$COUNTY), mean)
colnames(river_side_2012_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#river_side 2012 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/river_side/2012")
river_side_2012_O <- read.csv("2012riversideozone.csv", header=T, na.strings=c(""), stringsAsFactors = T)
river_side_2012_O <- river_side_2012_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
river_side_2012_O$Date <- parse_date_time(river_side_2012_O$Date, c("%m-%d-%y", "%m/%d/%y"))
river_side_2012_O <- separate(river_side_2012_O,Date, c("year","month","date"), sep = "-")
river_side_2012_O <- aggregate(river_side_2012_O[, c(4,5,7,8)], list(river_side_2012_O$year,river_side_2012_O$COUNTY), mean)
colnames(river_side_2012_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#river_side 2012 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/river_side/2012")
river_side_2012_PM2.5 <- read.csv("2012riversidePM2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
river_side_2012_PM2.5 <- river_side_2012_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
river_side_2012_PM2.5$Date <- parse_date_time(river_side_2012_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
river_side_2012_PM2.5 <- separate(river_side_2012_PM2.5,Date, c("year","month","date"), sep = "-")
river_side_2012_PM2.5 <- aggregate(river_side_2012_PM2.5[, c(4,5,7,8)], list(river_side_2012_PM2.5$year,river_side_2012_PM2.5$COUNTY), mean)
colnames(river_side_2012_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#river_side 2012 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/river_side/2012")
river_side_2012_PM10 <- read.csv("2012riversidePM10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
river_side_2012_PM10 <- river_side_2012_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
river_side_2012_PM10$Date <- parse_date_time(river_side_2012_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
river_side_2012_PM10 <- separate(river_side_2012_PM10,Date, c("year","month","date"), sep = "-")
river_side_2012_PM10 <- aggregate(river_side_2012_PM10[, c(4,5,7,8)], list(river_side_2012_PM10$year,river_side_2012_PM10$COUNTY), mean)
colnames(river_side_2012_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#river_side 2012 all pollutant data
river_side_2012 <- cbind(river_side_2012_co,river_side_2012_NO2$NO2_concentration_value,river_side_2012_NO2$NO2_AQI,river_side_2012_O$O3_concentration_value,river_side_2012_O$O3_AQI,river_side_2012_PM2.5$PM2.5_concentration_value,river_side_2012_PM2.5$PM2.5_AQI,river_side_2012_PM10$PM10_concentration_value,river_side_2012_PM10$PM10_AQI)
river_side_2012 <- river_side_2012[c(1:4,7:14,5,6)]
colnames(river_side_2012) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#-------------------------------------------------------------------------------------------------------
#river_side 2013 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/river_side/2013")
river_side_2013_co <- read.csv("2013riversideCO.csv", header=T, na.strings=c(""), stringsAsFactors = T)
river_side_2013_co <- river_side_2013_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
river_side_2013_co$Date <- parse_date_time(river_side_2013_co$Date, c("%m-%d-%y", "%m/%d/%y"))
river_side_2013_co <- separate(river_side_2013_co,Date, c("year","month","date"), sep = "-")
river_side_2013_co <- aggregate(river_side_2013_co[, c(4,5,7,8)], list(river_side_2013_co$year,river_side_2013_co$COUNTY), mean)
colnames(river_side_2013_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#river_side 2013 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/river_side/2013")
river_side_2013_NO2 <- read.csv("2013riversideNO2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
river_side_2013_NO2 <- river_side_2013_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
river_side_2013_NO2$Date <- parse_date_time(river_side_2013_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
river_side_2013_NO2 <- separate(river_side_2013_NO2,Date, c("year","month","date"), sep = "-")
river_side_2013_NO2 <- aggregate(river_side_2013_NO2[, c(4,5,7,8)], list(river_side_2013_NO2$year,river_side_2013_NO2$COUNTY), mean)
colnames(river_side_2013_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#river_side 2013 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/river_side/2013")
river_side_2013_O <- read.csv("2013riversideozone.csv", header=T, na.strings=c(""), stringsAsFactors = T)
river_side_2013_O <- river_side_2013_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
river_side_2013_O$Date <- parse_date_time(river_side_2013_O$Date, c("%m-%d-%y", "%m/%d/%y"))
river_side_2013_O <- separate(river_side_2013_O,Date, c("year","month","date"), sep = "-")
river_side_2013_O <- aggregate(river_side_2013_O[, c(4,5,7,8)], list(river_side_2013_O$year,river_side_2013_O$COUNTY), mean)
colnames(river_side_2013_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#river_side 2013 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/river_side/2013")
river_side_2013_PM2.5 <- read.csv("2013riversidePM2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
river_side_2013_PM2.5 <- river_side_2013_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
river_side_2013_PM2.5$Date <- parse_date_time(river_side_2013_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
river_side_2013_PM2.5 <- separate(river_side_2013_PM2.5,Date, c("year","month","date"), sep = "-")
river_side_2013_PM2.5 <- aggregate(river_side_2013_PM2.5[, c(4,5,7,8)], list(river_side_2013_PM2.5$year,river_side_2013_PM2.5$COUNTY), mean)
colnames(river_side_2013_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#river_side 2013 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/river_side/2013")
river_side_2013_PM10 <- read.csv("2013riversidePM10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
river_side_2013_PM10 <- river_side_2013_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
river_side_2013_PM10$Date <- parse_date_time(river_side_2013_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
river_side_2013_PM10 <- separate(river_side_2013_PM10,Date, c("year","month","date"), sep = "-")
river_side_2013_PM10 <- aggregate(river_side_2013_PM10[, c(4,5,7,8)], list(river_side_2013_PM10$year,river_side_2013_PM10$COUNTY), mean)
colnames(river_side_2013_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#river_side 2013 all pollutant data
river_side_2013 <- cbind(river_side_2013_co,river_side_2013_NO2$NO2_concentration_value,river_side_2013_NO2$NO2_AQI,river_side_2013_O$O3_concentration_value,river_side_2013_O$O3_AQI,river_side_2013_PM2.5$PM2.5_concentration_value,river_side_2013_PM2.5$PM2.5_AQI,river_side_2013_PM10$PM10_concentration_value,river_side_2013_PM10$PM10_AQI)
river_side_2013 <- river_side_2013[c(1:4,7:14,5,6)]
colnames(river_side_2013) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#-------------------------------------------------------------------------------------------------------------
#river_side 2014 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/river_side/2014")
river_side_2014_co <- read.csv("2014riversideCO.csv", header=T, na.strings=c(""), stringsAsFactors = T)
river_side_2014_co <- river_side_2014_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
river_side_2014_co$Date <- parse_date_time(river_side_2014_co$Date, c("%m-%d-%y", "%m/%d/%y"))
river_side_2014_co <- separate(river_side_2014_co,Date, c("year","month","date"), sep = "-")
river_side_2014_co <- aggregate(river_side_2014_co[, c(4,5,7,8)], list(river_side_2014_co$year,river_side_2014_co$COUNTY), mean)
colnames(river_side_2014_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#river_side 2014 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/river_side/2014")
river_side_2014_NO2 <- read.csv("2014riversideNO2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
river_side_2014_NO2 <- river_side_2014_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
river_side_2014_NO2$Date <- parse_date_time(river_side_2014_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
river_side_2014_NO2 <- separate(river_side_2014_NO2,Date, c("year","month","date"), sep = "-")
river_side_2014_NO2 <- aggregate(river_side_2014_NO2[, c(4,5,7,8)], list(river_side_2014_NO2$year,river_side_2014_NO2$COUNTY), mean)
colnames(river_side_2014_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#river_side 2014 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/river_side/2014")
river_side_2014_O <- read.csv("2014riversideozone.csv", header=T, na.strings=c(""), stringsAsFactors = T)
river_side_2014_O <- river_side_2014_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
river_side_2014_O$Date <- parse_date_time(river_side_2014_O$Date, c("%m-%d-%y", "%m/%d/%y"))
river_side_2014_O <- separate(river_side_2014_O,Date, c("year","month","date"), sep = "-")
river_side_2014_O <- aggregate(river_side_2014_O[, c(4,5,7,8)], list(river_side_2014_O$year,river_side_2014_O$COUNTY), mean)
colnames(river_side_2014_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#river_side 2014 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/river_side/2014")
river_side_2014_PM2.5 <- read.csv("2014riversidePM2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
river_side_2014_PM2.5 <- river_side_2014_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
river_side_2014_PM2.5$Date <- parse_date_time(river_side_2014_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
river_side_2014_PM2.5 <- separate(river_side_2014_PM2.5,Date, c("year","month","date"), sep = "-")
river_side_2014_PM2.5 <- aggregate(river_side_2014_PM2.5[, c(4,5,7,8)], list(river_side_2014_PM2.5$year,river_side_2014_PM2.5$COUNTY), mean)
colnames(river_side_2014_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#river_side 2014 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/river_side/2014")
river_side_2014_PM10 <- read.csv("2014riversidePM10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
river_side_2014_PM10 <- river_side_2014_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
river_side_2014_PM10$Date <- parse_date_time(river_side_2014_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
river_side_2014_PM10 <- separate(river_side_2014_PM10,Date, c("year","month","date"), sep = "-")
river_side_2014_PM10 <- aggregate(river_side_2014_PM10[, c(4,5,7,8)], list(river_side_2014_PM10$year,river_side_2014_PM10$COUNTY), mean)
colnames(river_side_2014_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#river_side 2014 all pollutant data
river_side_2014 <- cbind(river_side_2014_co,river_side_2014_NO2$NO2_concentration_value,river_side_2014_NO2$NO2_AQI,river_side_2014_O$O3_concentration_value,river_side_2014_O$O3_AQI,river_side_2014_PM2.5$PM2.5_concentration_value,river_side_2014_PM2.5$PM2.5_AQI,river_side_2014_PM10$PM10_concentration_value,river_side_2014_PM10$PM10_AQI)
river_side_2014 <- river_side_2014[c(1:4,7:14,5,6)]
colnames(river_side_2014) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#----------------------------------------------------------------------------------------------------------------------

#river_side 2015 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/river_side/2015")
river_side_2015_co <- read.csv("2015riversideCO.csv", header=T, na.strings=c(""), stringsAsFactors = T)
river_side_2015_co <- river_side_2015_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
river_side_2015_co$Date <- parse_date_time(river_side_2015_co$Date, c("%m-%d-%y", "%m/%d/%y"))
river_side_2015_co <- separate(river_side_2015_co,Date, c("year","month","date"), sep = "-")
river_side_2015_co <- aggregate(river_side_2015_co[, c(4,5,7,8)], list(river_side_2015_co$year,river_side_2015_co$COUNTY), mean)
colnames(river_side_2015_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#river_side 2015 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/river_side/2015")
river_side_2015_NO2 <- read.csv("2015riversideNO2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
river_side_2015_NO2 <- river_side_2015_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
river_side_2015_NO2$Date <- parse_date_time(river_side_2015_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
river_side_2015_NO2 <- separate(river_side_2015_NO2,Date, c("year","month","date"), sep = "-")
river_side_2015_NO2 <- aggregate(river_side_2015_NO2[, c(4,5,7,8)], list(river_side_2015_NO2$year,river_side_2015_NO2$COUNTY), mean)
colnames(river_side_2015_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#river_side 2015 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/river_side/2015")
river_side_2015_O <- read.csv("2015riversideozone.csv", header=T, na.strings=c(""), stringsAsFactors = T)
river_side_2015_O <- river_side_2015_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
river_side_2015_O$Date <- parse_date_time(river_side_2015_O$Date, c("%m-%d-%y", "%m/%d/%y"))
river_side_2015_O <- separate(river_side_2015_O,Date, c("year","month","date"), sep = "-")
river_side_2015_O <- aggregate(river_side_2015_O[, c(4,5,7,8)], list(river_side_2015_O$year,river_side_2015_O$COUNTY), mean)
colnames(river_side_2015_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#river_side 2015 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/river_side/2015")
river_side_2015_PM2.5 <- read.csv("2015riversidePM2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
river_side_2015_PM2.5 <- river_side_2015_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
river_side_2015_PM2.5$Date <- parse_date_time(river_side_2015_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
river_side_2015_PM2.5 <- separate(river_side_2015_PM2.5,Date, c("year","month","date"), sep = "-")
river_side_2015_PM2.5 <- aggregate(river_side_2015_PM2.5[, c(4,5,7,8)], list(river_side_2015_PM2.5$year,river_side_2015_PM2.5$COUNTY), mean)
colnames(river_side_2015_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#river_side 2015 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/river_side/2015")
river_side_2015_PM10 <- read.csv("2015riversidePM10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
river_side_2015_PM10 <- river_side_2015_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
river_side_2015_PM10$Date <- parse_date_time(river_side_2015_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
river_side_2015_PM10 <- separate(river_side_2015_PM10,Date, c("year","month","date"), sep = "-")
river_side_2015_PM10 <- aggregate(river_side_2015_PM10[, c(4,5,7,8)], list(river_side_2015_PM10$year,river_side_2015_PM10$COUNTY), mean)
colnames(river_side_2015_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#river_side 2015 all pollutant data
river_side_2015 <- cbind(river_side_2015_co,river_side_2015_NO2$NO2_concentration_value,river_side_2015_NO2$NO2_AQI,river_side_2015_O$O3_concentration_value,river_side_2015_O$O3_AQI,river_side_2015_PM2.5$PM2.5_concentration_value,river_side_2015_PM2.5$PM2.5_AQI,river_side_2015_PM10$PM10_concentration_value,river_side_2015_PM10$PM10_AQI)
river_side_2015 <- river_side_2015[c(1:4,7:14,5,6)]
colnames(river_side_2015) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#-------------------------------------------------------------------------------------------------------
#river_side 2016 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/river_side/2016")
river_side_2016_co <- read.csv("2016riversideCO.csv", header=T, na.strings=c(""), stringsAsFactors = T)
river_side_2016_co <- river_side_2016_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
river_side_2016_co$Date <- parse_date_time(river_side_2016_co$Date, c("%m-%d-%y", "%m/%d/%y"))
river_side_2016_co <- separate(river_side_2016_co,Date, c("year","month","date"), sep = "-")
river_side_2016_co <- aggregate(river_side_2016_co[, c(4,5,7,8)], list(river_side_2016_co$year,river_side_2016_co$COUNTY), mean)
colnames(river_side_2016_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#river_side 2016 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/river_side/2016")
river_side_2016_NO2 <- read.csv("2016riversideNO2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
river_side_2016_NO2 <- river_side_2016_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
river_side_2016_NO2$Date <- parse_date_time(river_side_2016_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
river_side_2016_NO2 <- separate(river_side_2016_NO2,Date, c("year","month","date"), sep = "-")
river_side_2016_NO2 <- aggregate(river_side_2016_NO2[, c(4,5,7,8)], list(river_side_2016_NO2$year,river_side_2016_NO2$COUNTY), mean)
colnames(river_side_2016_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#river_side 2016 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/river_side/2016")
river_side_2016_O <- read.csv("2016riversideozone.csv", header=T, na.strings=c(""), stringsAsFactors = T)
river_side_2016_O <- river_side_2016_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
river_side_2016_O$Date <- parse_date_time(river_side_2016_O$Date, c("%m-%d-%y", "%m/%d/%y"))
river_side_2016_O <- separate(river_side_2016_O,Date, c("year","month","date"), sep = "-")
river_side_2016_O <- aggregate(river_side_2016_O[, c(4,5,7,8)], list(river_side_2016_O$year,river_side_2016_O$COUNTY), mean)
colnames(river_side_2016_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#river_side 2016 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/river_side/2016")
river_side_2016_PM2.5 <- read.csv("2016riversidePM2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
river_side_2016_PM2.5 <- river_side_2016_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
river_side_2016_PM2.5$Date <- parse_date_time(river_side_2016_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
river_side_2016_PM2.5 <- separate(river_side_2016_PM2.5,Date, c("year","month","date"), sep = "-")
river_side_2016_PM2.5 <- aggregate(river_side_2016_PM2.5[, c(4,5,7,8)], list(river_side_2016_PM2.5$year,river_side_2016_PM2.5$COUNTY), mean)
colnames(river_side_2016_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#river_side 2016 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/river_side/2016")
river_side_2016_PM10 <- read.csv("2016riversidePM10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
river_side_2016_PM10 <- river_side_2016_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
river_side_2016_PM10$Date <- parse_date_time(river_side_2016_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
river_side_2016_PM10 <- separate(river_side_2016_PM10,Date, c("year","month","date"), sep = "-")
river_side_2016_PM10 <- aggregate(river_side_2016_PM10[, c(4,5,7,8)], list(river_side_2016_PM10$year,river_side_2016_PM10$COUNTY), mean)
colnames(river_side_2016_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#river_side 2016 all pollutant data
river_side_2016 <- cbind(river_side_2016_co,river_side_2016_NO2$NO2_concentration_value,river_side_2016_NO2$NO2_AQI,river_side_2016_O$O3_concentration_value,river_side_2016_O$O3_AQI,river_side_2016_PM2.5$PM2.5_concentration_value,river_side_2016_PM2.5$PM2.5_AQI,river_side_2016_PM10$PM10_concentration_value,river_side_2016_PM10$PM10_AQI)
river_side_2016 <- river_side_2016[c(1:4,7:14,5,6)]
colnames(river_side_2016) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#----------------------------------------------------------------------------------------------------------
#river_side 2017 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/river_side/2017")
river_side_2017_co <- read.csv("2017riversideCO.csv", header=T, na.strings=c(""), stringsAsFactors = T)
river_side_2017_co <- river_side_2017_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
river_side_2017_co$Date <- parse_date_time(river_side_2017_co$Date, c("%m-%d-%y", "%m/%d/%y"))
river_side_2017_co <- separate(river_side_2017_co,Date, c("year","month","date"), sep = "-")
river_side_2017_co <- aggregate(river_side_2017_co[, c(4,5,7,8)], list(river_side_2017_co$year,river_side_2017_co$COUNTY), mean)
colnames(river_side_2017_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#river_side 2017 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/river_side/2017")
river_side_2017_NO2 <- read.csv("2017riversideNO2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
river_side_2017_NO2 <- river_side_2017_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
river_side_2017_NO2$Date <- parse_date_time(river_side_2017_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
river_side_2017_NO2 <- separate(river_side_2017_NO2,Date, c("year","month","date"), sep = "-")
river_side_2017_NO2 <- aggregate(river_side_2017_NO2[, c(4,5,7,8)], list(river_side_2017_NO2$year,river_side_2017_NO2$COUNTY), mean)
colnames(river_side_2017_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#river_side 2017 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/river_side/2017")
river_side_2017_O <- read.csv("2017riversideozone.csv", header=T, na.strings=c(""), stringsAsFactors = T)
river_side_2017_O <- river_side_2017_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
river_side_2017_O$Date <- parse_date_time(river_side_2017_O$Date, c("%m-%d-%y", "%m/%d/%y"))
river_side_2017_O <- separate(river_side_2017_O,Date, c("year","month","date"), sep = "-")
river_side_2017_O <- aggregate(river_side_2017_O[, c(4,5,7,8)], list(river_side_2017_O$year,river_side_2017_O$COUNTY), mean)
colnames(river_side_2017_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#river_side 2017 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/river_side/2017")
river_side_2017_PM2.5 <- read.csv("2017riversidePM2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
river_side_2017_PM2.5 <- river_side_2017_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
river_side_2017_PM2.5$Date <- parse_date_time(river_side_2017_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
river_side_2017_PM2.5 <- separate(river_side_2017_PM2.5,Date, c("year","month","date"), sep = "-")
river_side_2017_PM2.5 <- aggregate(river_side_2017_PM2.5[, c(4,5,7,8)], list(river_side_2017_PM2.5$year,river_side_2017_PM2.5$COUNTY), mean)
colnames(river_side_2017_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#river_side 2017 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/river_side/2017")
river_side_2017_PM10 <- read.csv("2017riversidePM10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
river_side_2017_PM10 <- river_side_2017_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
river_side_2017_PM10$Date <- parse_date_time(river_side_2017_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
river_side_2017_PM10 <- separate(river_side_2017_PM10,Date, c("year","month","date"), sep = "-")
river_side_2017_PM10 <- aggregate(river_side_2017_PM10[, c(4,5,7,8)], list(river_side_2017_PM10$year,river_side_2017_PM10$COUNTY), mean)
colnames(river_side_2017_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#river_side 2017 all pollutant data
river_side_2017 <- cbind(river_side_2017_co,river_side_2017_NO2$NO2_concentration_value,river_side_2017_NO2$NO2_AQI,river_side_2017_O$O3_concentration_value,river_side_2017_O$O3_AQI,river_side_2017_PM2.5$PM2.5_concentration_value,river_side_2017_PM2.5$PM2.5_AQI,river_side_2017_PM10$PM10_concentration_value,river_side_2017_PM10$PM10_AQI)
river_side_2017 <- river_side_2017[c(1:4,7:14,5,6)]
colnames(river_side_2017) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#--------------------------------------------------------------------------------------------------------
#river_side final data
river_side <- rbind(river_side_2011,river_side_2012,river_side_2013,river_side_2014,river_side_2015,river_side_2016,river_side_2017)
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/FINAL_DATASETS")
write.csv(river_side, file = "river_side.csv")