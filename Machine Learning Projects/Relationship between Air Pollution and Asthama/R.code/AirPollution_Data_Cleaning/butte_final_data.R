#butte 2011 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/butte/2011")
butte_2011_co <- read.csv("butte_2011_CO.csv", header=T, na.strings=c(""), stringsAsFactors = T)
butte_2011_co <- butte_2011_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
butte_2011_co$Date <- parse_date_time(butte_2011_co$Date, c("%m-%d-%y", "%m/%d/%y"))
butte_2011_co <- separate(butte_2011_co,Date, c("year","month","date"), sep = "-")
butte_2011_co <- aggregate(butte_2011_co[, c(4,5,7,8)], list(butte_2011_co$year,butte_2011_co$COUNTY), mean)
colnames(butte_2011_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#butte 2011 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/butte/2011")
butte_2011_NO2 <- read.csv("butte_2011_NO2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
butte_2011_NO2 <- butte_2011_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
butte_2011_NO2$Date <- parse_date_time(butte_2011_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
butte_2011_NO2 <- separate(butte_2011_NO2,Date, c("year","month","date"), sep = "-")
butte_2011_NO2 <- aggregate(butte_2011_NO2[, c(4,5,7,8)], list(butte_2011_NO2$year,butte_2011_NO2$COUNTY), mean)
colnames(butte_2011_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#butte 2011 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/butte/2011")
butte_2011_O <- read.csv("butte_2011_O.csv", header=T, na.strings=c(""), stringsAsFactors = T)
butte_2011_O <- butte_2011_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
butte_2011_O$Date <- parse_date_time(butte_2011_O$Date, c("%m-%d-%y", "%m/%d/%y"))
butte_2011_O <- separate(butte_2011_O,Date, c("year","month","date"), sep = "-")
butte_2011_O <- aggregate(butte_2011_O[, c(4,5,7,8)], list(butte_2011_O$year,butte_2011_O$COUNTY), mean)
colnames(butte_2011_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#butte 2011 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/butte/2011")
butte_2011_PM2.5 <- read.csv("butte_2011_PM2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
butte_2011_PM2.5 <- butte_2011_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
butte_2011_PM2.5$Date <- parse_date_time(butte_2011_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
butte_2011_PM2.5 <- separate(butte_2011_PM2.5,Date, c("year","month","date"), sep = "-")
butte_2011_PM2.5 <- aggregate(butte_2011_PM2.5[, c(4,5,7,8)], list(butte_2011_PM2.5$year,butte_2011_PM2.5$COUNTY), mean)
colnames(butte_2011_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#butte 2011 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/butte/2011")
butte_2011_PM10 <- read.csv("butte_2011_PM10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
butte_2011_PM10 <- butte_2011_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
butte_2011_PM10$Date <- parse_date_time(butte_2011_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
butte_2011_PM10 <- separate(butte_2011_PM10,Date, c("year","month","date"), sep = "-")
butte_2011_PM10 <- aggregate(butte_2011_PM10[, c(4,5,7,8)], list(butte_2011_PM10$year,butte_2011_PM10$COUNTY), mean)
colnames(butte_2011_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#butte 2011 all pollutant data
butte_2011 <- cbind(butte_2011_co,butte_2011_NO2$NO2_concentration_value,butte_2011_NO2$NO2_AQI,butte_2011_O$O3_concentration_value,butte_2011_O$O3_AQI,butte_2011_PM2.5$PM2.5_concentration_value,butte_2011_PM2.5$PM2.5_AQI,butte_2011_PM10$PM10_concentration_value,butte_2011_PM10$PM10_AQI)
butte_2011 <- butte_2011[c(1:4,7:14,5,6)]
colnames(butte_2011) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#---------------------------------------------------------------------------------------------------
#butte 2012 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/butte/2012")
butte_2012_co <- read.csv("butte_2012_CO.csv", header=T, na.strings=c(""), stringsAsFactors = T)
butte_2012_co <- butte_2012_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
butte_2012_co$Date <- parse_date_time(butte_2012_co$Date, c("%m-%d-%y", "%m/%d/%y"))
butte_2012_co <- separate(butte_2012_co,Date, c("year","month","date"), sep = "-")
butte_2012_co <- aggregate(butte_2012_co[, c(4,5,7,8)], list(butte_2012_co$year,butte_2012_co$COUNTY), mean)
colnames(butte_2012_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#butte 2012 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/butte/2012")
butte_2012_NO2 <- read.csv("butte_2012_NO2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
butte_2012_NO2 <- butte_2012_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
butte_2012_NO2$Date <- parse_date_time(butte_2012_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
butte_2012_NO2 <- separate(butte_2012_NO2,Date, c("year","month","date"), sep = "-")
butte_2012_NO2 <- aggregate(butte_2012_NO2[, c(4,5,7,8)], list(butte_2012_NO2$year,butte_2012_NO2$COUNTY), mean)
colnames(butte_2012_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#butte 2012 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/butte/2012")
butte_2012_O <- read.csv("butte_2012_O.csv", header=T, na.strings=c(""), stringsAsFactors = T)
butte_2012_O <- butte_2012_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
butte_2012_O$Date <- parse_date_time(butte_2012_O$Date, c("%m-%d-%y", "%m/%d/%y"))
butte_2012_O <- separate(butte_2012_O,Date, c("year","month","date"), sep = "-")
butte_2012_O <- aggregate(butte_2012_O[, c(4,5,7,8)], list(butte_2012_O$year,butte_2012_O$COUNTY), mean)
colnames(butte_2012_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#butte 2012 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/butte/2012")
butte_2012_PM2.5 <- read.csv("butte_2012_PM2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
butte_2012_PM2.5 <- butte_2012_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
butte_2012_PM2.5$Date <- parse_date_time(butte_2012_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
butte_2012_PM2.5 <- separate(butte_2012_PM2.5,Date, c("year","month","date"), sep = "-")
butte_2012_PM2.5 <- aggregate(butte_2012_PM2.5[, c(4,5,7,8)], list(butte_2012_PM2.5$year,butte_2012_PM2.5$COUNTY), mean)
colnames(butte_2012_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#butte 2012 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/butte/2012")
butte_2012_PM10 <- read.csv("butte_2012_PM10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
butte_2012_PM10 <- butte_2012_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
butte_2012_PM10$Date <- parse_date_time(butte_2012_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
butte_2012_PM10 <- separate(butte_2012_PM10,Date, c("year","month","date"), sep = "-")
butte_2012_PM10 <- aggregate(butte_2012_PM10[, c(4,5,7,8)], list(butte_2012_PM10$year,butte_2012_PM10$COUNTY), mean)
colnames(butte_2012_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#butte 2012 all pollutant data
butte_2012 <- cbind(butte_2012_co,butte_2012_NO2$NO2_concentration_value,butte_2012_NO2$NO2_AQI,butte_2012_O$O3_concentration_value,butte_2012_O$O3_AQI,butte_2012_PM2.5$PM2.5_concentration_value,butte_2012_PM2.5$PM2.5_AQI,butte_2012_PM10$PM10_concentration_value,butte_2012_PM10$PM10_AQI)
butte_2012 <- butte_2012[c(1:4,7:14,5,6)]
colnames(butte_2012) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#-------------------------------------------------------------------------------------------------------
#butte 2013 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/butte/2013")
butte_2013_co <- read.csv("butte_2013_CO.csv", header=T, na.strings=c(""), stringsAsFactors = T)
butte_2013_co <- butte_2013_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
butte_2013_co$Date <- parse_date_time(butte_2013_co$Date, c("%m-%d-%y", "%m/%d/%y"))
butte_2013_co <- separate(butte_2013_co,Date, c("year","month","date"), sep = "-")
butte_2013_co <- aggregate(butte_2013_co[, c(4,5,7,8)], list(butte_2013_co$year,butte_2013_co$COUNTY), mean)
colnames(butte_2013_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#butte 2013 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/butte/2013")
butte_2013_NO2 <- read.csv("butte_2013_NO2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
butte_2013_NO2 <- butte_2013_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
butte_2013_NO2$Date <- parse_date_time(butte_2013_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
butte_2013_NO2 <- separate(butte_2013_NO2,Date, c("year","month","date"), sep = "-")
butte_2013_NO2 <- aggregate(butte_2013_NO2[, c(4,5,7,8)], list(butte_2013_NO2$year,butte_2013_NO2$COUNTY), mean)
colnames(butte_2013_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#butte 2013 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/butte/2013")
butte_2013_O <- read.csv("butte_2013_O.csv", header=T, na.strings=c(""), stringsAsFactors = T)
butte_2013_O <- butte_2013_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
butte_2013_O$Date <- parse_date_time(butte_2013_O$Date, c("%m-%d-%y", "%m/%d/%y"))
butte_2013_O <- separate(butte_2013_O,Date, c("year","month","date"), sep = "-")
butte_2013_O <- aggregate(butte_2013_O[, c(4,5,7,8)], list(butte_2013_O$year,butte_2013_O$COUNTY), mean)
colnames(butte_2013_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#butte 2013 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/butte/2013")
butte_2013_PM2.5 <- read.csv("butte_2013_PM2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
butte_2013_PM2.5 <- butte_2013_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
butte_2013_PM2.5$Date <- parse_date_time(butte_2013_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
butte_2013_PM2.5 <- separate(butte_2013_PM2.5,Date, c("year","month","date"), sep = "-")
butte_2013_PM2.5 <- aggregate(butte_2013_PM2.5[, c(4,5,7,8)], list(butte_2013_PM2.5$year,butte_2013_PM2.5$COUNTY), mean)
colnames(butte_2013_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#butte 2013 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/butte/2013")
butte_2013_PM10 <- read.csv("butte_2013_PM10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
butte_2013_PM10 <- butte_2013_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
butte_2013_PM10$Date <- parse_date_time(butte_2013_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
butte_2013_PM10 <- separate(butte_2013_PM10,Date, c("year","month","date"), sep = "-")
butte_2013_PM10 <- aggregate(butte_2013_PM10[, c(4,5,7,8)], list(butte_2013_PM10$year,butte_2013_PM10$COUNTY), mean)
colnames(butte_2013_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#butte 2013 all pollutant data
butte_2013 <- cbind(butte_2013_co,butte_2013_NO2$NO2_concentration_value,butte_2013_NO2$NO2_AQI,butte_2013_O$O3_concentration_value,butte_2013_O$O3_AQI,butte_2013_PM2.5$PM2.5_concentration_value,butte_2013_PM2.5$PM2.5_AQI,butte_2013_PM10$PM10_concentration_value,butte_2013_PM10$PM10_AQI)
butte_2013 <- butte_2013[c(1:4,7:14,5,6)]
colnames(butte_2013) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#-------------------------------------------------------------------------------------------------------------
#butte 2014 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/butte/2014")
butte_2014_co <- read.csv("butte_2014_CO.csv", header=T, na.strings=c(""), stringsAsFactors = T)
butte_2014_co <- butte_2014_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
butte_2014_co$Date <- parse_date_time(butte_2014_co$Date, c("%m-%d-%y", "%m/%d/%y"))
butte_2014_co <- separate(butte_2014_co,Date, c("year","month","date"), sep = "-")
butte_2014_co <- aggregate(butte_2014_co[, c(4,5,7,8)], list(butte_2014_co$year,butte_2014_co$COUNTY), mean)
colnames(butte_2014_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#butte 2014 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/butte/2014")
butte_2014_NO2 <- read.csv("butte_2014_NO2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
butte_2014_NO2 <- butte_2014_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
butte_2014_NO2$Date <- parse_date_time(butte_2014_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
butte_2014_NO2 <- separate(butte_2014_NO2,Date, c("year","month","date"), sep = "-")
butte_2014_NO2 <- aggregate(butte_2014_NO2[, c(4,5,7,8)], list(butte_2014_NO2$year,butte_2014_NO2$COUNTY), mean)
colnames(butte_2014_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#butte 2014 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/butte/2014")
butte_2014_O <- read.csv("butte_2014_O.csv", header=T, na.strings=c(""), stringsAsFactors = T)
butte_2014_O <- butte_2014_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
butte_2014_O$Date <- parse_date_time(butte_2014_O$Date, c("%m-%d-%y", "%m/%d/%y"))
butte_2014_O <- separate(butte_2014_O,Date, c("year","month","date"), sep = "-")
butte_2014_O <- aggregate(butte_2014_O[, c(4,5,7,8)], list(butte_2014_O$year,butte_2014_O$COUNTY), mean)
colnames(butte_2014_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#butte 2014 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/butte/2014")
butte_2014_PM2.5 <- read.csv("butte_2014_PM2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
butte_2014_PM2.5 <- butte_2014_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
butte_2014_PM2.5$Date <- parse_date_time(butte_2014_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
butte_2014_PM2.5 <- separate(butte_2014_PM2.5,Date, c("year","month","date"), sep = "-")
butte_2014_PM2.5 <- aggregate(butte_2014_PM2.5[, c(4,5,7,8)], list(butte_2014_PM2.5$year,butte_2014_PM2.5$COUNTY), mean)
colnames(butte_2014_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#butte 2014 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/butte/2014")
butte_2014_PM10 <- read.csv("butte_2014_PM10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
butte_2014_PM10 <- butte_2014_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
butte_2014_PM10$Date <- parse_date_time(butte_2014_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
butte_2014_PM10 <- separate(butte_2014_PM10,Date, c("year","month","date"), sep = "-")
butte_2014_PM10 <- aggregate(butte_2014_PM10[, c(4,5,7,8)], list(butte_2014_PM10$year,butte_2014_PM10$COUNTY), mean)
colnames(butte_2014_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#butte 2014 all pollutant data
butte_2014 <- cbind(butte_2014_co,butte_2014_NO2$NO2_concentration_value,butte_2014_NO2$NO2_AQI,butte_2014_O$O3_concentration_value,butte_2014_O$O3_AQI,butte_2014_PM2.5$PM2.5_concentration_value,butte_2014_PM2.5$PM2.5_AQI,butte_2014_PM10$PM10_concentration_value,butte_2014_PM10$PM10_AQI)
butte_2014 <- butte_2014[c(1:4,7:14,5,6)]
colnames(butte_2014) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#----------------------------------------------------------------------------------------------------------------------

#butte 2015 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/butte/2015")
butte_2015_co <- read.csv("butte_2015_CO.csv", header=T, na.strings=c(""), stringsAsFactors = T)
butte_2015_co <- butte_2015_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
butte_2015_co$Date <- parse_date_time(butte_2015_co$Date, c("%m-%d-%y", "%m/%d/%y"))
butte_2015_co <- separate(butte_2015_co,Date, c("year","month","date"), sep = "-")
butte_2015_co <- aggregate(butte_2015_co[, c(4,5,7,8)], list(butte_2015_co$year,butte_2015_co$COUNTY), mean)
colnames(butte_2015_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#butte 2015 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/butte/2015")
butte_2015_NO2 <- read.csv("butte_2015_NO2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
butte_2015_NO2 <- butte_2015_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
butte_2015_NO2$Date <- parse_date_time(butte_2015_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
butte_2015_NO2 <- separate(butte_2015_NO2,Date, c("year","month","date"), sep = "-")
butte_2015_NO2 <- aggregate(butte_2015_NO2[, c(4,5,7,8)], list(butte_2015_NO2$year,butte_2015_NO2$COUNTY), mean)
colnames(butte_2015_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#butte 2015 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/butte/2015")
butte_2015_O <- read.csv("butte_2015_O.csv", header=T, na.strings=c(""), stringsAsFactors = T)
butte_2015_O <- butte_2015_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
butte_2015_O$Date <- parse_date_time(butte_2015_O$Date, c("%m-%d-%y", "%m/%d/%y"))
butte_2015_O <- separate(butte_2015_O,Date, c("year","month","date"), sep = "-")
butte_2015_O <- aggregate(butte_2015_O[, c(4,5,7,8)], list(butte_2015_O$year,butte_2015_O$COUNTY), mean)
colnames(butte_2015_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#butte 2015 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/butte/2015")
butte_2015_PM2.5 <- read.csv("butte_2015_PM2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
butte_2015_PM2.5 <- butte_2015_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
butte_2015_PM2.5$Date <- parse_date_time(butte_2015_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
butte_2015_PM2.5 <- separate(butte_2015_PM2.5,Date, c("year","month","date"), sep = "-")
butte_2015_PM2.5 <- aggregate(butte_2015_PM2.5[, c(4,5,7,8)], list(butte_2015_PM2.5$year,butte_2015_PM2.5$COUNTY), mean)
colnames(butte_2015_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#butte 2015 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/butte/2015")
butte_2015_PM10 <- read.csv("butte_2015_PM10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
butte_2015_PM10 <- butte_2015_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
butte_2015_PM10$Date <- parse_date_time(butte_2015_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
butte_2015_PM10 <- separate(butte_2015_PM10,Date, c("year","month","date"), sep = "-")
butte_2015_PM10 <- aggregate(butte_2015_PM10[, c(4,5,7,8)], list(butte_2015_PM10$year,butte_2015_PM10$COUNTY), mean)
colnames(butte_2015_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#butte 2015 all pollutant data
butte_2015 <- cbind(butte_2015_co,butte_2015_NO2$NO2_concentration_value,butte_2015_NO2$NO2_AQI,butte_2015_O$O3_concentration_value,butte_2015_O$O3_AQI,butte_2015_PM2.5$PM2.5_concentration_value,butte_2015_PM2.5$PM2.5_AQI,butte_2015_PM10$PM10_concentration_value,butte_2015_PM10$PM10_AQI)
butte_2015 <- butte_2015[c(1:4,7:14,5,6)]
colnames(butte_2015) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#-------------------------------------------------------------------------------------------------------
#butte 2016 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/butte/2016")
butte_2016_co <- read.csv("butte_2016_CO.csv", header=T, na.strings=c(""), stringsAsFactors = T)
butte_2016_co <- butte_2016_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
butte_2016_co$Date <- parse_date_time(butte_2016_co$Date, c("%m-%d-%y", "%m/%d/%y"))
butte_2016_co <- separate(butte_2016_co,Date, c("year","month","date"), sep = "-")
butte_2016_co <- aggregate(butte_2016_co[, c(4,5,7,8)], list(butte_2016_co$year,butte_2016_co$COUNTY), mean)
colnames(butte_2016_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#butte 2016 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/butte/2016")
butte_2016_NO2 <- read.csv("butte_2016_NO2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
butte_2016_NO2 <- butte_2016_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
butte_2016_NO2$Date <- parse_date_time(butte_2016_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
butte_2016_NO2 <- separate(butte_2016_NO2,Date, c("year","month","date"), sep = "-")
butte_2016_NO2 <- aggregate(butte_2016_NO2[, c(4,5,7,8)], list(butte_2016_NO2$year,butte_2016_NO2$COUNTY), mean)
colnames(butte_2016_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#butte 2016 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/butte/2016")
butte_2016_O <- read.csv("butte_2016_O.csv", header=T, na.strings=c(""), stringsAsFactors = T)
butte_2016_O <- butte_2016_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
butte_2016_O$Date <- parse_date_time(butte_2016_O$Date, c("%m-%d-%y", "%m/%d/%y"))
butte_2016_O <- separate(butte_2016_O,Date, c("year","month","date"), sep = "-")
butte_2016_O <- aggregate(butte_2016_O[, c(4,5,7,8)], list(butte_2016_O$year,butte_2016_O$COUNTY), mean)
colnames(butte_2016_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#butte 2016 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/butte/2016")
butte_2016_PM2.5 <- read.csv("butte_2016_PM2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
butte_2016_PM2.5 <- butte_2016_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
butte_2016_PM2.5$Date <- parse_date_time(butte_2016_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
butte_2016_PM2.5 <- separate(butte_2016_PM2.5,Date, c("year","month","date"), sep = "-")
butte_2016_PM2.5 <- aggregate(butte_2016_PM2.5[, c(4,5,7,8)], list(butte_2016_PM2.5$year,butte_2016_PM2.5$COUNTY), mean)
colnames(butte_2016_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#butte 2016 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/butte/2016")
butte_2016_PM10 <- read.csv("butte_2016_PM10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
butte_2016_PM10 <- butte_2016_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
butte_2016_PM10$Date <- parse_date_time(butte_2016_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
butte_2016_PM10 <- separate(butte_2016_PM10,Date, c("year","month","date"), sep = "-")
butte_2016_PM10 <- aggregate(butte_2016_PM10[, c(4,5,7,8)], list(butte_2016_PM10$year,butte_2016_PM10$COUNTY), mean)
colnames(butte_2016_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#butte 2016 all pollutant data
butte_2016 <- cbind(butte_2016_co,butte_2016_NO2$NO2_concentration_value,butte_2016_NO2$NO2_AQI,butte_2016_O$O3_concentration_value,butte_2016_O$O3_AQI,butte_2016_PM2.5$PM2.5_concentration_value,butte_2016_PM2.5$PM2.5_AQI,butte_2016_PM10$PM10_concentration_value,butte_2016_PM10$PM10_AQI)
butte_2016 <- butte_2016[c(1:4,7:14,5,6)]
colnames(butte_2016) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#----------------------------------------------------------------------------------------------------------
#butte 2017 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/butte/2017")
butte_2017_co <- read.csv("butte_2017_CO.csv", header=T, na.strings=c(""), stringsAsFactors = T)
butte_2017_co <- butte_2017_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
butte_2017_co$Date <- parse_date_time(butte_2017_co$Date, c("%m-%d-%y", "%m/%d/%y"))
butte_2017_co <- separate(butte_2017_co,Date, c("year","month","date"), sep = "-")
butte_2017_co <- aggregate(butte_2017_co[, c(4,5,7,8)], list(butte_2017_co$year,butte_2017_co$COUNTY), mean)
colnames(butte_2017_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#butte 2017 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/butte/2017")
butte_2017_NO2 <- read.csv("butte_2017_NO2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
butte_2017_NO2 <- butte_2017_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
butte_2017_NO2$Date <- parse_date_time(butte_2017_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
butte_2017_NO2 <- separate(butte_2017_NO2,Date, c("year","month","date"), sep = "-")
butte_2017_NO2 <- aggregate(butte_2017_NO2[, c(4,5,7,8)], list(butte_2017_NO2$year,butte_2017_NO2$COUNTY), mean)
colnames(butte_2017_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#butte 2017 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/butte/2017")
butte_2017_O <- read.csv("butte_2017_O.csv", header=T, na.strings=c(""), stringsAsFactors = T)
butte_2017_O <- butte_2017_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
butte_2017_O$Date <- parse_date_time(butte_2017_O$Date, c("%m-%d-%y", "%m/%d/%y"))
butte_2017_O <- separate(butte_2017_O,Date, c("year","month","date"), sep = "-")
butte_2017_O <- aggregate(butte_2017_O[, c(4,5,7,8)], list(butte_2017_O$year,butte_2017_O$COUNTY), mean)
colnames(butte_2017_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#butte 2017 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/butte/2017")
butte_2017_PM2.5 <- read.csv("butte_2017_PM2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
butte_2017_PM2.5 <- butte_2017_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
butte_2017_PM2.5$Date <- parse_date_time(butte_2017_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
butte_2017_PM2.5 <- separate(butte_2017_PM2.5,Date, c("year","month","date"), sep = "-")
butte_2017_PM2.5 <- aggregate(butte_2017_PM2.5[, c(4,5,7,8)], list(butte_2017_PM2.5$year,butte_2017_PM2.5$COUNTY), mean)
colnames(butte_2017_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#butte 2017 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/butte/2017")
butte_2017_PM10 <- read.csv("butte_2017_PM10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
butte_2017_PM10 <- butte_2017_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
butte_2017_PM10$Date <- parse_date_time(butte_2017_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
butte_2017_PM10 <- separate(butte_2017_PM10,Date, c("year","month","date"), sep = "-")
butte_2017_PM10 <- aggregate(butte_2017_PM10[, c(4,5,7,8)], list(butte_2017_PM10$year,butte_2017_PM10$COUNTY), mean)
colnames(butte_2017_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#butte 2017 all pollutant data
butte_2017 <- cbind(butte_2017_co,butte_2017_NO2$NO2_concentration_value,butte_2017_NO2$NO2_AQI,butte_2017_O$O3_concentration_value,butte_2017_O$O3_AQI,butte_2017_PM2.5$PM2.5_concentration_value,butte_2017_PM2.5$PM2.5_AQI,butte_2017_PM10$PM10_concentration_value,butte_2017_PM10$PM10_AQI)
butte_2017 <- butte_2017[c(1:4,7:14,5,6)]
colnames(butte_2017) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#--------------------------------------------------------------------------------------------------------
#butte final data
butte <- rbind(butte_2011,butte_2012,butte_2013,butte_2014,butte_2015,butte_2016,butte_2017)
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/FINAL_DATASETS")
write.csv(butte, file = "butte.csv")


