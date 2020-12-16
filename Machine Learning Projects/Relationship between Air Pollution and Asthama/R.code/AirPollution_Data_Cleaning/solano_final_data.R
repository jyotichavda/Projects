#solano 2011 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/solano/2011")
solano_2011_co <- read.csv("2011solanoCO.csv", header=T, na.strings=c(""), stringsAsFactors = T)
solano_2011_co <- solano_2011_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
solano_2011_co$Date <- parse_date_time(solano_2011_co$Date, c("%m-%d-%y", "%m/%d/%y"))
solano_2011_co <- separate(solano_2011_co,Date, c("year","month","date"), sep = "-")
solano_2011_co <- aggregate(solano_2011_co[, c(4,5,7,8)], list(solano_2011_co$year,solano_2011_co$COUNTY), mean)
colnames(solano_2011_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#solano 2011 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/solano/2011")
solano_2011_NO2 <- read.csv("2011solanoNO2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
solano_2011_NO2 <- solano_2011_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
solano_2011_NO2$Date <- parse_date_time(solano_2011_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
solano_2011_NO2 <- separate(solano_2011_NO2,Date, c("year","month","date"), sep = "-")
solano_2011_NO2 <- aggregate(solano_2011_NO2[, c(4,5,7,8)], list(solano_2011_NO2$year,solano_2011_NO2$COUNTY), mean)
colnames(solano_2011_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#solano 2011 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/solano/2011")
solano_2011_O <- read.csv("2011solanoozone.csv", header=T, na.strings=c(""), stringsAsFactors = T)
solano_2011_O <- solano_2011_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
solano_2011_O$Date <- parse_date_time(solano_2011_O$Date, c("%m-%d-%y", "%m/%d/%y"))
solano_2011_O <- separate(solano_2011_O,Date, c("year","month","date"), sep = "-")
solano_2011_O <- aggregate(solano_2011_O[, c(4,5,7,8)], list(solano_2011_O$year,solano_2011_O$COUNTY), mean)
colnames(solano_2011_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#solano 2011 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/solano/2011")
solano_2011_PM2.5 <- read.csv("2011solanoPM2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
solano_2011_PM2.5 <- solano_2011_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
solano_2011_PM2.5$Date <- parse_date_time(solano_2011_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
solano_2011_PM2.5 <- separate(solano_2011_PM2.5,Date, c("year","month","date"), sep = "-")
solano_2011_PM2.5 <- aggregate(solano_2011_PM2.5[, c(4,5,7,8)], list(solano_2011_PM2.5$year,solano_2011_PM2.5$COUNTY), mean)
colnames(solano_2011_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#solano 2011 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/solano/2011")
solano_2011_PM10 <- read.csv("2011solanoPM10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
solano_2011_PM10 <- solano_2011_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
solano_2011_PM10$Date <- parse_date_time(solano_2011_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
solano_2011_PM10 <- separate(solano_2011_PM10,Date, c("year","month","date"), sep = "-")
solano_2011_PM10 <- aggregate(solano_2011_PM10[, c(4,5,7,8)], list(solano_2011_PM10$year,solano_2011_PM10$COUNTY), mean)
colnames(solano_2011_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#solano 2011 all pollutant data
solano_2011 <- cbind(solano_2011_co,solano_2011_NO2$NO2_concentration_value,solano_2011_NO2$NO2_AQI,solano_2011_O$O3_concentration_value,solano_2011_O$O3_AQI,solano_2011_PM2.5$PM2.5_concentration_value,solano_2011_PM2.5$PM2.5_AQI,solano_2011_PM10$PM10_concentration_value,solano_2011_PM10$PM10_AQI)
solano_2011 <- solano_2011[c(1:4,7:14,5,6)]
colnames(solano_2011) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#---------------------------------------------------------------------------------------------------
#solano 2012 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/solano/2012")
solano_2012_co <- read.csv("2012solanoCO.csv", header=T, na.strings=c(""), stringsAsFactors = T)
solano_2012_co <- solano_2012_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
solano_2012_co$Date <- parse_date_time(solano_2012_co$Date, c("%m-%d-%y", "%m/%d/%y"))
solano_2012_co <- separate(solano_2012_co,Date, c("year","month","date"), sep = "-")
solano_2012_co <- aggregate(solano_2012_co[, c(4,5,7,8)], list(solano_2012_co$year,solano_2012_co$COUNTY), mean)
colnames(solano_2012_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#solano 2012 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/solano/2012")
solano_2012_NO2 <- read.csv("2012solanoNO2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
solano_2012_NO2 <- solano_2012_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
solano_2012_NO2$Date <- parse_date_time(solano_2012_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
solano_2012_NO2 <- separate(solano_2012_NO2,Date, c("year","month","date"), sep = "-")
solano_2012_NO2 <- aggregate(solano_2012_NO2[, c(4,5,7,8)], list(solano_2012_NO2$year,solano_2012_NO2$COUNTY), mean)
colnames(solano_2012_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#solano 2012 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/solano/2012")
solano_2012_O <- read.csv("2012solanoozone.csv", header=T, na.strings=c(""), stringsAsFactors = T)
solano_2012_O <- solano_2012_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
solano_2012_O$Date <- parse_date_time(solano_2012_O$Date, c("%m-%d-%y", "%m/%d/%y"))
solano_2012_O <- separate(solano_2012_O,Date, c("year","month","date"), sep = "-")
solano_2012_O <- aggregate(solano_2012_O[, c(4,5,7,8)], list(solano_2012_O$year,solano_2012_O$COUNTY), mean)
colnames(solano_2012_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#solano 2012 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/solano/2012")
solano_2012_PM2.5 <- read.csv("2012solanoPM2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
solano_2012_PM2.5 <- solano_2012_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
solano_2012_PM2.5$Date <- parse_date_time(solano_2012_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
solano_2012_PM2.5 <- separate(solano_2012_PM2.5,Date, c("year","month","date"), sep = "-")
solano_2012_PM2.5 <- aggregate(solano_2012_PM2.5[, c(4,5,7,8)], list(solano_2012_PM2.5$year,solano_2012_PM2.5$COUNTY), mean)
colnames(solano_2012_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#solano 2012 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/solano/2012")
solano_2012_PM10 <- read.csv("2012solanoPM10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
solano_2012_PM10 <- solano_2012_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
solano_2012_PM10$Date <- parse_date_time(solano_2012_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
solano_2012_PM10 <- separate(solano_2012_PM10,Date, c("year","month","date"), sep = "-")
solano_2012_PM10 <- aggregate(solano_2012_PM10[, c(4,5,7,8)], list(solano_2012_PM10$year,solano_2012_PM10$COUNTY), mean)
colnames(solano_2012_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#solano 2012 all pollutant data
solano_2012 <- cbind(solano_2012_co,solano_2012_NO2$NO2_concentration_value,solano_2012_NO2$NO2_AQI,solano_2012_O$O3_concentration_value,solano_2012_O$O3_AQI,solano_2012_PM2.5$PM2.5_concentration_value,solano_2012_PM2.5$PM2.5_AQI,solano_2012_PM10$PM10_concentration_value,solano_2012_PM10$PM10_AQI)
solano_2012 <- solano_2012[c(1:4,7:14,5,6)]
colnames(solano_2012) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#-------------------------------------------------------------------------------------------------------
#solano 2013 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/solano/2013")
solano_2013_co <- read.csv("2013solanoCO.csv", header=T, na.strings=c(""), stringsAsFactors = T)
solano_2013_co <- solano_2013_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
solano_2013_co$Date <- parse_date_time(solano_2013_co$Date, c("%m-%d-%y", "%m/%d/%y"))
solano_2013_co <- separate(solano_2013_co,Date, c("year","month","date"), sep = "-")
solano_2013_co <- aggregate(solano_2013_co[, c(4,5,7,8)], list(solano_2013_co$year,solano_2013_co$COUNTY), mean)
colnames(solano_2013_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#solano 2013 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/solano/2013")
solano_2013_NO2 <- read.csv("2013solanoNO2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
solano_2013_NO2 <- solano_2013_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
solano_2013_NO2$Date <- parse_date_time(solano_2013_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
solano_2013_NO2 <- separate(solano_2013_NO2,Date, c("year","month","date"), sep = "-")
solano_2013_NO2 <- aggregate(solano_2013_NO2[, c(4,5,7,8)], list(solano_2013_NO2$year,solano_2013_NO2$COUNTY), mean)
colnames(solano_2013_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#solano 2013 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/solano/2013")
solano_2013_O <- read.csv("2013solanoozone.csv", header=T, na.strings=c(""), stringsAsFactors = T)
solano_2013_O <- solano_2013_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
solano_2013_O$Date <- parse_date_time(solano_2013_O$Date, c("%m-%d-%y", "%m/%d/%y"))
solano_2013_O <- separate(solano_2013_O,Date, c("year","month","date"), sep = "-")
solano_2013_O <- aggregate(solano_2013_O[, c(4,5,7,8)], list(solano_2013_O$year,solano_2013_O$COUNTY), mean)
colnames(solano_2013_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#solano 2013 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/solano/2013")
solano_2013_PM2.5 <- read.csv("2013solanoPM2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
solano_2013_PM2.5 <- solano_2013_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
solano_2013_PM2.5$Date <- parse_date_time(solano_2013_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
solano_2013_PM2.5 <- separate(solano_2013_PM2.5,Date, c("year","month","date"), sep = "-")
solano_2013_PM2.5 <- aggregate(solano_2013_PM2.5[, c(4,5,7,8)], list(solano_2013_PM2.5$year,solano_2013_PM2.5$COUNTY), mean)
colnames(solano_2013_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#solano 2013 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/solano/2013")
solano_2013_PM10 <- read.csv("2013solanoPM10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
solano_2013_PM10 <- solano_2013_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
solano_2013_PM10$Date <- parse_date_time(solano_2013_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
solano_2013_PM10 <- separate(solano_2013_PM10,Date, c("year","month","date"), sep = "-")
solano_2013_PM10 <- aggregate(solano_2013_PM10[, c(4,5,7,8)], list(solano_2013_PM10$year,solano_2013_PM10$COUNTY), mean)
colnames(solano_2013_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#solano 2013 all pollutant data
solano_2013 <- cbind(solano_2013_co,solano_2013_NO2$NO2_concentration_value,solano_2013_NO2$NO2_AQI,solano_2013_O$O3_concentration_value,solano_2013_O$O3_AQI,solano_2013_PM2.5$PM2.5_concentration_value,solano_2013_PM2.5$PM2.5_AQI,solano_2013_PM10$PM10_concentration_value,solano_2013_PM10$PM10_AQI)
solano_2013 <- solano_2013[c(1:4,7:14,5,6)]
colnames(solano_2013) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#-------------------------------------------------------------------------------------------------------------
#solano 2014 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/solano/2014")
solano_2014_co <- read.csv("2014solanoCO.csv", header=T, na.strings=c(""), stringsAsFactors = T)
solano_2014_co <- solano_2014_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
solano_2014_co$Date <- parse_date_time(solano_2014_co$Date, c("%m-%d-%y", "%m/%d/%y"))
solano_2014_co <- separate(solano_2014_co,Date, c("year","month","date"), sep = "-")
solano_2014_co <- aggregate(solano_2014_co[, c(4,5,7,8)], list(solano_2014_co$year,solano_2014_co$COUNTY), mean)
colnames(solano_2014_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#solano 2014 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/solano/2014")
solano_2014_NO2 <- read.csv("2014solanoNO2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
solano_2014_NO2 <- solano_2014_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
solano_2014_NO2$Date <- parse_date_time(solano_2014_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
solano_2014_NO2 <- separate(solano_2014_NO2,Date, c("year","month","date"), sep = "-")
solano_2014_NO2 <- aggregate(solano_2014_NO2[, c(4,5,7,8)], list(solano_2014_NO2$year,solano_2014_NO2$COUNTY), mean)
colnames(solano_2014_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#solano 2014 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/solano/2014")
solano_2014_O <- read.csv("2014solanoozone.csv", header=T, na.strings=c(""), stringsAsFactors = T)
solano_2014_O <- solano_2014_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
solano_2014_O$Date <- parse_date_time(solano_2014_O$Date, c("%m-%d-%y", "%m/%d/%y"))
solano_2014_O <- separate(solano_2014_O,Date, c("year","month","date"), sep = "-")
solano_2014_O <- aggregate(solano_2014_O[, c(4,5,7,8)], list(solano_2014_O$year,solano_2014_O$COUNTY), mean)
colnames(solano_2014_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#solano 2014 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/solano/2014")
solano_2014_PM2.5 <- read.csv("2014solanoPM2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
solano_2014_PM2.5 <- solano_2014_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
solano_2014_PM2.5$Date <- parse_date_time(solano_2014_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
solano_2014_PM2.5 <- separate(solano_2014_PM2.5,Date, c("year","month","date"), sep = "-")
solano_2014_PM2.5 <- aggregate(solano_2014_PM2.5[, c(4,5,7,8)], list(solano_2014_PM2.5$year,solano_2014_PM2.5$COUNTY), mean)
colnames(solano_2014_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#solano 2014 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/solano/2014")
solano_2014_PM10 <- read.csv("2014solanoPM10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
solano_2014_PM10 <- solano_2014_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
solano_2014_PM10$Date <- parse_date_time(solano_2014_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
solano_2014_PM10 <- separate(solano_2014_PM10,Date, c("year","month","date"), sep = "-")
solano_2014_PM10 <- aggregate(solano_2014_PM10[, c(4,5,7,8)], list(solano_2014_PM10$year,solano_2014_PM10$COUNTY), mean)
colnames(solano_2014_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#solano 2014 all pollutant data
solano_2014 <- cbind(solano_2014_co,solano_2014_NO2$NO2_concentration_value,solano_2014_NO2$NO2_AQI,solano_2014_O$O3_concentration_value,solano_2014_O$O3_AQI,solano_2014_PM2.5$PM2.5_concentration_value,solano_2014_PM2.5$PM2.5_AQI,solano_2014_PM10$PM10_concentration_value,solano_2014_PM10$PM10_AQI)
solano_2014 <- solano_2014[c(1:4,7:14,5,6)]
colnames(solano_2014) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#----------------------------------------------------------------------------------------------------------------------

#solano 2015 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/solano/2015")
solano_2015_co <- read.csv("2015solanoCO.csv", header=T, na.strings=c(""), stringsAsFactors = T)
solano_2015_co <- solano_2015_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
solano_2015_co$Date <- parse_date_time(solano_2015_co$Date, c("%m-%d-%y", "%m/%d/%y"))
solano_2015_co <- separate(solano_2015_co,Date, c("year","month","date"), sep = "-")
solano_2015_co <- aggregate(solano_2015_co[, c(4,5,7,8)], list(solano_2015_co$year,solano_2015_co$COUNTY), mean)
colnames(solano_2015_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#solano 2015 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/solano/2015")
solano_2015_NO2 <- read.csv("2015solanoNO2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
solano_2015_NO2 <- solano_2015_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
solano_2015_NO2$Date <- parse_date_time(solano_2015_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
solano_2015_NO2 <- separate(solano_2015_NO2,Date, c("year","month","date"), sep = "-")
solano_2015_NO2 <- aggregate(solano_2015_NO2[, c(4,5,7,8)], list(solano_2015_NO2$year,solano_2015_NO2$COUNTY), mean)
colnames(solano_2015_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#solano 2015 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/solano/2015")
solano_2015_O <- read.csv("2015solanoozone.csv", header=T, na.strings=c(""), stringsAsFactors = T)
solano_2015_O <- solano_2015_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
solano_2015_O$Date <- parse_date_time(solano_2015_O$Date, c("%m-%d-%y", "%m/%d/%y"))
solano_2015_O <- separate(solano_2015_O,Date, c("year","month","date"), sep = "-")
solano_2015_O <- aggregate(solano_2015_O[, c(4,5,7,8)], list(solano_2015_O$year,solano_2015_O$COUNTY), mean)
colnames(solano_2015_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#solano 2015 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/solano/2015")
solano_2015_PM2.5 <- read.csv("2015solanoPM2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
solano_2015_PM2.5 <- solano_2015_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
solano_2015_PM2.5$Date <- parse_date_time(solano_2015_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
solano_2015_PM2.5 <- separate(solano_2015_PM2.5,Date, c("year","month","date"), sep = "-")
solano_2015_PM2.5 <- aggregate(solano_2015_PM2.5[, c(4,5,7,8)], list(solano_2015_PM2.5$year,solano_2015_PM2.5$COUNTY), mean)
colnames(solano_2015_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#solano 2015 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/solano/2015")
solano_2015_PM10 <- read.csv("2015solanoPM10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
solano_2015_PM10 <- solano_2015_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
solano_2015_PM10$Date <- parse_date_time(solano_2015_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
solano_2015_PM10 <- separate(solano_2015_PM10,Date, c("year","month","date"), sep = "-")
solano_2015_PM10 <- aggregate(solano_2015_PM10[, c(4,5,7,8)], list(solano_2015_PM10$year,solano_2015_PM10$COUNTY), mean)
colnames(solano_2015_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#solano 2015 all pollutant data
solano_2015 <- cbind(solano_2015_co,solano_2015_NO2$NO2_concentration_value,solano_2015_NO2$NO2_AQI,solano_2015_O$O3_concentration_value,solano_2015_O$O3_AQI,solano_2015_PM2.5$PM2.5_concentration_value,solano_2015_PM2.5$PM2.5_AQI,solano_2015_PM10$PM10_concentration_value,solano_2015_PM10$PM10_AQI)
solano_2015 <- solano_2015[c(1:4,7:14,5,6)]
colnames(solano_2015) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#-------------------------------------------------------------------------------------------------------
#solano 2016 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/solano/2016")
solano_2016_co <- read.csv("2016solanoCO.csv", header=T, na.strings=c(""), stringsAsFactors = T)
solano_2016_co <- solano_2016_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
solano_2016_co$Date <- parse_date_time(solano_2016_co$Date, c("%m-%d-%y", "%m/%d/%y"))
solano_2016_co <- separate(solano_2016_co,Date, c("year","month","date"), sep = "-")
solano_2016_co <- aggregate(solano_2016_co[, c(4,5,7,8)], list(solano_2016_co$year,solano_2016_co$COUNTY), mean)
colnames(solano_2016_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#solano 2016 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/solano/2016")
solano_2016_NO2 <- read.csv("2016solanoNO2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
solano_2016_NO2 <- solano_2016_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
solano_2016_NO2$Date <- parse_date_time(solano_2016_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
solano_2016_NO2 <- separate(solano_2016_NO2,Date, c("year","month","date"), sep = "-")
solano_2016_NO2 <- aggregate(solano_2016_NO2[, c(4,5,7,8)], list(solano_2016_NO2$year,solano_2016_NO2$COUNTY), mean)
colnames(solano_2016_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#solano 2016 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/solano/2016")
solano_2016_O <- read.csv("2016solanoozone.csv", header=T, na.strings=c(""), stringsAsFactors = T)
solano_2016_O <- solano_2016_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
solano_2016_O$Date <- parse_date_time(solano_2016_O$Date, c("%m-%d-%y", "%m/%d/%y"))
solano_2016_O <- separate(solano_2016_O,Date, c("year","month","date"), sep = "-")
solano_2016_O <- aggregate(solano_2016_O[, c(4,5,7,8)], list(solano_2016_O$year,solano_2016_O$COUNTY), mean)
colnames(solano_2016_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#solano 2016 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/solano/2016")
solano_2016_PM2.5 <- read.csv("2016solanoPM2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
solano_2016_PM2.5 <- solano_2016_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
solano_2016_PM2.5$Date <- parse_date_time(solano_2016_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
solano_2016_PM2.5 <- separate(solano_2016_PM2.5,Date, c("year","month","date"), sep = "-")
solano_2016_PM2.5 <- aggregate(solano_2016_PM2.5[, c(4,5,7,8)], list(solano_2016_PM2.5$year,solano_2016_PM2.5$COUNTY), mean)
colnames(solano_2016_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#solano 2016 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/solano/2016")
solano_2016_PM10 <- read.csv("2016solanoPM10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
solano_2016_PM10 <- solano_2016_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
solano_2016_PM10$Date <- parse_date_time(solano_2016_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
solano_2016_PM10 <- separate(solano_2016_PM10,Date, c("year","month","date"), sep = "-")
solano_2016_PM10 <- aggregate(solano_2016_PM10[, c(4,5,7,8)], list(solano_2016_PM10$year,solano_2016_PM10$COUNTY), mean)
colnames(solano_2016_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#solano 2016 all pollutant data
solano_2016 <- cbind(solano_2016_co,solano_2016_NO2$NO2_concentration_value,solano_2016_NO2$NO2_AQI,solano_2016_O$O3_concentration_value,solano_2016_O$O3_AQI,solano_2016_PM2.5$PM2.5_concentration_value,solano_2016_PM2.5$PM2.5_AQI,solano_2016_PM10$PM10_concentration_value,solano_2016_PM10$PM10_AQI)
solano_2016 <- solano_2016[c(1:4,7:14,5,6)]
colnames(solano_2016) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#----------------------------------------------------------------------------------------------------------
#solano 2017 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/solano/2017")
solano_2017_co <- read.csv("2017solanoCO.csv", header=T, na.strings=c(""), stringsAsFactors = T)
solano_2017_co <- solano_2017_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
solano_2017_co$Date <- parse_date_time(solano_2017_co$Date, c("%m-%d-%y", "%m/%d/%y"))
solano_2017_co <- separate(solano_2017_co,Date, c("year","month","date"), sep = "-")
solano_2017_co <- aggregate(solano_2017_co[, c(4,5,7,8)], list(solano_2017_co$year,solano_2017_co$COUNTY), mean)
colnames(solano_2017_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#solano 2017 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/solano/2017")
solano_2017_NO2 <- read.csv("2017solanoNO2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
solano_2017_NO2 <- solano_2017_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
solano_2017_NO2$Date <- parse_date_time(solano_2017_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
solano_2017_NO2 <- separate(solano_2017_NO2,Date, c("year","month","date"), sep = "-")
solano_2017_NO2 <- aggregate(solano_2017_NO2[, c(4,5,7,8)], list(solano_2017_NO2$year,solano_2017_NO2$COUNTY), mean)
colnames(solano_2017_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#solano 2017 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/solano/2017")
solano_2017_O <- read.csv("2017solanoozone.csv", header=T, na.strings=c(""), stringsAsFactors = T)
solano_2017_O <- solano_2017_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
solano_2017_O$Date <- parse_date_time(solano_2017_O$Date, c("%m-%d-%y", "%m/%d/%y"))
solano_2017_O <- separate(solano_2017_O,Date, c("year","month","date"), sep = "-")
solano_2017_O <- aggregate(solano_2017_O[, c(4,5,7,8)], list(solano_2017_O$year,solano_2017_O$COUNTY), mean)
colnames(solano_2017_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#solano 2017 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/solano/2017")
solano_2017_PM2.5 <- read.csv("2017solanoPM2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
solano_2017_PM2.5 <- solano_2017_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
solano_2017_PM2.5$Date <- parse_date_time(solano_2017_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
solano_2017_PM2.5 <- separate(solano_2017_PM2.5,Date, c("year","month","date"), sep = "-")
solano_2017_PM2.5 <- aggregate(solano_2017_PM2.5[, c(4,5,7,8)], list(solano_2017_PM2.5$year,solano_2017_PM2.5$COUNTY), mean)
colnames(solano_2017_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#solano 2017 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/solano/2017")
solano_2017_PM10 <- read.csv("2017solanoPM10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
solano_2017_PM10 <- solano_2017_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
solano_2017_PM10$Date <- parse_date_time(solano_2017_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
solano_2017_PM10 <- separate(solano_2017_PM10,Date, c("year","month","date"), sep = "-")
solano_2017_PM10 <- aggregate(solano_2017_PM10[, c(4,5,7,8)], list(solano_2017_PM10$year,solano_2017_PM10$COUNTY), mean)
colnames(solano_2017_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#solano 2017 all pollutant data
solano_2017 <- cbind(solano_2017_co,solano_2017_NO2$NO2_concentration_value,solano_2017_NO2$NO2_AQI,solano_2017_O$O3_concentration_value,solano_2017_O$O3_AQI,solano_2017_PM2.5$PM2.5_concentration_value,solano_2017_PM2.5$PM2.5_AQI,solano_2017_PM10$PM10_concentration_value,solano_2017_PM10$PM10_AQI)
solano_2017 <- solano_2017[c(1:4,7:14,5,6)]
colnames(solano_2017) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#--------------------------------------------------------------------------------------------------------
#solano final data
solano <- rbind(solano_2011,solano_2012,solano_2013,solano_2014,solano_2015,solano_2016,solano_2017)
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/FINAL_DATASETS")
write.csv(solano, file = "solano.csv")