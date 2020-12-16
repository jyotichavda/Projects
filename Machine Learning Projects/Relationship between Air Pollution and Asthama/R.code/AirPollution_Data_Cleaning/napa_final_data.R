#napa 2011 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/napa/2011")
napa_2011_co <- read.csv("co.csv", header=T, na.strings=c(""), stringsAsFactors = T)
napa_2011_co <- napa_2011_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
napa_2011_co$Date <- parse_date_time(napa_2011_co$Date, c("%m-%d-%y", "%m/%d/%y"))
napa_2011_co <- separate(napa_2011_co,Date, c("year","month","date"), sep = "-")
napa_2011_co <- aggregate(napa_2011_co[, c(4,5,7,8)], list(napa_2011_co$year,napa_2011_co$COUNTY), mean)
colnames(napa_2011_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#napa 2011 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/napa/2011")
napa_2011_NO2 <- read.csv("no2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
napa_2011_NO2 <- napa_2011_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
napa_2011_NO2$Date <- parse_date_time(napa_2011_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
napa_2011_NO2 <- separate(napa_2011_NO2,Date, c("year","month","date"), sep = "-")
napa_2011_NO2 <- aggregate(napa_2011_NO2[, c(4,5,7,8)], list(napa_2011_NO2$year,napa_2011_NO2$COUNTY), mean)
colnames(napa_2011_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#napa 2011 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/napa/2011")
napa_2011_O <- read.csv("o.csv", header=T, na.strings=c(""), stringsAsFactors = T)
napa_2011_O <- napa_2011_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
napa_2011_O$Date <- parse_date_time(napa_2011_O$Date, c("%m-%d-%y", "%m/%d/%y"))
napa_2011_O <- separate(napa_2011_O,Date, c("year","month","date"), sep = "-")
napa_2011_O <- aggregate(napa_2011_O[, c(4,5,7,8)], list(napa_2011_O$year,napa_2011_O$COUNTY), mean)
colnames(napa_2011_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#napa 2011 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/napa/2011")
napa_2011_PM2.5 <- read.csv("pm2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
napa_2011_PM2.5 <- napa_2011_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
napa_2011_PM2.5$Date <- parse_date_time(napa_2011_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
napa_2011_PM2.5 <- separate(napa_2011_PM2.5,Date, c("year","month","date"), sep = "-")
napa_2011_PM2.5 <- aggregate(napa_2011_PM2.5[, c(4,5,7,8)], list(napa_2011_PM2.5$year,napa_2011_PM2.5$COUNTY), mean)
colnames(napa_2011_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#napa 2011 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/napa/2011")
napa_2011_PM10 <- read.csv("pm10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
napa_2011_PM10 <- napa_2011_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
napa_2011_PM10$Date <- parse_date_time(napa_2011_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
napa_2011_PM10 <- separate(napa_2011_PM10,Date, c("year","month","date"), sep = "-")
napa_2011_PM10 <- aggregate(napa_2011_PM10[, c(4,5,7,8)], list(napa_2011_PM10$year,napa_2011_PM10$COUNTY), mean)
colnames(napa_2011_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#napa 2011 all pollutant data
napa_2011 <- cbind(napa_2011_co,napa_2011_NO2$NO2_concentration_value,napa_2011_NO2$NO2_AQI,napa_2011_O$O3_concentration_value,napa_2011_O$O3_AQI,napa_2011_PM2.5$PM2.5_concentration_value,napa_2011_PM2.5$PM2.5_AQI,napa_2011_PM10$PM10_concentration_value,napa_2011_PM10$PM10_AQI)
napa_2011 <- napa_2011[c(1:4,7:14,5,6)]
colnames(napa_2011) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#---------------------------------------------------------------------------------------------------
#napa 2012 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/napa/2012")
napa_2012_co <- read.csv("co.csv", header=T, na.strings=c(""), stringsAsFactors = T)
napa_2012_co <- napa_2012_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
napa_2012_co$Date <- parse_date_time(napa_2012_co$Date, c("%m-%d-%y", "%m/%d/%y"))
napa_2012_co <- separate(napa_2012_co,Date, c("year","month","date"), sep = "-")
napa_2012_co <- aggregate(napa_2012_co[, c(4,5,7,8)], list(napa_2012_co$year,napa_2012_co$COUNTY), mean)
colnames(napa_2012_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#napa 2012 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/napa/2012")
napa_2012_NO2 <- read.csv("no2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
napa_2012_NO2 <- napa_2012_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
napa_2012_NO2$Date <- parse_date_time(napa_2012_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
napa_2012_NO2 <- separate(napa_2012_NO2,Date, c("year","month","date"), sep = "-")
napa_2012_NO2 <- aggregate(napa_2012_NO2[, c(4,5,7,8)], list(napa_2012_NO2$year,napa_2012_NO2$COUNTY), mean)
colnames(napa_2012_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#napa 2012 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/napa/2012")
napa_2012_O <- read.csv("o.csv", header=T, na.strings=c(""), stringsAsFactors = T)
napa_2012_O <- napa_2012_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
napa_2012_O$Date <- parse_date_time(napa_2012_O$Date, c("%m-%d-%y", "%m/%d/%y"))
napa_2012_O <- separate(napa_2012_O,Date, c("year","month","date"), sep = "-")
napa_2012_O <- aggregate(napa_2012_O[, c(4,5,7,8)], list(napa_2012_O$year,napa_2012_O$COUNTY), mean)
colnames(napa_2012_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#napa 2012 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/napa/2012")
napa_2012_PM2.5 <- read.csv("pm2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
napa_2012_PM2.5 <- napa_2012_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
napa_2012_PM2.5$Date <- parse_date_time(napa_2012_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
napa_2012_PM2.5 <- separate(napa_2012_PM2.5,Date, c("year","month","date"), sep = "-")
napa_2012_PM2.5 <- aggregate(napa_2012_PM2.5[, c(4,5,7,8)], list(napa_2012_PM2.5$year,napa_2012_PM2.5$COUNTY), mean)
colnames(napa_2012_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#napa 2012 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/napa/2012")
napa_2012_PM10 <- read.csv("pm10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
napa_2012_PM10 <- napa_2012_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
napa_2012_PM10$Date <- parse_date_time(napa_2012_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
napa_2012_PM10 <- separate(napa_2012_PM10,Date, c("year","month","date"), sep = "-")
napa_2012_PM10 <- aggregate(napa_2012_PM10[, c(4,5,7,8)], list(napa_2012_PM10$year,napa_2012_PM10$COUNTY), mean)
colnames(napa_2012_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#napa 2012 all pollutant data
napa_2012 <- cbind(napa_2012_co,napa_2012_NO2$NO2_concentration_value,napa_2012_NO2$NO2_AQI,napa_2012_O$O3_concentration_value,napa_2012_O$O3_AQI,napa_2012_PM2.5$PM2.5_concentration_value,napa_2012_PM2.5$PM2.5_AQI,napa_2012_PM10$PM10_concentration_value,napa_2012_PM10$PM10_AQI)
napa_2012 <- napa_2012[c(1:4,7:14,5,6)]
colnames(napa_2012) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#-------------------------------------------------------------------------------------------------------
#napa 2013 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/napa/2013")
napa_2013_co <- read.csv("co.csv", header=T, na.strings=c(""), stringsAsFactors = T)
napa_2013_co <- napa_2013_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
napa_2013_co$Date <- parse_date_time(napa_2013_co$Date, c("%m-%d-%y", "%m/%d/%y"))
napa_2013_co <- separate(napa_2013_co,Date, c("year","month","date"), sep = "-")
napa_2013_co <- aggregate(napa_2013_co[, c(4,5,7,8)], list(napa_2013_co$year,napa_2013_co$COUNTY), mean)
colnames(napa_2013_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#napa 2013 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/napa/2013")
napa_2013_NO2 <- read.csv("no2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
napa_2013_NO2 <- napa_2013_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
napa_2013_NO2$Date <- parse_date_time(napa_2013_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
napa_2013_NO2 <- separate(napa_2013_NO2,Date, c("year","month","date"), sep = "-")
napa_2013_NO2 <- aggregate(napa_2013_NO2[, c(4,5,7,8)], list(napa_2013_NO2$year,napa_2013_NO2$COUNTY), mean)
colnames(napa_2013_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#napa 2013 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/napa/2013")
napa_2013_O <- read.csv("O.csv", header=T, na.strings=c(""), stringsAsFactors = T)
napa_2013_O <- napa_2013_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
napa_2013_O$Date <- parse_date_time(napa_2013_O$Date, c("%m-%d-%y", "%m/%d/%y"))
napa_2013_O <- separate(napa_2013_O,Date, c("year","month","date"), sep = "-")
napa_2013_O <- aggregate(napa_2013_O[, c(4,5,7,8)], list(napa_2013_O$year,napa_2013_O$COUNTY), mean)
colnames(napa_2013_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#napa 2013 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/napa/2013")
napa_2013_PM2.5 <- read.csv("pm2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
napa_2013_PM2.5 <- napa_2013_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
napa_2013_PM2.5$Date <- parse_date_time(napa_2013_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
napa_2013_PM2.5 <- separate(napa_2013_PM2.5,Date, c("year","month","date"), sep = "-")
napa_2013_PM2.5 <- aggregate(napa_2013_PM2.5[, c(4,5,7,8)], list(napa_2013_PM2.5$year,napa_2013_PM2.5$COUNTY), mean)
colnames(napa_2013_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#napa 2013 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/napa/2013")
napa_2013_PM10 <- read.csv("pm10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
napa_2013_PM10 <- napa_2013_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
napa_2013_PM10$Date <- parse_date_time(napa_2013_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
napa_2013_PM10 <- separate(napa_2013_PM10,Date, c("year","month","date"), sep = "-")
napa_2013_PM10 <- aggregate(napa_2013_PM10[, c(4,5,7,8)], list(napa_2013_PM10$year,napa_2013_PM10$COUNTY), mean)
colnames(napa_2013_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#napa 2013 all pollutant data
napa_2013 <- cbind(napa_2013_co,napa_2013_NO2$NO2_concentration_value,napa_2013_NO2$NO2_AQI,napa_2013_O$O3_concentration_value,napa_2013_O$O3_AQI,napa_2013_PM2.5$PM2.5_concentration_value,napa_2013_PM2.5$PM2.5_AQI,napa_2013_PM10$PM10_concentration_value,napa_2013_PM10$PM10_AQI)
napa_2013 <- napa_2013[c(1:4,7:14,5,6)]
colnames(napa_2013) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#-------------------------------------------------------------------------------------------------------------
#napa 2014 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/napa/2014")
napa_2014_co <- read.csv("co.csv", header=T, na.strings=c(""), stringsAsFactors = T)
napa_2014_co <- napa_2014_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
napa_2014_co$Date <- parse_date_time(napa_2014_co$Date, c("%m-%d-%y", "%m/%d/%y"))
napa_2014_co <- separate(napa_2014_co,Date, c("year","month","date"), sep = "-")
napa_2014_co <- aggregate(napa_2014_co[, c(4,5,7,8)], list(napa_2014_co$year,napa_2014_co$COUNTY), mean)
colnames(napa_2014_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#napa 2014 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/napa/2014")
napa_2014_NO2 <- read.csv("no2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
napa_2014_NO2 <- napa_2014_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
napa_2014_NO2$Date <- parse_date_time(napa_2014_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
napa_2014_NO2 <- separate(napa_2014_NO2,Date, c("year","month","date"), sep = "-")
napa_2014_NO2 <- aggregate(napa_2014_NO2[, c(4,5,7,8)], list(napa_2014_NO2$year,napa_2014_NO2$COUNTY), mean)
colnames(napa_2014_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#napa 2014 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/napa/2014")
napa_2014_O <- read.csv("o.csv", header=T, na.strings=c(""), stringsAsFactors = T)
napa_2014_O <- napa_2014_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
napa_2014_O$Date <- parse_date_time(napa_2014_O$Date, c("%m-%d-%y", "%m/%d/%y"))
napa_2014_O <- separate(napa_2014_O,Date, c("year","month","date"), sep = "-")
napa_2014_O <- aggregate(napa_2014_O[, c(4,5,7,8)], list(napa_2014_O$year,napa_2014_O$COUNTY), mean)
colnames(napa_2014_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#napa 2014 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/napa/2014")
napa_2014_PM2.5 <- read.csv("pm2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
napa_2014_PM2.5 <- napa_2014_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
napa_2014_PM2.5$Date <- parse_date_time(napa_2014_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
napa_2014_PM2.5 <- separate(napa_2014_PM2.5,Date, c("year","month","date"), sep = "-")
napa_2014_PM2.5 <- aggregate(napa_2014_PM2.5[, c(4,5,7,8)], list(napa_2014_PM2.5$year,napa_2014_PM2.5$COUNTY), mean)
colnames(napa_2014_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#napa 2014 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/napa/2014")
napa_2014_PM10 <- read.csv("pm10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
napa_2014_PM10 <- napa_2014_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
napa_2014_PM10$Date <- parse_date_time(napa_2014_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
napa_2014_PM10 <- separate(napa_2014_PM10,Date, c("year","month","date"), sep = "-")
napa_2014_PM10 <- aggregate(napa_2014_PM10[, c(4,5,7,8)], list(napa_2014_PM10$year,napa_2014_PM10$COUNTY), mean)
colnames(napa_2014_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#napa 2014 all pollutant data
napa_2014 <- cbind(napa_2014_co,napa_2014_NO2$NO2_concentration_value,napa_2014_NO2$NO2_AQI,napa_2014_O$O3_concentration_value,napa_2014_O$O3_AQI,napa_2014_PM2.5$PM2.5_concentration_value,napa_2014_PM2.5$PM2.5_AQI,napa_2014_PM10$PM10_concentration_value,napa_2014_PM10$PM10_AQI)
napa_2014 <- napa_2014[c(1:4,7:14,5,6)]
colnames(napa_2014) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#----------------------------------------------------------------------------------------------------------------------

#napa 2015 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/napa/2015")
napa_2015_co <- read.csv("co.csv", header=T, na.strings=c(""), stringsAsFactors = T)
napa_2015_co <- napa_2015_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
napa_2015_co$Date <- parse_date_time(napa_2015_co$Date, c("%m-%d-%y", "%m/%d/%y"))
napa_2015_co <- separate(napa_2015_co,Date, c("year","month","date"), sep = "-")
napa_2015_co <- aggregate(napa_2015_co[, c(4,5,7,8)], list(napa_2015_co$year,napa_2015_co$COUNTY), mean)
colnames(napa_2015_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#napa 2015 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/napa/2015")
napa_2015_NO2 <- read.csv("no2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
napa_2015_NO2 <- napa_2015_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
napa_2015_NO2$Date <- parse_date_time(napa_2015_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
napa_2015_NO2 <- separate(napa_2015_NO2,Date, c("year","month","date"), sep = "-")
napa_2015_NO2 <- aggregate(napa_2015_NO2[, c(4,5,7,8)], list(napa_2015_NO2$year,napa_2015_NO2$COUNTY), mean)
colnames(napa_2015_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#napa 2015 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/napa/2015")
napa_2015_O <- read.csv("o.csv", header=T, na.strings=c(""), stringsAsFactors = T)
napa_2015_O <- napa_2015_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
napa_2015_O$Date <- parse_date_time(napa_2015_O$Date, c("%m-%d-%y", "%m/%d/%y"))
napa_2015_O <- separate(napa_2015_O,Date, c("year","month","date"), sep = "-")
napa_2015_O <- aggregate(napa_2015_O[, c(4,5,7,8)], list(napa_2015_O$year,napa_2015_O$COUNTY), mean)
colnames(napa_2015_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#napa 2015 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/napa/2015")
napa_2015_PM2.5 <- read.csv("pm2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
napa_2015_PM2.5 <- napa_2015_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
napa_2015_PM2.5$Date <- parse_date_time(napa_2015_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
napa_2015_PM2.5 <- separate(napa_2015_PM2.5,Date, c("year","month","date"), sep = "-")
napa_2015_PM2.5 <- aggregate(napa_2015_PM2.5[, c(4,5,7,8)], list(napa_2015_PM2.5$year,napa_2015_PM2.5$COUNTY), mean)
colnames(napa_2015_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#napa 2015 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/napa/2015")
napa_2015_PM10 <- read.csv("pm10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
napa_2015_PM10 <- napa_2015_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
napa_2015_PM10$Date <- parse_date_time(napa_2015_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
napa_2015_PM10 <- separate(napa_2015_PM10,Date, c("year","month","date"), sep = "-")
napa_2015_PM10 <- aggregate(napa_2015_PM10[, c(4,5,7,8)], list(napa_2015_PM10$year,napa_2015_PM10$COUNTY), mean)
colnames(napa_2015_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#napa 2015 all pollutant data
napa_2015 <- cbind(napa_2015_co,napa_2015_NO2$NO2_concentration_value,napa_2015_NO2$NO2_AQI,napa_2015_O$O3_concentration_value,napa_2015_O$O3_AQI,napa_2015_PM2.5$PM2.5_concentration_value,napa_2015_PM2.5$PM2.5_AQI,napa_2015_PM10$PM10_concentration_value,napa_2015_PM10$PM10_AQI)
napa_2015 <- napa_2015[c(1:4,7:14,5,6)]
colnames(napa_2015) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#-------------------------------------------------------------------------------------------------------
#napa 2016 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/napa/2016")
napa_2016_co <- read.csv("co.csv", header=T, na.strings=c(""), stringsAsFactors = T)
napa_2016_co <- napa_2016_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
napa_2016_co$Date <- parse_date_time(napa_2016_co$Date, c("%m-%d-%y", "%m/%d/%y"))
napa_2016_co <- separate(napa_2016_co,Date, c("year","month","date"), sep = "-")
napa_2016_co <- aggregate(napa_2016_co[, c(4,5,7,8)], list(napa_2016_co$year,napa_2016_co$COUNTY), mean)
colnames(napa_2016_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#napa 2016 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/napa/2016")
napa_2016_NO2 <- read.csv("no2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
napa_2016_NO2 <- napa_2016_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
napa_2016_NO2$Date <- parse_date_time(napa_2016_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
napa_2016_NO2 <- separate(napa_2016_NO2,Date, c("year","month","date"), sep = "-")
napa_2016_NO2 <- aggregate(napa_2016_NO2[, c(4,5,7,8)], list(napa_2016_NO2$year,napa_2016_NO2$COUNTY), mean)
colnames(napa_2016_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#napa 2016 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/napa/2016")
napa_2016_O <- read.csv("o.csv", header=T, na.strings=c(""), stringsAsFactors = T)
napa_2016_O <- napa_2016_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
napa_2016_O$Date <- parse_date_time(napa_2016_O$Date, c("%m-%d-%y", "%m/%d/%y"))
napa_2016_O <- separate(napa_2016_O,Date, c("year","month","date"), sep = "-")
napa_2016_O <- aggregate(napa_2016_O[, c(4,5,7,8)], list(napa_2016_O$year,napa_2016_O$COUNTY), mean)
colnames(napa_2016_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#napa 2016 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/napa/2016")
napa_2016_PM2.5 <- read.csv("pm2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
napa_2016_PM2.5 <- napa_2016_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
napa_2016_PM2.5$Date <- parse_date_time(napa_2016_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
napa_2016_PM2.5 <- separate(napa_2016_PM2.5,Date, c("year","month","date"), sep = "-")
napa_2016_PM2.5 <- aggregate(napa_2016_PM2.5[, c(4,5,7,8)], list(napa_2016_PM2.5$year,napa_2016_PM2.5$COUNTY), mean)
colnames(napa_2016_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#napa 2016 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/napa/2016")
napa_2016_PM10 <- read.csv("pm10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
napa_2016_PM10 <- napa_2016_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
napa_2016_PM10$Date <- parse_date_time(napa_2016_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
napa_2016_PM10 <- separate(napa_2016_PM10,Date, c("year","month","date"), sep = "-")
napa_2016_PM10 <- aggregate(napa_2016_PM10[, c(4,5,7,8)], list(napa_2016_PM10$year,napa_2016_PM10$COUNTY), mean)
colnames(napa_2016_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#napa 2016 all pollutant data
napa_2016 <- cbind(napa_2016_co,napa_2016_NO2$NO2_concentration_value,napa_2016_NO2$NO2_AQI,napa_2016_O$O3_concentration_value,napa_2016_O$O3_AQI,napa_2016_PM2.5$PM2.5_concentration_value,napa_2016_PM2.5$PM2.5_AQI,napa_2016_PM10$PM10_concentration_value,napa_2016_PM10$PM10_AQI)
napa_2016 <- napa_2016[c(1:4,7:14,5,6)]
colnames(napa_2016) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#----------------------------------------------------------------------------------------------------------
#napa 2017 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/napa/2017")
napa_2017_co <- read.csv("co.csv", header=T, na.strings=c(""), stringsAsFactors = T)
napa_2017_co <- napa_2017_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
napa_2017_co$Date <- parse_date_time(napa_2017_co$Date, c("%m-%d-%y", "%m/%d/%y"))
napa_2017_co <- separate(napa_2017_co,Date, c("year","month","date"), sep = "-")
napa_2017_co <- aggregate(napa_2017_co[, c(4,5,7,8)], list(napa_2017_co$year,napa_2017_co$COUNTY), mean)
colnames(napa_2017_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#napa 2017 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/napa/2017")
napa_2017_NO2 <- read.csv("no2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
napa_2017_NO2 <- napa_2017_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
napa_2017_NO2$Date <- parse_date_time(napa_2017_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
napa_2017_NO2 <- separate(napa_2017_NO2,Date, c("year","month","date"), sep = "-")
napa_2017_NO2 <- aggregate(napa_2017_NO2[, c(4,5,7,8)], list(napa_2017_NO2$year,napa_2017_NO2$COUNTY), mean)
colnames(napa_2017_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#napa 2017 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/napa/2017")
napa_2017_O <- read.csv("o.csv", header=T, na.strings=c(""), stringsAsFactors = T)
napa_2017_O <- napa_2017_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
napa_2017_O$Date <- parse_date_time(napa_2017_O$Date, c("%m-%d-%y", "%m/%d/%y"))
napa_2017_O <- separate(napa_2017_O,Date, c("year","month","date"), sep = "-")
napa_2017_O <- aggregate(napa_2017_O[, c(4,5,7,8)], list(napa_2017_O$year,napa_2017_O$COUNTY), mean)
colnames(napa_2017_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#napa 2017 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/napa/2017")
napa_2017_PM2.5 <- read.csv("pm2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
napa_2017_PM2.5 <- napa_2017_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
napa_2017_PM2.5$Date <- parse_date_time(napa_2017_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
napa_2017_PM2.5 <- separate(napa_2017_PM2.5,Date, c("year","month","date"), sep = "-")
napa_2017_PM2.5 <- aggregate(napa_2017_PM2.5[, c(4,5,7,8)], list(napa_2017_PM2.5$year,napa_2017_PM2.5$COUNTY), mean)
colnames(napa_2017_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#napa 2017 PM10
#setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/napa/2017")
#napa_2017_PM10 <- read.csv("pm10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
#napa_2017_PM10 <- napa_2017_PM10[ ,-c(2,3,4,6,8:17)]
#library(lubridate)
#napa_2017_PM10$Date <- parse_date_time(napa_2017_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
#napa_2017_PM10 <- separate(napa_2017_PM10,Date, c("year","month","date"), sep = "-")
#napa_2017_PM10 <- aggregate(napa_2017_PM10[, c(4,5,7,8)], list(napa_2017_PM10$year,napa_2017_PM10$COUNTY), mean)
#colnames(napa_2017_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#napa 2017 all pollutant data
#napa_2017 <- cbind(napa_2017_co,napa_2017_NO2$NO2_concentration_value,napa_2017_NO2$NO2_AQI,napa_2017_O$O3_concentration_value,napa_2017_O$O3_AQI,napa_2017_PM2.5$PM2.5_concentration_value,napa_2017_PM2.5$PM2.5_AQI)
#napa_2017 <- napa_2017[c(1:4,7:14,5,6)]
#colnames(napa_2017) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#--------------------------------------------------------------------------------------------------------
#napa final data
napa <- rbind(napa_2011,napa_2012,napa_2013,napa_2014,napa_2015,napa_2016)
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/FINAL_DATASETS")
write.csv(napa, file = "napa.csv")