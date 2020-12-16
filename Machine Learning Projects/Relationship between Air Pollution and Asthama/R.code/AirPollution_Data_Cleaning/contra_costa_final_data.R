#conta_costa 2011 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/conta_costa/2011")
conta_costa_2011_co <- read.csv("conta_costa_2011_CO.csv", header=T, na.strings=c(""), stringsAsFactors = T)
conta_costa_2011_co <- conta_costa_2011_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
conta_costa_2011_co$Date <- parse_date_time(conta_costa_2011_co$Date, c("%m-%d-%y", "%m/%d/%y"))
conta_costa_2011_co <- separate(conta_costa_2011_co,Date, c("year","month","date"), sep = "-")
conta_costa_2011_co <- aggregate(conta_costa_2011_co[, c(4,5,7,8)], list(conta_costa_2011_co$year,conta_costa_2011_co$COUNTY), mean)
colnames(conta_costa_2011_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#conta_costa 2011 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/conta_costa/2011")
conta_costa_2011_NO2 <- read.csv("conta_costa_2011_NO2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
conta_costa_2011_NO2 <- conta_costa_2011_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
conta_costa_2011_NO2$Date <- parse_date_time(conta_costa_2011_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
conta_costa_2011_NO2 <- separate(conta_costa_2011_NO2,Date, c("year","month","date"), sep = "-")
conta_costa_2011_NO2 <- aggregate(conta_costa_2011_NO2[, c(4,5,7,8)], list(conta_costa_2011_NO2$year,conta_costa_2011_NO2$COUNTY), mean)
colnames(conta_costa_2011_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#conta_costa 2011 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/conta_costa/2011")
conta_costa_2011_O <- read.csv("conta_costa_2011_O.csv", header=T, na.strings=c(""), stringsAsFactors = T)
conta_costa_2011_O <- conta_costa_2011_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
conta_costa_2011_O$Date <- parse_date_time(conta_costa_2011_O$Date, c("%m-%d-%y", "%m/%d/%y"))
conta_costa_2011_O <- separate(conta_costa_2011_O,Date, c("year","month","date"), sep = "-")
conta_costa_2011_O <- aggregate(conta_costa_2011_O[, c(4,5,7,8)], list(conta_costa_2011_O$year,conta_costa_2011_O$COUNTY), mean)
colnames(conta_costa_2011_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#conta_costa 2011 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/conta_costa/2011")
conta_costa_2011_PM2.5 <- read.csv("pm2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
conta_costa_2011_PM2.5 <- conta_costa_2011_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
conta_costa_2011_PM2.5$Date <- parse_date_time(conta_costa_2011_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
conta_costa_2011_PM2.5 <- separate(conta_costa_2011_PM2.5,Date, c("year","month","date"), sep = "-")
conta_costa_2011_PM2.5 <- aggregate(conta_costa_2011_PM2.5[, c(4,5,7,8)], list(conta_costa_2011_PM2.5$year,conta_costa_2011_PM2.5$COUNTY), mean)
colnames(conta_costa_2011_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#conta_costa 2011 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/conta_costa/2011")
conta_costa_2011_PM10 <- read.csv("pm10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
conta_costa_2011_PM10 <- conta_costa_2011_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
conta_costa_2011_PM10$Date <- parse_date_time(conta_costa_2011_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
conta_costa_2011_PM10 <- separate(conta_costa_2011_PM10,Date, c("year","month","date"), sep = "-")
conta_costa_2011_PM10 <- aggregate(conta_costa_2011_PM10[, c(4,5,7,8)], list(conta_costa_2011_PM10$year,conta_costa_2011_PM10$COUNTY), mean)
colnames(conta_costa_2011_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#conta_costa 2011 all pollutant data
conta_costa_2011 <- cbind(conta_costa_2011_co,conta_costa_2011_NO2$NO2_concentration_value,conta_costa_2011_NO2$NO2_AQI,conta_costa_2011_O$O3_concentration_value,conta_costa_2011_O$O3_AQI,conta_costa_2011_PM2.5$PM2.5_concentration_value,conta_costa_2011_PM2.5$PM2.5_AQI,conta_costa_2011_PM10$PM10_concentration_value,conta_costa_2011_PM10$PM10_AQI)
conta_costa_2011 <- conta_costa_2011[c(1:4,7:14,5,6)]
colnames(conta_costa_2011) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#---------------------------------------------------------------------------------------------------
#conta_costa 2012 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/conta_costa/2012")
conta_costa_2012_co <- read.csv("conta_costa_2012_CO.csv", header=T, na.strings=c(""), stringsAsFactors = T)
conta_costa_2012_co <- conta_costa_2012_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
conta_costa_2012_co$Date <- parse_date_time(conta_costa_2012_co$Date, c("%m-%d-%y", "%m/%d/%y"))
conta_costa_2012_co <- separate(conta_costa_2012_co,Date, c("year","month","date"), sep = "-")
conta_costa_2012_co <- aggregate(conta_costa_2012_co[, c(4,5,7,8)], list(conta_costa_2012_co$year,conta_costa_2012_co$COUNTY), mean)
colnames(conta_costa_2012_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#conta_costa 2012 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/conta_costa/2012")
conta_costa_2012_NO2 <- read.csv("conta_costa_2012_NO2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
conta_costa_2012_NO2 <- conta_costa_2012_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
conta_costa_2012_NO2$Date <- parse_date_time(conta_costa_2012_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
conta_costa_2012_NO2 <- separate(conta_costa_2012_NO2,Date, c("year","month","date"), sep = "-")
conta_costa_2012_NO2 <- aggregate(conta_costa_2012_NO2[, c(4,5,7,8)], list(conta_costa_2012_NO2$year,conta_costa_2012_NO2$COUNTY), mean)
colnames(conta_costa_2012_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#conta_costa 2012 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/conta_costa/2012")
conta_costa_2012_O <- read.csv("conta_costa_2012_O.csv", header=T, na.strings=c(""), stringsAsFactors = T)
conta_costa_2012_O <- conta_costa_2012_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
conta_costa_2012_O$Date <- parse_date_time(conta_costa_2012_O$Date, c("%m-%d-%y", "%m/%d/%y"))
conta_costa_2012_O <- separate(conta_costa_2012_O,Date, c("year","month","date"), sep = "-")
conta_costa_2012_O <- aggregate(conta_costa_2012_O[, c(4,5,7,8)], list(conta_costa_2012_O$year,conta_costa_2012_O$COUNTY), mean)
colnames(conta_costa_2012_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#conta_costa 2012 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/conta_costa/2012")
conta_costa_2012_PM2.5 <- read.csv("pm2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
conta_costa_2012_PM2.5 <- conta_costa_2012_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
conta_costa_2012_PM2.5$Date <- parse_date_time(conta_costa_2012_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
conta_costa_2012_PM2.5 <- separate(conta_costa_2012_PM2.5,Date, c("year","month","date"), sep = "-")
conta_costa_2012_PM2.5 <- aggregate(conta_costa_2012_PM2.5[, c(4,5,7,8)], list(conta_costa_2012_PM2.5$year,conta_costa_2012_PM2.5$COUNTY), mean)
colnames(conta_costa_2012_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#conta_costa 2012 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/conta_costa/2012")
conta_costa_2012_PM10 <- read.csv("pm10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
conta_costa_2012_PM10 <- conta_costa_2012_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
conta_costa_2012_PM10$Date <- parse_date_time(conta_costa_2012_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
conta_costa_2012_PM10 <- separate(conta_costa_2012_PM10,Date, c("year","month","date"), sep = "-")
conta_costa_2012_PM10 <- aggregate(conta_costa_2012_PM10[, c(4,5,7,8)], list(conta_costa_2012_PM10$year,conta_costa_2012_PM10$COUNTY), mean)
colnames(conta_costa_2012_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#conta_costa 2012 all pollutant data
conta_costa_2012 <- cbind(conta_costa_2012_co,conta_costa_2012_NO2$NO2_concentration_value,conta_costa_2012_NO2$NO2_AQI,conta_costa_2012_O$O3_concentration_value,conta_costa_2012_O$O3_AQI,conta_costa_2012_PM2.5$PM2.5_concentration_value,conta_costa_2012_PM2.5$PM2.5_AQI,conta_costa_2012_PM10$PM10_concentration_value,conta_costa_2012_PM10$PM10_AQI)
conta_costa_2012 <- conta_costa_2012[c(1:4,7:14,5,6)]
colnames(conta_costa_2012) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#-------------------------------------------------------------------------------------------------------
#conta_costa 2013 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/conta_costa/2013")
conta_costa_2013_co <- read.csv("conta_costa_2013_CO.csv", header=T, na.strings=c(""), stringsAsFactors = T)
conta_costa_2013_co <- conta_costa_2013_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
conta_costa_2013_co$Date <- parse_date_time(conta_costa_2013_co$Date, c("%m-%d-%y", "%m/%d/%y"))
conta_costa_2013_co <- separate(conta_costa_2013_co,Date, c("year","month","date"), sep = "-")
conta_costa_2013_co <- aggregate(conta_costa_2013_co[, c(4,5,7,8)], list(conta_costa_2013_co$year,conta_costa_2013_co$COUNTY), mean)
colnames(conta_costa_2013_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#conta_costa 2013 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/conta_costa/2013")
conta_costa_2013_NO2 <- read.csv("conta_costa_2013_NO2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
conta_costa_2013_NO2 <- conta_costa_2013_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
conta_costa_2013_NO2$Date <- parse_date_time(conta_costa_2013_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
conta_costa_2013_NO2 <- separate(conta_costa_2013_NO2,Date, c("year","month","date"), sep = "-")
conta_costa_2013_NO2 <- aggregate(conta_costa_2013_NO2[, c(4,5,7,8)], list(conta_costa_2013_NO2$year,conta_costa_2013_NO2$COUNTY), mean)
colnames(conta_costa_2013_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#conta_costa 2013 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/conta_costa/2013")
conta_costa_2013_O <- read.csv("conta_costa_2013_O.csv", header=T, na.strings=c(""), stringsAsFactors = T)
conta_costa_2013_O <- conta_costa_2013_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
conta_costa_2013_O$Date <- parse_date_time(conta_costa_2013_O$Date, c("%m-%d-%y", "%m/%d/%y"))
conta_costa_2013_O <- separate(conta_costa_2013_O,Date, c("year","month","date"), sep = "-")
conta_costa_2013_O <- aggregate(conta_costa_2013_O[, c(4,5,7,8)], list(conta_costa_2013_O$year,conta_costa_2013_O$COUNTY), mean)
colnames(conta_costa_2013_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#conta_costa 2013 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/conta_costa/2013")
conta_costa_2013_PM2.5 <- read.csv("pm2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
conta_costa_2013_PM2.5 <- conta_costa_2013_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
conta_costa_2013_PM2.5$Date <- parse_date_time(conta_costa_2013_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
conta_costa_2013_PM2.5 <- separate(conta_costa_2013_PM2.5,Date, c("year","month","date"), sep = "-")
conta_costa_2013_PM2.5 <- aggregate(conta_costa_2013_PM2.5[, c(4,5,7,8)], list(conta_costa_2013_PM2.5$year,conta_costa_2013_PM2.5$COUNTY), mean)
colnames(conta_costa_2013_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#conta_costa 2013 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/conta_costa/2013")
conta_costa_2013_PM10 <- read.csv("pm10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
conta_costa_2013_PM10 <- conta_costa_2013_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
conta_costa_2013_PM10$Date <- parse_date_time(conta_costa_2013_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
conta_costa_2013_PM10 <- separate(conta_costa_2013_PM10,Date, c("year","month","date"), sep = "-")
conta_costa_2013_PM10 <- aggregate(conta_costa_2013_PM10[, c(4,5,7,8)], list(conta_costa_2013_PM10$year,conta_costa_2013_PM10$COUNTY), mean)
colnames(conta_costa_2013_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#conta_costa 2013 all pollutant data
conta_costa_2013 <- cbind(conta_costa_2013_co,conta_costa_2013_NO2$NO2_concentration_value,conta_costa_2013_NO2$NO2_AQI,conta_costa_2013_O$O3_concentration_value,conta_costa_2013_O$O3_AQI,conta_costa_2013_PM2.5$PM2.5_concentration_value,conta_costa_2013_PM2.5$PM2.5_AQI,conta_costa_2013_PM10$PM10_concentration_value,conta_costa_2013_PM10$PM10_AQI)
conta_costa_2013 <- conta_costa_2013[c(1:4,7:14,5,6)]
colnames(conta_costa_2013) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#-------------------------------------------------------------------------------------------------------------
#conta_costa 2014 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/conta_costa/2014")
conta_costa_2014_co <- read.csv("conta_costa_2014_CO.csv", header=T, na.strings=c(""), stringsAsFactors = T)
conta_costa_2014_co <- conta_costa_2014_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
conta_costa_2014_co$Date <- parse_date_time(conta_costa_2014_co$Date, c("%m-%d-%y", "%m/%d/%y"))
conta_costa_2014_co <- separate(conta_costa_2014_co,Date, c("year","month","date"), sep = "-")
conta_costa_2014_co <- aggregate(conta_costa_2014_co[, c(4,5,7,8)], list(conta_costa_2014_co$year,conta_costa_2014_co$COUNTY), mean)
colnames(conta_costa_2014_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#conta_costa 2014 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/conta_costa/2014")
conta_costa_2014_NO2 <- read.csv("conta_costa_2014_NO2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
conta_costa_2014_NO2 <- conta_costa_2014_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
conta_costa_2014_NO2$Date <- parse_date_time(conta_costa_2014_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
conta_costa_2014_NO2 <- separate(conta_costa_2014_NO2,Date, c("year","month","date"), sep = "-")
conta_costa_2014_NO2 <- aggregate(conta_costa_2014_NO2[, c(4,5,7,8)], list(conta_costa_2014_NO2$year,conta_costa_2014_NO2$COUNTY), mean)
colnames(conta_costa_2014_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#conta_costa 2014 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/conta_costa/2014")
conta_costa_2014_O <- read.csv("conta_costa_2014_O.csv", header=T, na.strings=c(""), stringsAsFactors = T)
conta_costa_2014_O <- conta_costa_2014_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
conta_costa_2014_O$Date <- parse_date_time(conta_costa_2014_O$Date, c("%m-%d-%y", "%m/%d/%y"))
conta_costa_2014_O <- separate(conta_costa_2014_O,Date, c("year","month","date"), sep = "-")
conta_costa_2014_O <- aggregate(conta_costa_2014_O[, c(4,5,7,8)], list(conta_costa_2014_O$year,conta_costa_2014_O$COUNTY), mean)
colnames(conta_costa_2014_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#conta_costa 2014 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/conta_costa/2014")
conta_costa_2014_PM2.5 <- read.csv("pm2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
conta_costa_2014_PM2.5 <- conta_costa_2014_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
conta_costa_2014_PM2.5$Date <- parse_date_time(conta_costa_2014_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
conta_costa_2014_PM2.5 <- separate(conta_costa_2014_PM2.5,Date, c("year","month","date"), sep = "-")
conta_costa_2014_PM2.5 <- aggregate(conta_costa_2014_PM2.5[, c(4,5,7,8)], list(conta_costa_2014_PM2.5$year,conta_costa_2014_PM2.5$COUNTY), mean)
colnames(conta_costa_2014_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#conta_costa 2014 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/conta_costa/2014")
conta_costa_2014_PM10 <- read.csv("pm10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
conta_costa_2014_PM10 <- conta_costa_2014_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
conta_costa_2014_PM10$Date <- parse_date_time(conta_costa_2014_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
conta_costa_2014_PM10 <- separate(conta_costa_2014_PM10,Date, c("year","month","date"), sep = "-")
conta_costa_2014_PM10 <- aggregate(conta_costa_2014_PM10[, c(4,5,7,8)], list(conta_costa_2014_PM10$year,conta_costa_2014_PM10$COUNTY), mean)
colnames(conta_costa_2014_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#conta_costa 2014 all pollutant data
conta_costa_2014 <- cbind(conta_costa_2014_co,conta_costa_2014_NO2$NO2_concentration_value,conta_costa_2014_NO2$NO2_AQI,conta_costa_2014_O$O3_concentration_value,conta_costa_2014_O$O3_AQI,conta_costa_2014_PM2.5$PM2.5_concentration_value,conta_costa_2014_PM2.5$PM2.5_AQI,conta_costa_2014_PM10$PM10_concentration_value,conta_costa_2014_PM10$PM10_AQI)
conta_costa_2014 <- conta_costa_2014[c(1:4,7:14,5,6)]
colnames(conta_costa_2014) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#----------------------------------------------------------------------------------------------------------------------

#conta_costa 2015 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/conta_costa/2015")
conta_costa_2015_co <- read.csv("conta_costa_2015_CO.csv", header=T, na.strings=c(""), stringsAsFactors = T)
conta_costa_2015_co <- conta_costa_2015_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
conta_costa_2015_co$Date <- parse_date_time(conta_costa_2015_co$Date, c("%m-%d-%y", "%m/%d/%y"))
conta_costa_2015_co <- separate(conta_costa_2015_co,Date, c("year","month","date"), sep = "-")
conta_costa_2015_co <- aggregate(conta_costa_2015_co[, c(4,5,7,8)], list(conta_costa_2015_co$year,conta_costa_2015_co$COUNTY), mean)
colnames(conta_costa_2015_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#conta_costa 2015 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/conta_costa/2015")
conta_costa_2015_NO2 <- read.csv("conta_costa_2015_NO2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
conta_costa_2015_NO2 <- conta_costa_2015_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
conta_costa_2015_NO2$Date <- parse_date_time(conta_costa_2015_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
conta_costa_2015_NO2 <- separate(conta_costa_2015_NO2,Date, c("year","month","date"), sep = "-")
conta_costa_2015_NO2 <- aggregate(conta_costa_2015_NO2[, c(4,5,7,8)], list(conta_costa_2015_NO2$year,conta_costa_2015_NO2$COUNTY), mean)
colnames(conta_costa_2015_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#conta_costa 2015 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/conta_costa/2015")
conta_costa_2015_O <- read.csv("conta_costa_2015_O.csv", header=T, na.strings=c(""), stringsAsFactors = T)
conta_costa_2015_O <- conta_costa_2015_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
conta_costa_2015_O$Date <- parse_date_time(conta_costa_2015_O$Date, c("%m-%d-%y", "%m/%d/%y"))
conta_costa_2015_O <- separate(conta_costa_2015_O,Date, c("year","month","date"), sep = "-")
conta_costa_2015_O <- aggregate(conta_costa_2015_O[, c(4,5,7,8)], list(conta_costa_2015_O$year,conta_costa_2015_O$COUNTY), mean)
colnames(conta_costa_2015_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#conta_costa 2015 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/conta_costa/2015")
conta_costa_2015_PM2.5 <- read.csv("pm2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
conta_costa_2015_PM2.5 <- conta_costa_2015_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
conta_costa_2015_PM2.5$Date <- parse_date_time(conta_costa_2015_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
conta_costa_2015_PM2.5 <- separate(conta_costa_2015_PM2.5,Date, c("year","month","date"), sep = "-")
conta_costa_2015_PM2.5 <- aggregate(conta_costa_2015_PM2.5[, c(4,5,7,8)], list(conta_costa_2015_PM2.5$year,conta_costa_2015_PM2.5$COUNTY), mean)
colnames(conta_costa_2015_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#conta_costa 2015 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/conta_costa/2015")
conta_costa_2015_PM10 <- read.csv("pm10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
conta_costa_2015_PM10 <- conta_costa_2015_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
conta_costa_2015_PM10$Date <- parse_date_time(conta_costa_2015_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
conta_costa_2015_PM10 <- separate(conta_costa_2015_PM10,Date, c("year","month","date"), sep = "-")
conta_costa_2015_PM10 <- aggregate(conta_costa_2015_PM10[, c(4,5,7,8)], list(conta_costa_2015_PM10$year,conta_costa_2015_PM10$COUNTY), mean)
colnames(conta_costa_2015_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#conta_costa 2015 all pollutant data
conta_costa_2015 <- cbind(conta_costa_2015_co,conta_costa_2015_NO2$NO2_concentration_value,conta_costa_2015_NO2$NO2_AQI,conta_costa_2015_O$O3_concentration_value,conta_costa_2015_O$O3_AQI,conta_costa_2015_PM2.5$PM2.5_concentration_value,conta_costa_2015_PM2.5$PM2.5_AQI,conta_costa_2015_PM10$PM10_concentration_value,conta_costa_2015_PM10$PM10_AQI)
conta_costa_2015 <- conta_costa_2015[c(1:4,7:14,5,6)]
colnames(conta_costa_2015) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#-------------------------------------------------------------------------------------------------------
#conta_costa 2016 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/conta_costa/2016")
conta_costa_2016_co <- read.csv("conta_costa_2016_CO.csv", header=T, na.strings=c(""), stringsAsFactors = T)
conta_costa_2016_co <- conta_costa_2016_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
conta_costa_2016_co$Date <- parse_date_time(conta_costa_2016_co$Date, c("%m-%d-%y", "%m/%d/%y"))
conta_costa_2016_co <- separate(conta_costa_2016_co,Date, c("year","month","date"), sep = "-")
conta_costa_2016_co <- aggregate(conta_costa_2016_co[, c(4,5,7,8)], list(conta_costa_2016_co$year,conta_costa_2016_co$COUNTY), mean)
colnames(conta_costa_2016_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#conta_costa 2016 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/conta_costa/2016")
conta_costa_2016_NO2 <- read.csv("conta_costa_2016_NO2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
conta_costa_2016_NO2 <- conta_costa_2016_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
conta_costa_2016_NO2$Date <- parse_date_time(conta_costa_2016_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
conta_costa_2016_NO2 <- separate(conta_costa_2016_NO2,Date, c("year","month","date"), sep = "-")
conta_costa_2016_NO2 <- aggregate(conta_costa_2016_NO2[, c(4,5,7,8)], list(conta_costa_2016_NO2$year,conta_costa_2016_NO2$COUNTY), mean)
colnames(conta_costa_2016_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#conta_costa 2016 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/conta_costa/2016")
conta_costa_2016_O <- read.csv("conta_costa_2016_O.csv", header=T, na.strings=c(""), stringsAsFactors = T)
conta_costa_2016_O <- conta_costa_2016_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
conta_costa_2016_O$Date <- parse_date_time(conta_costa_2016_O$Date, c("%m-%d-%y", "%m/%d/%y"))
conta_costa_2016_O <- separate(conta_costa_2016_O,Date, c("year","month","date"), sep = "-")
conta_costa_2016_O <- aggregate(conta_costa_2016_O[, c(4,5,7,8)], list(conta_costa_2016_O$year,conta_costa_2016_O$COUNTY), mean)
colnames(conta_costa_2016_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#conta_costa 2016 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/conta_costa/2016")
conta_costa_2016_PM2.5 <- read.csv("pm2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
conta_costa_2016_PM2.5 <- conta_costa_2016_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
conta_costa_2016_PM2.5$Date <- parse_date_time(conta_costa_2016_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
conta_costa_2016_PM2.5 <- separate(conta_costa_2016_PM2.5,Date, c("year","month","date"), sep = "-")
conta_costa_2016_PM2.5 <- aggregate(conta_costa_2016_PM2.5[, c(4,5,7,8)], list(conta_costa_2016_PM2.5$year,conta_costa_2016_PM2.5$COUNTY), mean)
colnames(conta_costa_2016_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#conta_costa 2016 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/conta_costa/2016")
conta_costa_2016_PM10 <- read.csv("conta_costa_2016_PM10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
conta_costa_2016_PM10 <- conta_costa_2016_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
conta_costa_2016_PM10$Date <- parse_date_time(conta_costa_2016_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
conta_costa_2016_PM10 <- separate(conta_costa_2016_PM10,Date, c("year","month","date"), sep = "-")
conta_costa_2016_PM10 <- aggregate(conta_costa_2016_PM10[, c(4,5,7,8)], list(conta_costa_2016_PM10$year,conta_costa_2016_PM10$COUNTY), mean)
colnames(conta_costa_2016_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#conta_costa 2016 all pollutant data
conta_costa_2016 <- cbind(conta_costa_2016_co,conta_costa_2016_NO2$NO2_concentration_value,conta_costa_2016_NO2$NO2_AQI,conta_costa_2016_O$O3_concentration_value,conta_costa_2016_O$O3_AQI,conta_costa_2016_PM2.5$PM2.5_concentration_value,conta_costa_2016_PM2.5$PM2.5_AQI,conta_costa_2016_PM10$PM10_concentration_value,conta_costa_2016_PM10$PM10_AQI)
conta_costa_2016 <- conta_costa_2016[c(1:4,7:14,5,6)]
colnames(conta_costa_2016) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#----------------------------------------------------------------------------------------------------------
#conta_costa 2017 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/conta_costa/2017")
conta_costa_2017_co <- read.csv("conta_costa_2017_CO.csv", header=T, na.strings=c(""), stringsAsFactors = T)
conta_costa_2017_co <- conta_costa_2017_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
conta_costa_2017_co$Date <- parse_date_time(conta_costa_2017_co$Date, c("%m-%d-%y", "%m/%d/%y"))
conta_costa_2017_co <- separate(conta_costa_2017_co,Date, c("year","month","date"), sep = "-")
conta_costa_2017_co <- aggregate(conta_costa_2017_co[, c(4,5,7,8)], list(conta_costa_2017_co$year,conta_costa_2017_co$COUNTY), mean)
colnames(conta_costa_2017_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#conta_costa 2017 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/conta_costa/2017")
conta_costa_2017_NO2 <- read.csv("conta_costa_2017_NO2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
conta_costa_2017_NO2 <- conta_costa_2017_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
conta_costa_2017_NO2$Date <- parse_date_time(conta_costa_2017_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
conta_costa_2017_NO2 <- separate(conta_costa_2017_NO2,Date, c("year","month","date"), sep = "-")
conta_costa_2017_NO2 <- aggregate(conta_costa_2017_NO2[, c(4,5,7,8)], list(conta_costa_2017_NO2$year,conta_costa_2017_NO2$COUNTY), mean)
colnames(conta_costa_2017_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#conta_costa 2017 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/conta_costa/2017")
conta_costa_2017_O <- read.csv("conta_costa_2017_O.csv", header=T, na.strings=c(""), stringsAsFactors = T)
conta_costa_2017_O <- conta_costa_2017_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
conta_costa_2017_O$Date <- parse_date_time(conta_costa_2017_O$Date, c("%m-%d-%y", "%m/%d/%y"))
conta_costa_2017_O <- separate(conta_costa_2017_O,Date, c("year","month","date"), sep = "-")
conta_costa_2017_O <- aggregate(conta_costa_2017_O[, c(4,5,7,8)], list(conta_costa_2017_O$year,conta_costa_2017_O$COUNTY), mean)
colnames(conta_costa_2017_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#conta_costa 2017 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/conta_costa/2017")
conta_costa_2017_PM2.5 <- read.csv("pm2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
conta_costa_2017_PM2.5 <- conta_costa_2017_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
conta_costa_2017_PM2.5$Date <- parse_date_time(conta_costa_2017_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
conta_costa_2017_PM2.5 <- separate(conta_costa_2017_PM2.5,Date, c("year","month","date"), sep = "-")
conta_costa_2017_PM2.5 <- aggregate(conta_costa_2017_PM2.5[, c(4,5,7,8)], list(conta_costa_2017_PM2.5$year,conta_costa_2017_PM2.5$COUNTY), mean)
colnames(conta_costa_2017_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#conta_costa 2017 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/conta_costa/2017")
conta_costa_2017_PM10 <- read.csv("conta_costa_2016_PM10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
conta_costa_2017_PM10 <- conta_costa_2017_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
conta_costa_2017_PM10$Date <- parse_date_time(conta_costa_2017_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
conta_costa_2017_PM10 <- separate(conta_costa_2017_PM10,Date, c("year","month","date"), sep = "-")
conta_costa_2017_PM10 <- aggregate(conta_costa_2017_PM10[, c(4,5,7,8)], list(conta_costa_2017_PM10$year,conta_costa_2017_PM10$COUNTY), mean)
colnames(conta_costa_2017_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#conta_costa 2017 all pollutant data
conta_costa_2017 <- cbind(conta_costa_2017_co,conta_costa_2017_NO2$NO2_concentration_value,conta_costa_2017_NO2$NO2_AQI,conta_costa_2017_O$O3_concentration_value,conta_costa_2017_O$O3_AQI,conta_costa_2017_PM2.5$PM2.5_concentration_value,conta_costa_2017_PM2.5$PM2.5_AQI,conta_costa_2017_PM10$PM10_concentration_value,conta_costa_2017_PM10$PM10_AQI)
conta_costa_2017 <- conta_costa_2017[c(1:4,7:14,5,6)]
colnames(conta_costa_2017) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#--------------------------------------------------------------------------------------------------------
#conta_costa final data
conta_costa <- rbind(conta_costa_2011,conta_costa_2012,conta_costa_2013,conta_costa_2014,conta_costa_2015,conta_costa_2016,conta_costa_2017)
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/FINAL_DATASETS")
write.csv(conta_costa, file = "conta_costa.csv")
