#santaclara 2011 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/santaclara/2011")
santaclara_2011_co <- read.csv("co.csv", header=T, na.strings=c(""), stringsAsFactors = T)
santaclara_2011_co <- santaclara_2011_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
santaclara_2011_co$Date <- parse_date_time(santaclara_2011_co$Date, c("%m-%d-%y", "%m/%d/%y"))
santaclara_2011_co <- separate(santaclara_2011_co,Date, c("year","month","date"), sep = "-")
santaclara_2011_co <- aggregate(santaclara_2011_co[, c(4,5,7,8)], list(santaclara_2011_co$year,santaclara_2011_co$COUNTY), mean)
colnames(santaclara_2011_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#santaclara 2011 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/santaclara/2011")
santaclara_2011_NO2 <- read.csv("no2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
santaclara_2011_NO2 <- santaclara_2011_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
santaclara_2011_NO2$Date <- parse_date_time(santaclara_2011_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
santaclara_2011_NO2 <- separate(santaclara_2011_NO2,Date, c("year","month","date"), sep = "-")
santaclara_2011_NO2 <- aggregate(santaclara_2011_NO2[, c(4,5,7,8)], list(santaclara_2011_NO2$year,santaclara_2011_NO2$COUNTY), mean)
colnames(santaclara_2011_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#santaclara 2011 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/santaclara/2011")
santaclara_2011_O <- read.csv("o.csv", header=T, na.strings=c(""), stringsAsFactors = T)
santaclara_2011_O <- santaclara_2011_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
santaclara_2011_O$Date <- parse_date_time(santaclara_2011_O$Date, c("%m-%d-%y", "%m/%d/%y"))
santaclara_2011_O <- separate(santaclara_2011_O,Date, c("year","month","date"), sep = "-")
santaclara_2011_O <- aggregate(santaclara_2011_O[, c(4,5,7,8)], list(santaclara_2011_O$year,santaclara_2011_O$COUNTY), mean)
colnames(santaclara_2011_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#santaclara 2011 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/santaclara/2011")
santaclara_2011_PM2.5 <- read.csv("pm2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
santaclara_2011_PM2.5 <- santaclara_2011_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
santaclara_2011_PM2.5$Date <- parse_date_time(santaclara_2011_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
santaclara_2011_PM2.5 <- separate(santaclara_2011_PM2.5,Date, c("year","month","date"), sep = "-")
santaclara_2011_PM2.5 <- aggregate(santaclara_2011_PM2.5[, c(4,5,7,8)], list(santaclara_2011_PM2.5$year,santaclara_2011_PM2.5$COUNTY), mean)
colnames(santaclara_2011_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#santaclara 2011 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/santaclara/2011")
santaclara_2011_PM10 <- read.csv("pm10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
santaclara_2011_PM10 <- santaclara_2011_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
santaclara_2011_PM10$Date <- parse_date_time(santaclara_2011_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
santaclara_2011_PM10 <- separate(santaclara_2011_PM10,Date, c("year","month","date"), sep = "-")
santaclara_2011_PM10 <- aggregate(santaclara_2011_PM10[, c(4,5,7,8)], list(santaclara_2011_PM10$year,santaclara_2011_PM10$COUNTY), mean)
colnames(santaclara_2011_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#santaclara 2011 all pollutant data
santaclara_2011 <- cbind(santaclara_2011_co,santaclara_2011_NO2$NO2_concentration_value,santaclara_2011_NO2$NO2_AQI,santaclara_2011_O$O3_concentration_value,santaclara_2011_O$O3_AQI,santaclara_2011_PM2.5$PM2.5_concentration_value,santaclara_2011_PM2.5$PM2.5_AQI,santaclara_2011_PM10$PM10_concentration_value,santaclara_2011_PM10$PM10_AQI)
santaclara_2011 <- santaclara_2011[c(1:4,7:14,5,6)]
colnames(santaclara_2011) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#---------------------------------------------------------------------------------------------------
#santaclara 2012 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/santaclara/2012")
santaclara_2012_co <- read.csv("co.csv", header=T, na.strings=c(""), stringsAsFactors = T)
santaclara_2012_co <- santaclara_2012_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
santaclara_2012_co$Date <- parse_date_time(santaclara_2012_co$Date, c("%m-%d-%y", "%m/%d/%y"))
santaclara_2012_co <- separate(santaclara_2012_co,Date, c("year","month","date"), sep = "-")
santaclara_2012_co <- aggregate(santaclara_2012_co[, c(4,5,7,8)], list(santaclara_2012_co$year,santaclara_2012_co$COUNTY), mean)
colnames(santaclara_2012_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#santaclara 2012 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/santaclara/2012")
santaclara_2012_NO2 <- read.csv("no2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
santaclara_2012_NO2 <- santaclara_2012_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
santaclara_2012_NO2$Date <- parse_date_time(santaclara_2012_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
santaclara_2012_NO2 <- separate(santaclara_2012_NO2,Date, c("year","month","date"), sep = "-")
santaclara_2012_NO2 <- aggregate(santaclara_2012_NO2[, c(4,5,7,8)], list(santaclara_2012_NO2$year,santaclara_2012_NO2$COUNTY), mean)
colnames(santaclara_2012_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#santaclara 2012 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/santaclara/2012")
santaclara_2012_O <- read.csv("o.csv", header=T, na.strings=c(""), stringsAsFactors = T)
santaclara_2012_O <- santaclara_2012_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
santaclara_2012_O$Date <- parse_date_time(santaclara_2012_O$Date, c("%m-%d-%y", "%m/%d/%y"))
santaclara_2012_O <- separate(santaclara_2012_O,Date, c("year","month","date"), sep = "-")
santaclara_2012_O <- aggregate(santaclara_2012_O[, c(4,5,7,8)], list(santaclara_2012_O$year,santaclara_2012_O$COUNTY), mean)
colnames(santaclara_2012_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#santaclara 2012 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/santaclara/2012")
santaclara_2012_PM2.5 <- read.csv("pm2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
santaclara_2012_PM2.5 <- santaclara_2012_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
santaclara_2012_PM2.5$Date <- parse_date_time(santaclara_2012_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
santaclara_2012_PM2.5 <- separate(santaclara_2012_PM2.5,Date, c("year","month","date"), sep = "-")
santaclara_2012_PM2.5 <- aggregate(santaclara_2012_PM2.5[, c(4,5,7,8)], list(santaclara_2012_PM2.5$year,santaclara_2012_PM2.5$COUNTY), mean)
colnames(santaclara_2012_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#santaclara 2012 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/santaclara/2012")
santaclara_2012_PM10 <- read.csv("pm10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
santaclara_2012_PM10 <- santaclara_2012_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
santaclara_2012_PM10$Date <- parse_date_time(santaclara_2012_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
santaclara_2012_PM10 <- separate(santaclara_2012_PM10,Date, c("year","month","date"), sep = "-")
santaclara_2012_PM10 <- aggregate(santaclara_2012_PM10[, c(4,5,7,8)], list(santaclara_2012_PM10$year,santaclara_2012_PM10$COUNTY), mean)
colnames(santaclara_2012_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#santaclara 2012 all pollutant data
santaclara_2012 <- cbind(santaclara_2012_co,santaclara_2012_NO2$NO2_concentration_value,santaclara_2012_NO2$NO2_AQI,santaclara_2012_O$O3_concentration_value,santaclara_2012_O$O3_AQI,santaclara_2012_PM2.5$PM2.5_concentration_value,santaclara_2012_PM2.5$PM2.5_AQI,santaclara_2012_PM10$PM10_concentration_value,santaclara_2012_PM10$PM10_AQI)
santaclara_2012 <- santaclara_2012[c(1:4,7:14,5,6)]
colnames(santaclara_2012) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#-------------------------------------------------------------------------------------------------------
#santaclara 2013 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/santaclara/2013")
santaclara_2013_co <- read.csv("co.csv", header=T, na.strings=c(""), stringsAsFactors = T)
santaclara_2013_co <- santaclara_2013_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
santaclara_2013_co$Date <- parse_date_time(santaclara_2013_co$Date, c("%m-%d-%y", "%m/%d/%y"))
santaclara_2013_co <- separate(santaclara_2013_co,Date, c("year","month","date"), sep = "-")
santaclara_2013_co <- aggregate(santaclara_2013_co[, c(4,5,7,8)], list(santaclara_2013_co$year,santaclara_2013_co$COUNTY), mean)
colnames(santaclara_2013_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#santaclara 2013 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/santaclara/2013")
santaclara_2013_NO2 <- read.csv("no2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
santaclara_2013_NO2 <- santaclara_2013_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
santaclara_2013_NO2$Date <- parse_date_time(santaclara_2013_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
santaclara_2013_NO2 <- separate(santaclara_2013_NO2,Date, c("year","month","date"), sep = "-")
santaclara_2013_NO2 <- aggregate(santaclara_2013_NO2[, c(4,5,7,8)], list(santaclara_2013_NO2$year,santaclara_2013_NO2$COUNTY), mean)
colnames(santaclara_2013_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#santaclara 2013 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/santaclara/2013")
santaclara_2013_O <- read.csv("O.csv", header=T, na.strings=c(""), stringsAsFactors = T)
santaclara_2013_O <- santaclara_2013_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
santaclara_2013_O$Date <- parse_date_time(santaclara_2013_O$Date, c("%m-%d-%y", "%m/%d/%y"))
santaclara_2013_O <- separate(santaclara_2013_O,Date, c("year","month","date"), sep = "-")
santaclara_2013_O <- aggregate(santaclara_2013_O[, c(4,5,7,8)], list(santaclara_2013_O$year,santaclara_2013_O$COUNTY), mean)
colnames(santaclara_2013_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#santaclara 2013 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/santaclara/2013")
santaclara_2013_PM2.5 <- read.csv("pm2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
santaclara_2013_PM2.5 <- santaclara_2013_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
santaclara_2013_PM2.5$Date <- parse_date_time(santaclara_2013_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
santaclara_2013_PM2.5 <- separate(santaclara_2013_PM2.5,Date, c("year","month","date"), sep = "-")
santaclara_2013_PM2.5 <- aggregate(santaclara_2013_PM2.5[, c(4,5,7,8)], list(santaclara_2013_PM2.5$year,santaclara_2013_PM2.5$COUNTY), mean)
colnames(santaclara_2013_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#santaclara 2013 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/santaclara/2013")
santaclara_2013_PM10 <- read.csv("pm10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
santaclara_2013_PM10 <- santaclara_2013_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
santaclara_2013_PM10$Date <- parse_date_time(santaclara_2013_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
santaclara_2013_PM10 <- separate(santaclara_2013_PM10,Date, c("year","month","date"), sep = "-")
santaclara_2013_PM10 <- aggregate(santaclara_2013_PM10[, c(4,5,7,8)], list(santaclara_2013_PM10$year,santaclara_2013_PM10$COUNTY), mean)
colnames(santaclara_2013_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#santaclara 2013 all pollutant data
santaclara_2013 <- cbind(santaclara_2013_co,santaclara_2013_NO2$NO2_concentration_value,santaclara_2013_NO2$NO2_AQI,santaclara_2013_O$O3_concentration_value,santaclara_2013_O$O3_AQI,santaclara_2013_PM2.5$PM2.5_concentration_value,santaclara_2013_PM2.5$PM2.5_AQI,santaclara_2013_PM10$PM10_concentration_value,santaclara_2013_PM10$PM10_AQI)
santaclara_2013 <- santaclara_2013[c(1:4,7:14,5,6)]
colnames(santaclara_2013) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#-------------------------------------------------------------------------------------------------------------
#santaclara 2014 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/santaclara/2014")
santaclara_2014_co <- read.csv("co.csv", header=T, na.strings=c(""), stringsAsFactors = T)
santaclara_2014_co <- santaclara_2014_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
santaclara_2014_co$Date <- parse_date_time(santaclara_2014_co$Date, c("%m-%d-%y", "%m/%d/%y"))
santaclara_2014_co <- separate(santaclara_2014_co,Date, c("year","month","date"), sep = "-")
santaclara_2014_co <- aggregate(santaclara_2014_co[, c(4,5,7,8)], list(santaclara_2014_co$year,santaclara_2014_co$COUNTY), mean)
colnames(santaclara_2014_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#santaclara 2014 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/santaclara/2014")
santaclara_2014_NO2 <- read.csv("no2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
santaclara_2014_NO2 <- santaclara_2014_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
santaclara_2014_NO2$Date <- parse_date_time(santaclara_2014_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
santaclara_2014_NO2 <- separate(santaclara_2014_NO2,Date, c("year","month","date"), sep = "-")
santaclara_2014_NO2 <- aggregate(santaclara_2014_NO2[, c(4,5,7,8)], list(santaclara_2014_NO2$year,santaclara_2014_NO2$COUNTY), mean)
colnames(santaclara_2014_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#santaclara 2014 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/santaclara/2014")
santaclara_2014_O <- read.csv("o.csv", header=T, na.strings=c(""), stringsAsFactors = T)
santaclara_2014_O <- santaclara_2014_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
santaclara_2014_O$Date <- parse_date_time(santaclara_2014_O$Date, c("%m-%d-%y", "%m/%d/%y"))
santaclara_2014_O <- separate(santaclara_2014_O,Date, c("year","month","date"), sep = "-")
santaclara_2014_O <- aggregate(santaclara_2014_O[, c(4,5,7,8)], list(santaclara_2014_O$year,santaclara_2014_O$COUNTY), mean)
colnames(santaclara_2014_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#santaclara 2014 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/santaclara/2014")
santaclara_2014_PM2.5 <- read.csv("pm2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
santaclara_2014_PM2.5 <- santaclara_2014_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
santaclara_2014_PM2.5$Date <- parse_date_time(santaclara_2014_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
santaclara_2014_PM2.5 <- separate(santaclara_2014_PM2.5,Date, c("year","month","date"), sep = "-")
santaclara_2014_PM2.5 <- aggregate(santaclara_2014_PM2.5[, c(4,5,7,8)], list(santaclara_2014_PM2.5$year,santaclara_2014_PM2.5$COUNTY), mean)
colnames(santaclara_2014_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#santaclara 2014 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/santaclara/2014")
santaclara_2014_PM10 <- read.csv("pm10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
santaclara_2014_PM10 <- santaclara_2014_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
santaclara_2014_PM10$Date <- parse_date_time(santaclara_2014_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
santaclara_2014_PM10 <- separate(santaclara_2014_PM10,Date, c("year","month","date"), sep = "-")
santaclara_2014_PM10 <- aggregate(santaclara_2014_PM10[, c(4,5,7,8)], list(santaclara_2014_PM10$year,santaclara_2014_PM10$COUNTY), mean)
colnames(santaclara_2014_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#santaclara 2014 all pollutant data
santaclara_2014 <- cbind(santaclara_2014_co,santaclara_2014_NO2$NO2_concentration_value,santaclara_2014_NO2$NO2_AQI,santaclara_2014_O$O3_concentration_value,santaclara_2014_O$O3_AQI,santaclara_2014_PM2.5$PM2.5_concentration_value,santaclara_2014_PM2.5$PM2.5_AQI,santaclara_2014_PM10$PM10_concentration_value,santaclara_2014_PM10$PM10_AQI)
santaclara_2014 <- santaclara_2014[c(1:4,7:14,5,6)]
colnames(santaclara_2014) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#----------------------------------------------------------------------------------------------------------------------

#santaclara 2015 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/santaclara/2015")
santaclara_2015_co <- read.csv("co.csv", header=T, na.strings=c(""), stringsAsFactors = T)
santaclara_2015_co <- santaclara_2015_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
santaclara_2015_co$Date <- parse_date_time(santaclara_2015_co$Date, c("%m-%d-%y", "%m/%d/%y"))
santaclara_2015_co <- separate(santaclara_2015_co,Date, c("year","month","date"), sep = "-")
santaclara_2015_co <- aggregate(santaclara_2015_co[, c(4,5,7,8)], list(santaclara_2015_co$year,santaclara_2015_co$COUNTY), mean)
colnames(santaclara_2015_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#santaclara 2015 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/santaclara/2015")
santaclara_2015_NO2 <- read.csv("no2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
santaclara_2015_NO2 <- santaclara_2015_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
santaclara_2015_NO2$Date <- parse_date_time(santaclara_2015_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
santaclara_2015_NO2 <- separate(santaclara_2015_NO2,Date, c("year","month","date"), sep = "-")
santaclara_2015_NO2 <- aggregate(santaclara_2015_NO2[, c(4,5,7,8)], list(santaclara_2015_NO2$year,santaclara_2015_NO2$COUNTY), mean)
colnames(santaclara_2015_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#santaclara 2015 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/santaclara/2015")
santaclara_2015_O <- read.csv("o.csv", header=T, na.strings=c(""), stringsAsFactors = T)
santaclara_2015_O <- santaclara_2015_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
santaclara_2015_O$Date <- parse_date_time(santaclara_2015_O$Date, c("%m-%d-%y", "%m/%d/%y"))
santaclara_2015_O <- separate(santaclara_2015_O,Date, c("year","month","date"), sep = "-")
santaclara_2015_O <- aggregate(santaclara_2015_O[, c(4,5,7,8)], list(santaclara_2015_O$year,santaclara_2015_O$COUNTY), mean)
colnames(santaclara_2015_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#santaclara 2015 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/santaclara/2015")
santaclara_2015_PM2.5 <- read.csv("pm2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
santaclara_2015_PM2.5 <- santaclara_2015_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
santaclara_2015_PM2.5$Date <- parse_date_time(santaclara_2015_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
santaclara_2015_PM2.5 <- separate(santaclara_2015_PM2.5,Date, c("year","month","date"), sep = "-")
santaclara_2015_PM2.5 <- aggregate(santaclara_2015_PM2.5[, c(4,5,7,8)], list(santaclara_2015_PM2.5$year,santaclara_2015_PM2.5$COUNTY), mean)
colnames(santaclara_2015_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#santaclara 2015 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/santaclara/2015")
santaclara_2015_PM10 <- read.csv("pm10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
santaclara_2015_PM10 <- santaclara_2015_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
santaclara_2015_PM10$Date <- parse_date_time(santaclara_2015_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
santaclara_2015_PM10 <- separate(santaclara_2015_PM10,Date, c("year","month","date"), sep = "-")
santaclara_2015_PM10 <- aggregate(santaclara_2015_PM10[, c(4,5,7,8)], list(santaclara_2015_PM10$year,santaclara_2015_PM10$COUNTY), mean)
colnames(santaclara_2015_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#santaclara 2015 all pollutant data
santaclara_2015 <- cbind(santaclara_2015_co,santaclara_2015_NO2$NO2_concentration_value,santaclara_2015_NO2$NO2_AQI,santaclara_2015_O$O3_concentration_value,santaclara_2015_O$O3_AQI,santaclara_2015_PM2.5$PM2.5_concentration_value,santaclara_2015_PM2.5$PM2.5_AQI,santaclara_2015_PM10$PM10_concentration_value,santaclara_2015_PM10$PM10_AQI)
santaclara_2015 <- santaclara_2015[c(1:4,7:14,5,6)]
colnames(santaclara_2015) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#-------------------------------------------------------------------------------------------------------
#santaclara 2016 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/santaclara/2016")
santaclara_2016_co <- read.csv("co.csv", header=T, na.strings=c(""), stringsAsFactors = T)
santaclara_2016_co <- santaclara_2016_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
santaclara_2016_co$Date <- parse_date_time(santaclara_2016_co$Date, c("%m-%d-%y", "%m/%d/%y"))
santaclara_2016_co <- separate(santaclara_2016_co,Date, c("year","month","date"), sep = "-")
santaclara_2016_co <- aggregate(santaclara_2016_co[, c(4,5,7,8)], list(santaclara_2016_co$year,santaclara_2016_co$COUNTY), mean)
colnames(santaclara_2016_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#santaclara 2016 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/santaclara/2016")
santaclara_2016_NO2 <- read.csv("no2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
santaclara_2016_NO2 <- santaclara_2016_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
santaclara_2016_NO2$Date <- parse_date_time(santaclara_2016_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
santaclara_2016_NO2 <- separate(santaclara_2016_NO2,Date, c("year","month","date"), sep = "-")
santaclara_2016_NO2 <- aggregate(santaclara_2016_NO2[, c(4,5,7,8)], list(santaclara_2016_NO2$year,santaclara_2016_NO2$COUNTY), mean)
colnames(santaclara_2016_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#santaclara 2016 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/santaclara/2016")
santaclara_2016_O <- read.csv("o.csv", header=T, na.strings=c(""), stringsAsFactors = T)
santaclara_2016_O <- santaclara_2016_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
santaclara_2016_O$Date <- parse_date_time(santaclara_2016_O$Date, c("%m-%d-%y", "%m/%d/%y"))
santaclara_2016_O <- separate(santaclara_2016_O,Date, c("year","month","date"), sep = "-")
santaclara_2016_O <- aggregate(santaclara_2016_O[, c(4,5,7,8)], list(santaclara_2016_O$year,santaclara_2016_O$COUNTY), mean)
colnames(santaclara_2016_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#santaclara 2016 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/santaclara/2016")
santaclara_2016_PM2.5 <- read.csv("pm2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
santaclara_2016_PM2.5 <- santaclara_2016_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
santaclara_2016_PM2.5$Date <- parse_date_time(santaclara_2016_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
santaclara_2016_PM2.5 <- separate(santaclara_2016_PM2.5,Date, c("year","month","date"), sep = "-")
santaclara_2016_PM2.5 <- aggregate(santaclara_2016_PM2.5[, c(4,5,7,8)], list(santaclara_2016_PM2.5$year,santaclara_2016_PM2.5$COUNTY), mean)
colnames(santaclara_2016_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#santaclara 2016 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/santaclara/2016")
santaclara_2016_PM10 <- read.csv("pm10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
santaclara_2016_PM10 <- santaclara_2016_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
santaclara_2016_PM10$Date <- parse_date_time(santaclara_2016_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
santaclara_2016_PM10 <- separate(santaclara_2016_PM10,Date, c("year","month","date"), sep = "-")
santaclara_2016_PM10 <- aggregate(santaclara_2016_PM10[, c(4,5,7,8)], list(santaclara_2016_PM10$year,santaclara_2016_PM10$COUNTY), mean)
colnames(santaclara_2016_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#santaclara 2016 all pollutant data
santaclara_2016 <- cbind(santaclara_2016_co,santaclara_2016_NO2$NO2_concentration_value,santaclara_2016_NO2$NO2_AQI,santaclara_2016_O$O3_concentration_value,santaclara_2016_O$O3_AQI,santaclara_2016_PM2.5$PM2.5_concentration_value,santaclara_2016_PM2.5$PM2.5_AQI,santaclara_2016_PM10$PM10_concentration_value,santaclara_2016_PM10$PM10_AQI)
santaclara_2016 <- santaclara_2016[c(1:4,7:14,5,6)]
colnames(santaclara_2016) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#----------------------------------------------------------------------------------------------------------
#santaclara 2017 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/santaclara/2017")
santaclara_2017_co <- read.csv("co.csv", header=T, na.strings=c(""), stringsAsFactors = T)
santaclara_2017_co <- santaclara_2017_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
santaclara_2017_co$Date <- parse_date_time(santaclara_2017_co$Date, c("%m-%d-%y", "%m/%d/%y"))
santaclara_2017_co <- separate(santaclara_2017_co,Date, c("year","month","date"), sep = "-")
santaclara_2017_co <- aggregate(santaclara_2017_co[, c(4,5,7,8)], list(santaclara_2017_co$year,santaclara_2017_co$COUNTY), mean)
colnames(santaclara_2017_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#santaclara 2017 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/santaclara/2017")
santaclara_2017_NO2 <- read.csv("no2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
santaclara_2017_NO2 <- santaclara_2017_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
santaclara_2017_NO2$Date <- parse_date_time(santaclara_2017_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
santaclara_2017_NO2 <- separate(santaclara_2017_NO2,Date, c("year","month","date"), sep = "-")
santaclara_2017_NO2 <- aggregate(santaclara_2017_NO2[, c(4,5,7,8)], list(santaclara_2017_NO2$year,santaclara_2017_NO2$COUNTY), mean)
colnames(santaclara_2017_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#santaclara 2017 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/santaclara/2017")
santaclara_2017_O <- read.csv("o.csv", header=T, na.strings=c(""), stringsAsFactors = T)
santaclara_2017_O <- santaclara_2017_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
santaclara_2017_O$Date <- parse_date_time(santaclara_2017_O$Date, c("%m-%d-%y", "%m/%d/%y"))
santaclara_2017_O <- separate(santaclara_2017_O,Date, c("year","month","date"), sep = "-")
santaclara_2017_O <- aggregate(santaclara_2017_O[, c(4,5,7,8)], list(santaclara_2017_O$year,santaclara_2017_O$COUNTY), mean)
colnames(santaclara_2017_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#santaclara 2017 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/santaclara/2017")
santaclara_2017_PM2.5 <- read.csv("pm2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
santaclara_2017_PM2.5 <- santaclara_2017_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
santaclara_2017_PM2.5$Date <- parse_date_time(santaclara_2017_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
santaclara_2017_PM2.5 <- separate(santaclara_2017_PM2.5,Date, c("year","month","date"), sep = "-")
santaclara_2017_PM2.5 <- aggregate(santaclara_2017_PM2.5[, c(4,5,7,8)], list(santaclara_2017_PM2.5$year,santaclara_2017_PM2.5$COUNTY), mean)
colnames(santaclara_2017_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#santaclara 2017 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/santaclara/2017")
santaclara_2017_PM10 <- read.csv("pm10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
santaclara_2017_PM10 <- santaclara_2017_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
santaclara_2017_PM10$Date <- parse_date_time(santaclara_2017_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
santaclara_2017_PM10 <- separate(santaclara_2017_PM10,Date, c("year","month","date"), sep = "-")
santaclara_2017_PM10 <- aggregate(santaclara_2017_PM10[, c(4,5,7,8)], list(santaclara_2017_PM10$year,santaclara_2017_PM10$COUNTY), mean)
colnames(santaclara_2017_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#santaclara 2017 all pollutant data
santaclara_2017 <- cbind(santaclara_2017_co,santaclara_2017_NO2$NO2_concentration_value,santaclara_2017_NO2$NO2_AQI,santaclara_2017_O$O3_concentration_value,santaclara_2017_O$O3_AQI,santaclara_2017_PM2.5$PM2.5_concentration_value,santaclara_2017_PM2.5$PM2.5_AQI,santaclara_2017_PM10$PM10_concentration_value,santaclara_2017_PM10$PM10_AQI)
santaclara_2017 <- santaclara_2017[c(1:4,7:14,5,6)]
colnames(santaclara_2017) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#--------------------------------------------------------------------------------------------------------
#santaclara final data
santaclara <- rbind(santaclara_2011,santaclara_2012,santaclara_2013,santaclara_2014,santaclara_2015,santaclara_2016,santaclara_2017)
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/FINAL_DATASETS")
write.csv(santaclara, file = "santaclara.csv")