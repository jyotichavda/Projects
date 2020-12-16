#humboldt 2011 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/humboldt/2011")
humboldt_2011_co <- read.csv("co.csv", header=T, na.strings=c(""), stringsAsFactors = T)
humboldt_2011_co <- humboldt_2011_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
humboldt_2011_co$Date <- parse_date_time(humboldt_2011_co$Date, c("%m-%d-%y", "%m/%d/%y"))
humboldt_2011_co <- separate(humboldt_2011_co,Date, c("year","month","date"), sep = "-")
humboldt_2011_co <- aggregate(humboldt_2011_co[, c(4,5,7,8)], list(humboldt_2011_co$year,humboldt_2011_co$COUNTY), mean)
colnames(humboldt_2011_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#humboldt 2011 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/humboldt/2011")
humboldt_2011_NO2 <- read.csv("no2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
humboldt_2011_NO2 <- humboldt_2011_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
humboldt_2011_NO2$Date <- parse_date_time(humboldt_2011_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
humboldt_2011_NO2 <- separate(humboldt_2011_NO2,Date, c("year","month","date"), sep = "-")
humboldt_2011_NO2 <- aggregate(humboldt_2011_NO2[, c(4,5,7,8)], list(humboldt_2011_NO2$year,humboldt_2011_NO2$COUNTY), mean)
colnames(humboldt_2011_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#humboldt 2011 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/humboldt/2011")
humboldt_2011_O <- read.csv("o.csv", header=T, na.strings=c(""), stringsAsFactors = T)
humboldt_2011_O <- humboldt_2011_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
humboldt_2011_O$Date <- parse_date_time(humboldt_2011_O$Date, c("%m-%d-%y", "%m/%d/%y"))
humboldt_2011_O <- separate(humboldt_2011_O,Date, c("year","month","date"), sep = "-")
humboldt_2011_O <- aggregate(humboldt_2011_O[, c(4,5,7,8)], list(humboldt_2011_O$year,humboldt_2011_O$COUNTY), mean)
colnames(humboldt_2011_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#humboldt 2011 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/humboldt/2011")
humboldt_2011_PM2.5 <- read.csv("pm2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
humboldt_2011_PM2.5 <- humboldt_2011_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
humboldt_2011_PM2.5$Date <- parse_date_time(humboldt_2011_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
humboldt_2011_PM2.5 <- separate(humboldt_2011_PM2.5,Date, c("year","month","date"), sep = "-")
humboldt_2011_PM2.5 <- aggregate(humboldt_2011_PM2.5[, c(4,5,7,8)], list(humboldt_2011_PM2.5$year,humboldt_2011_PM2.5$COUNTY), mean)
colnames(humboldt_2011_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#humboldt 2011 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/humboldt/2011")
humboldt_2011_PM10 <- read.csv("pm10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
humboldt_2011_PM10 <- humboldt_2011_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
humboldt_2011_PM10$Date <- parse_date_time(humboldt_2011_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
humboldt_2011_PM10 <- separate(humboldt_2011_PM10,Date, c("year","month","date"), sep = "-")
humboldt_2011_PM10 <- aggregate(humboldt_2011_PM10[, c(4,5,7,8)], list(humboldt_2011_PM10$year,humboldt_2011_PM10$COUNTY), mean)
colnames(humboldt_2011_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#humboldt 2011 all pollutant data
humboldt_2011 <- cbind(humboldt_2011_co,humboldt_2011_NO2$NO2_concentration_value,humboldt_2011_NO2$NO2_AQI,humboldt_2011_O$O3_concentration_value,humboldt_2011_O$O3_AQI,humboldt_2011_PM2.5$PM2.5_concentration_value,humboldt_2011_PM2.5$PM2.5_AQI,humboldt_2011_PM10$PM10_concentration_value,humboldt_2011_PM10$PM10_AQI)
humboldt_2011 <- humboldt_2011[c(1:4,7:14,5,6)]
colnames(humboldt_2011) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#---------------------------------------------------------------------------------------------------
#humboldt 2012 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/humboldt/2012")
humboldt_2012_co <- read.csv("co.csv", header=T, na.strings=c(""), stringsAsFactors = T)
humboldt_2012_co <- humboldt_2012_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
humboldt_2012_co$Date <- parse_date_time(humboldt_2012_co$Date, c("%m-%d-%y", "%m/%d/%y"))
humboldt_2012_co <- separate(humboldt_2012_co,Date, c("year","month","date"), sep = "-")
humboldt_2012_co <- aggregate(humboldt_2012_co[, c(4,5,7,8)], list(humboldt_2012_co$year,humboldt_2012_co$COUNTY), mean)
colnames(humboldt_2012_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#humboldt 2012 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/humboldt/2012")
humboldt_2012_NO2 <- read.csv("no2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
humboldt_2012_NO2 <- humboldt_2012_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
humboldt_2012_NO2$Date <- parse_date_time(humboldt_2012_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
humboldt_2012_NO2 <- separate(humboldt_2012_NO2,Date, c("year","month","date"), sep = "-")
humboldt_2012_NO2 <- aggregate(humboldt_2012_NO2[, c(4,5,7,8)], list(humboldt_2012_NO2$year,humboldt_2012_NO2$COUNTY), mean)
colnames(humboldt_2012_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#humboldt 2012 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/humboldt/2012")
humboldt_2012_O <- read.csv("o.csv", header=T, na.strings=c(""), stringsAsFactors = T)
humboldt_2012_O <- humboldt_2012_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
humboldt_2012_O$Date <- parse_date_time(humboldt_2012_O$Date, c("%m-%d-%y", "%m/%d/%y"))
humboldt_2012_O <- separate(humboldt_2012_O,Date, c("year","month","date"), sep = "-")
humboldt_2012_O <- aggregate(humboldt_2012_O[, c(4,5,7,8)], list(humboldt_2012_O$year,humboldt_2012_O$COUNTY), mean)
colnames(humboldt_2012_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#humboldt 2012 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/humboldt/2012")
humboldt_2012_PM2.5 <- read.csv("pm2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
humboldt_2012_PM2.5 <- humboldt_2012_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
humboldt_2012_PM2.5$Date <- parse_date_time(humboldt_2012_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
humboldt_2012_PM2.5 <- separate(humboldt_2012_PM2.5,Date, c("year","month","date"), sep = "-")
humboldt_2012_PM2.5 <- aggregate(humboldt_2012_PM2.5[, c(4,5,7,8)], list(humboldt_2012_PM2.5$year,humboldt_2012_PM2.5$COUNTY), mean)
colnames(humboldt_2012_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#humboldt 2012 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/humboldt/2012")
humboldt_2012_PM10 <- read.csv("pm10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
humboldt_2012_PM10 <- humboldt_2012_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
humboldt_2012_PM10$Date <- parse_date_time(humboldt_2012_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
humboldt_2012_PM10 <- separate(humboldt_2012_PM10,Date, c("year","month","date"), sep = "-")
humboldt_2012_PM10 <- aggregate(humboldt_2012_PM10[, c(4,5,7,8)], list(humboldt_2012_PM10$year,humboldt_2012_PM10$COUNTY), mean)
colnames(humboldt_2012_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#humboldt 2012 all pollutant data
humboldt_2012 <- cbind(humboldt_2012_co,humboldt_2012_NO2$NO2_concentration_value,humboldt_2012_NO2$NO2_AQI,humboldt_2012_O$O3_concentration_value,humboldt_2012_O$O3_AQI,humboldt_2012_PM2.5$PM2.5_concentration_value,humboldt_2012_PM2.5$PM2.5_AQI,humboldt_2012_PM10$PM10_concentration_value,humboldt_2012_PM10$PM10_AQI)
humboldt_2012 <- humboldt_2012[c(1:4,7:14,5,6)]
colnames(humboldt_2012) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#-------------------------------------------------------------------------------------------------------
#humboldt 2013 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/humboldt/2013")
humboldt_2013_co <- read.csv("co.csv", header=T, na.strings=c(""), stringsAsFactors = T)
humboldt_2013_co <- humboldt_2013_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
humboldt_2013_co$Date <- parse_date_time(humboldt_2013_co$Date, c("%m-%d-%y", "%m/%d/%y"))
humboldt_2013_co <- separate(humboldt_2013_co,Date, c("year","month","date"), sep = "-")
humboldt_2013_co <- aggregate(humboldt_2013_co[, c(4,5,7,8)], list(humboldt_2013_co$year,humboldt_2013_co$COUNTY), mean)
colnames(humboldt_2013_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#humboldt 2013 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/humboldt/2013")
humboldt_2013_NO2 <- read.csv("no2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
humboldt_2013_NO2 <- humboldt_2013_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
humboldt_2013_NO2$Date <- parse_date_time(humboldt_2013_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
humboldt_2013_NO2 <- separate(humboldt_2013_NO2,Date, c("year","month","date"), sep = "-")
humboldt_2013_NO2 <- aggregate(humboldt_2013_NO2[, c(4,5,7,8)], list(humboldt_2013_NO2$year,humboldt_2013_NO2$COUNTY), mean)
colnames(humboldt_2013_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#humboldt 2013 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/humboldt/2013")
humboldt_2013_O <- read.csv("O.csv", header=T, na.strings=c(""), stringsAsFactors = T)
humboldt_2013_O <- humboldt_2013_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
humboldt_2013_O$Date <- parse_date_time(humboldt_2013_O$Date, c("%m-%d-%y", "%m/%d/%y"))
humboldt_2013_O <- separate(humboldt_2013_O,Date, c("year","month","date"), sep = "-")
humboldt_2013_O <- aggregate(humboldt_2013_O[, c(4,5,7,8)], list(humboldt_2013_O$year,humboldt_2013_O$COUNTY), mean)
colnames(humboldt_2013_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#humboldt 2013 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/humboldt/2013")
humboldt_2013_PM2.5 <- read.csv("pm2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
humboldt_2013_PM2.5 <- humboldt_2013_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
humboldt_2013_PM2.5$Date <- parse_date_time(humboldt_2013_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
humboldt_2013_PM2.5 <- separate(humboldt_2013_PM2.5,Date, c("year","month","date"), sep = "-")
humboldt_2013_PM2.5 <- aggregate(humboldt_2013_PM2.5[, c(4,5,7,8)], list(humboldt_2013_PM2.5$year,humboldt_2013_PM2.5$COUNTY), mean)
colnames(humboldt_2013_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#humboldt 2013 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/humboldt/2013")
humboldt_2013_PM10 <- read.csv("pm10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
humboldt_2013_PM10 <- humboldt_2013_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
humboldt_2013_PM10$Date <- parse_date_time(humboldt_2013_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
humboldt_2013_PM10 <- separate(humboldt_2013_PM10,Date, c("year","month","date"), sep = "-")
humboldt_2013_PM10 <- aggregate(humboldt_2013_PM10[, c(4,5,7,8)], list(humboldt_2013_PM10$year,humboldt_2013_PM10$COUNTY), mean)
colnames(humboldt_2013_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#humboldt 2013 all pollutant data
humboldt_2013 <- cbind(humboldt_2013_co,humboldt_2013_NO2$NO2_concentration_value,humboldt_2013_NO2$NO2_AQI,humboldt_2013_O$O3_concentration_value,humboldt_2013_O$O3_AQI,humboldt_2013_PM2.5$PM2.5_concentration_value,humboldt_2013_PM2.5$PM2.5_AQI,humboldt_2013_PM10$PM10_concentration_value,humboldt_2013_PM10$PM10_AQI)
humboldt_2013 <- humboldt_2013[c(1:4,7:14,5,6)]
colnames(humboldt_2013) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#-------------------------------------------------------------------------------------------------------------
#humboldt 2014 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/humboldt/2014")
humboldt_2014_co <- read.csv("co.csv", header=T, na.strings=c(""), stringsAsFactors = T)
humboldt_2014_co <- humboldt_2014_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
humboldt_2014_co$Date <- parse_date_time(humboldt_2014_co$Date, c("%m-%d-%y", "%m/%d/%y"))
humboldt_2014_co <- separate(humboldt_2014_co,Date, c("year","month","date"), sep = "-")
humboldt_2014_co <- aggregate(humboldt_2014_co[, c(4,5,7,8)], list(humboldt_2014_co$year,humboldt_2014_co$COUNTY), mean)
colnames(humboldt_2014_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#humboldt 2014 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/humboldt/2014")
humboldt_2014_NO2 <- read.csv("no2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
humboldt_2014_NO2 <- humboldt_2014_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
humboldt_2014_NO2$Date <- parse_date_time(humboldt_2014_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
humboldt_2014_NO2 <- separate(humboldt_2014_NO2,Date, c("year","month","date"), sep = "-")
humboldt_2014_NO2 <- aggregate(humboldt_2014_NO2[, c(4,5,7,8)], list(humboldt_2014_NO2$year,humboldt_2014_NO2$COUNTY), mean)
colnames(humboldt_2014_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#humboldt 2014 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/humboldt/2014")
humboldt_2014_O <- read.csv("o.csv", header=T, na.strings=c(""), stringsAsFactors = T)
humboldt_2014_O <- humboldt_2014_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
humboldt_2014_O$Date <- parse_date_time(humboldt_2014_O$Date, c("%m-%d-%y", "%m/%d/%y"))
humboldt_2014_O <- separate(humboldt_2014_O,Date, c("year","month","date"), sep = "-")
humboldt_2014_O <- aggregate(humboldt_2014_O[, c(4,5,7,8)], list(humboldt_2014_O$year,humboldt_2014_O$COUNTY), mean)
colnames(humboldt_2014_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#humboldt 2014 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/humboldt/2014")
humboldt_2014_PM2.5 <- read.csv("pm2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
humboldt_2014_PM2.5 <- humboldt_2014_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
humboldt_2014_PM2.5$Date <- parse_date_time(humboldt_2014_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
humboldt_2014_PM2.5 <- separate(humboldt_2014_PM2.5,Date, c("year","month","date"), sep = "-")
humboldt_2014_PM2.5 <- aggregate(humboldt_2014_PM2.5[, c(4,5,7,8)], list(humboldt_2014_PM2.5$year,humboldt_2014_PM2.5$COUNTY), mean)
colnames(humboldt_2014_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#humboldt 2014 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/humboldt/2014")
humboldt_2014_PM10 <- read.csv("pm10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
humboldt_2014_PM10 <- humboldt_2014_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
humboldt_2014_PM10$Date <- parse_date_time(humboldt_2014_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
humboldt_2014_PM10 <- separate(humboldt_2014_PM10,Date, c("year","month","date"), sep = "-")
humboldt_2014_PM10 <- aggregate(humboldt_2014_PM10[, c(4,5,7,8)], list(humboldt_2014_PM10$year,humboldt_2014_PM10$COUNTY), mean)
colnames(humboldt_2014_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#humboldt 2014 all pollutant data
humboldt_2014 <- cbind(humboldt_2014_co,humboldt_2014_NO2$NO2_concentration_value,humboldt_2014_NO2$NO2_AQI,humboldt_2014_O$O3_concentration_value,humboldt_2014_O$O3_AQI,humboldt_2014_PM2.5$PM2.5_concentration_value,humboldt_2014_PM2.5$PM2.5_AQI,humboldt_2014_PM10$PM10_concentration_value,humboldt_2014_PM10$PM10_AQI)
humboldt_2014 <- humboldt_2014[c(1:4,7:14,5,6)]
colnames(humboldt_2014) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#----------------------------------------------------------------------------------------------------------------------

#humboldt 2015 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/humboldt/2015")
humboldt_2015_co <- read.csv("co.csv", header=T, na.strings=c(""), stringsAsFactors = T)
humboldt_2015_co <- humboldt_2015_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
humboldt_2015_co$Date <- parse_date_time(humboldt_2015_co$Date, c("%m-%d-%y", "%m/%d/%y"))
humboldt_2015_co <- separate(humboldt_2015_co,Date, c("year","month","date"), sep = "-")
humboldt_2015_co <- aggregate(humboldt_2015_co[, c(4,5,7,8)], list(humboldt_2015_co$year,humboldt_2015_co$COUNTY), mean)
colnames(humboldt_2015_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#humboldt 2015 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/humboldt/2015")
humboldt_2015_NO2 <- read.csv("no2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
humboldt_2015_NO2 <- humboldt_2015_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
humboldt_2015_NO2$Date <- parse_date_time(humboldt_2015_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
humboldt_2015_NO2 <- separate(humboldt_2015_NO2,Date, c("year","month","date"), sep = "-")
humboldt_2015_NO2 <- aggregate(humboldt_2015_NO2[, c(4,5,7,8)], list(humboldt_2015_NO2$year,humboldt_2015_NO2$COUNTY), mean)
colnames(humboldt_2015_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#humboldt 2015 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/humboldt/2015")
humboldt_2015_O <- read.csv("o.csv", header=T, na.strings=c(""), stringsAsFactors = T)
humboldt_2015_O <- humboldt_2015_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
humboldt_2015_O$Date <- parse_date_time(humboldt_2015_O$Date, c("%m-%d-%y", "%m/%d/%y"))
humboldt_2015_O <- separate(humboldt_2015_O,Date, c("year","month","date"), sep = "-")
humboldt_2015_O <- aggregate(humboldt_2015_O[, c(4,5,7,8)], list(humboldt_2015_O$year,humboldt_2015_O$COUNTY), mean)
colnames(humboldt_2015_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#humboldt 2015 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/humboldt/2015")
humboldt_2015_PM2.5 <- read.csv("pm2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
humboldt_2015_PM2.5 <- humboldt_2015_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
humboldt_2015_PM2.5$Date <- parse_date_time(humboldt_2015_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
humboldt_2015_PM2.5 <- separate(humboldt_2015_PM2.5,Date, c("year","month","date"), sep = "-")
humboldt_2015_PM2.5 <- aggregate(humboldt_2015_PM2.5[, c(4,5,7,8)], list(humboldt_2015_PM2.5$year,humboldt_2015_PM2.5$COUNTY), mean)
colnames(humboldt_2015_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#humboldt 2015 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/humboldt/2015")
humboldt_2015_PM10 <- read.csv("pm10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
humboldt_2015_PM10 <- humboldt_2015_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
humboldt_2015_PM10$Date <- parse_date_time(humboldt_2015_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
humboldt_2015_PM10 <- separate(humboldt_2015_PM10,Date, c("year","month","date"), sep = "-")
humboldt_2015_PM10 <- aggregate(humboldt_2015_PM10[, c(4,5,7,8)], list(humboldt_2015_PM10$year,humboldt_2015_PM10$COUNTY), mean)
colnames(humboldt_2015_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#humboldt 2015 all pollutant data
humboldt_2015 <- cbind(humboldt_2015_co,humboldt_2015_NO2$NO2_concentration_value,humboldt_2015_NO2$NO2_AQI,humboldt_2015_O$O3_concentration_value,humboldt_2015_O$O3_AQI,humboldt_2015_PM2.5$PM2.5_concentration_value,humboldt_2015_PM2.5$PM2.5_AQI,humboldt_2015_PM10$PM10_concentration_value,humboldt_2015_PM10$PM10_AQI)
humboldt_2015 <- humboldt_2015[c(1:4,7:14,5,6)]
colnames(humboldt_2015) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#-------------------------------------------------------------------------------------------------------
#humboldt 2016 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/humboldt/2016")
humboldt_2016_co <- read.csv("co.csv", header=T, na.strings=c(""), stringsAsFactors = T)
humboldt_2016_co <- humboldt_2016_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
humboldt_2016_co$Date <- parse_date_time(humboldt_2016_co$Date, c("%m-%d-%y", "%m/%d/%y"))
humboldt_2016_co <- separate(humboldt_2016_co,Date, c("year","month","date"), sep = "-")
humboldt_2016_co <- aggregate(humboldt_2016_co[, c(4,5,7,8)], list(humboldt_2016_co$year,humboldt_2016_co$COUNTY), mean)
colnames(humboldt_2016_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#humboldt 2016 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/humboldt/2016")
humboldt_2016_NO2 <- read.csv("no2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
humboldt_2016_NO2 <- humboldt_2016_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
humboldt_2016_NO2$Date <- parse_date_time(humboldt_2016_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
humboldt_2016_NO2 <- separate(humboldt_2016_NO2,Date, c("year","month","date"), sep = "-")
humboldt_2016_NO2 <- aggregate(humboldt_2016_NO2[, c(4,5,7,8)], list(humboldt_2016_NO2$year,humboldt_2016_NO2$COUNTY), mean)
colnames(humboldt_2016_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#humboldt 2016 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/humboldt/2016")
humboldt_2016_O <- read.csv("o.csv", header=T, na.strings=c(""), stringsAsFactors = T)
humboldt_2016_O <- humboldt_2016_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
humboldt_2016_O$Date <- parse_date_time(humboldt_2016_O$Date, c("%m-%d-%y", "%m/%d/%y"))
humboldt_2016_O <- separate(humboldt_2016_O,Date, c("year","month","date"), sep = "-")
humboldt_2016_O <- aggregate(humboldt_2016_O[, c(4,5,7,8)], list(humboldt_2016_O$year,humboldt_2016_O$COUNTY), mean)
colnames(humboldt_2016_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#humboldt 2016 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/humboldt/2016")
humboldt_2016_PM2.5 <- read.csv("pm2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
humboldt_2016_PM2.5 <- humboldt_2016_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
humboldt_2016_PM2.5$Date <- parse_date_time(humboldt_2016_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
humboldt_2016_PM2.5 <- separate(humboldt_2016_PM2.5,Date, c("year","month","date"), sep = "-")
humboldt_2016_PM2.5 <- aggregate(humboldt_2016_PM2.5[, c(4,5,7,8)], list(humboldt_2016_PM2.5$year,humboldt_2016_PM2.5$COUNTY), mean)
colnames(humboldt_2016_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#humboldt 2016 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/humboldt/2016")
humboldt_2016_PM10 <- read.csv("pm10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
humboldt_2016_PM10 <- humboldt_2016_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
humboldt_2016_PM10$Date <- parse_date_time(humboldt_2016_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
humboldt_2016_PM10 <- separate(humboldt_2016_PM10,Date, c("year","month","date"), sep = "-")
humboldt_2016_PM10 <- aggregate(humboldt_2016_PM10[, c(4,5,7,8)], list(humboldt_2016_PM10$year,humboldt_2016_PM10$COUNTY), mean)
colnames(humboldt_2016_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#humboldt 2016 all pollutant data
humboldt_2016 <- cbind(humboldt_2016_co,humboldt_2016_NO2$NO2_concentration_value,humboldt_2016_NO2$NO2_AQI,humboldt_2016_O$O3_concentration_value,humboldt_2016_O$O3_AQI,humboldt_2016_PM2.5$PM2.5_concentration_value,humboldt_2016_PM2.5$PM2.5_AQI,humboldt_2016_PM10$PM10_concentration_value,humboldt_2016_PM10$PM10_AQI)
humboldt_2016 <- humboldt_2016[c(1:4,7:14,5,6)]
colnames(humboldt_2016) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#----------------------------------------------------------------------------------------------------------
#humboldt 2017 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/humboldt/2017")
humboldt_2017_co <- read.csv("co.csv", header=T, na.strings=c(""), stringsAsFactors = T)
humboldt_2017_co <- humboldt_2017_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
humboldt_2017_co$Date <- parse_date_time(humboldt_2017_co$Date, c("%m-%d-%y", "%m/%d/%y"))
humboldt_2017_co <- separate(humboldt_2017_co,Date, c("year","month","date"), sep = "-")
humboldt_2017_co <- aggregate(humboldt_2017_co[, c(4,5,7,8)], list(humboldt_2017_co$year,humboldt_2017_co$COUNTY), mean)
colnames(humboldt_2017_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#humboldt 2017 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/humboldt/2017")
humboldt_2017_NO2 <- read.csv("no2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
humboldt_2017_NO2 <- humboldt_2017_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
humboldt_2017_NO2$Date <- parse_date_time(humboldt_2017_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
humboldt_2017_NO2 <- separate(humboldt_2017_NO2,Date, c("year","month","date"), sep = "-")
humboldt_2017_NO2 <- aggregate(humboldt_2017_NO2[, c(4,5,7,8)], list(humboldt_2017_NO2$year,humboldt_2017_NO2$COUNTY), mean)
colnames(humboldt_2017_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#humboldt 2017 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/humboldt/2017")
humboldt_2017_O <- read.csv("o.csv", header=T, na.strings=c(""), stringsAsFactors = T)
humboldt_2017_O <- humboldt_2017_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
humboldt_2017_O$Date <- parse_date_time(humboldt_2017_O$Date, c("%m-%d-%y", "%m/%d/%y"))
humboldt_2017_O <- separate(humboldt_2017_O,Date, c("year","month","date"), sep = "-")
humboldt_2017_O <- aggregate(humboldt_2017_O[, c(4,5,7,8)], list(humboldt_2017_O$year,humboldt_2017_O$COUNTY), mean)
colnames(humboldt_2017_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#humboldt 2017 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/humboldt/2017")
humboldt_2017_PM2.5 <- read.csv("pm2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
humboldt_2017_PM2.5 <- humboldt_2017_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
humboldt_2017_PM2.5$Date <- parse_date_time(humboldt_2017_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
humboldt_2017_PM2.5 <- separate(humboldt_2017_PM2.5,Date, c("year","month","date"), sep = "-")
humboldt_2017_PM2.5 <- aggregate(humboldt_2017_PM2.5[, c(4,5,7,8)], list(humboldt_2017_PM2.5$year,humboldt_2017_PM2.5$COUNTY), mean)
colnames(humboldt_2017_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#humboldt 2017 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/humboldt/2017")
humboldt_2017_PM10 <- read.csv("pm10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
humboldt_2017_PM10 <- humboldt_2017_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
humboldt_2017_PM10$Date <- parse_date_time(humboldt_2017_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
humboldt_2017_PM10 <- separate(humboldt_2017_PM10,Date, c("year","month","date"), sep = "-")
humboldt_2017_PM10 <- aggregate(humboldt_2017_PM10[, c(4,5,7,8)], list(humboldt_2017_PM10$year,humboldt_2017_PM10$COUNTY), mean)
colnames(humboldt_2017_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#humboldt 2017 all pollutant data
humboldt_2017 <- cbind(humboldt_2017_co,humboldt_2017_NO2$NO2_concentration_value,humboldt_2017_NO2$NO2_AQI,humboldt_2017_O$O3_concentration_value,humboldt_2017_O$O3_AQI,humboldt_2017_PM2.5$PM2.5_concentration_value,humboldt_2017_PM2.5$PM2.5_AQI,humboldt_2017_PM10$PM10_concentration_value,humboldt_2017_PM10$PM10_AQI)
humboldt_2017 <- humboldt_2017[c(1:4,7:14,5,6)]
colnames(humboldt_2017) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#--------------------------------------------------------------------------------------------------------
#humboldt final data
humboldt <- rbind(humboldt_2011,humboldt_2012,humboldt_2013,humboldt_2014,humboldt_2015,humboldt_2016,humboldt_2017)
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/FINAL_DATASETS")
write.csv(humboldt, file = "humboldt.csv")