#marin 2011 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/marin/2011")
marin_2011_co <- read.csv("co.csv", header=T, na.strings=c(""), stringsAsFactors = T)
marin_2011_co <- marin_2011_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
marin_2011_co$Date <- parse_date_time(marin_2011_co$Date, c("%m-%d-%y", "%m/%d/%y"))
marin_2011_co <- separate(marin_2011_co,Date, c("year","month","date"), sep = "-")
marin_2011_co <- aggregate(marin_2011_co[, c(4,5,7,8)], list(marin_2011_co$year,marin_2011_co$COUNTY), mean)
colnames(marin_2011_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#marin 2011 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/marin/2011")
marin_2011_NO2 <- read.csv("no2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
marin_2011_NO2 <- marin_2011_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
marin_2011_NO2$Date <- parse_date_time(marin_2011_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
marin_2011_NO2 <- separate(marin_2011_NO2,Date, c("year","month","date"), sep = "-")
marin_2011_NO2 <- aggregate(marin_2011_NO2[, c(4,5,7,8)], list(marin_2011_NO2$year,marin_2011_NO2$COUNTY), mean)
colnames(marin_2011_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#marin 2011 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/marin/2011")
marin_2011_O <- read.csv("o.csv", header=T, na.strings=c(""), stringsAsFactors = T)
marin_2011_O <- marin_2011_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
marin_2011_O$Date <- parse_date_time(marin_2011_O$Date, c("%m-%d-%y", "%m/%d/%y"))
marin_2011_O <- separate(marin_2011_O,Date, c("year","month","date"), sep = "-")
marin_2011_O <- aggregate(marin_2011_O[, c(4,5,7,8)], list(marin_2011_O$year,marin_2011_O$COUNTY), mean)
colnames(marin_2011_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#marin 2011 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/marin/2011")
marin_2011_PM2.5 <- read.csv("pm2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
marin_2011_PM2.5 <- marin_2011_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
marin_2011_PM2.5$Date <- parse_date_time(marin_2011_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
marin_2011_PM2.5 <- separate(marin_2011_PM2.5,Date, c("year","month","date"), sep = "-")
marin_2011_PM2.5 <- aggregate(marin_2011_PM2.5[, c(4,5,7,8)], list(marin_2011_PM2.5$year,marin_2011_PM2.5$COUNTY), mean)
colnames(marin_2011_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#marin 2011 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/marin/2011")
marin_2011_PM10 <- read.csv("pm10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
marin_2011_PM10 <- marin_2011_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
marin_2011_PM10$Date <- parse_date_time(marin_2011_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
marin_2011_PM10 <- separate(marin_2011_PM10,Date, c("year","month","date"), sep = "-")
marin_2011_PM10 <- aggregate(marin_2011_PM10[, c(4,5,7,8)], list(marin_2011_PM10$year,marin_2011_PM10$COUNTY), mean)
colnames(marin_2011_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#marin 2011 all pollutant data
marin_2011 <- cbind(marin_2011_co,marin_2011_NO2$NO2_concentration_value,marin_2011_NO2$NO2_AQI,marin_2011_O$O3_concentration_value,marin_2011_O$O3_AQI,marin_2011_PM2.5$PM2.5_concentration_value,marin_2011_PM2.5$PM2.5_AQI,marin_2011_PM10$PM10_concentration_value,marin_2011_PM10$PM10_AQI)
marin_2011 <- marin_2011[c(1:4,7:14,5,6)]
colnames(marin_2011) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#---------------------------------------------------------------------------------------------------
#marin 2012 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/marin/2012")
marin_2012_co <- read.csv("co.csv", header=T, na.strings=c(""), stringsAsFactors = T)
marin_2012_co <- marin_2012_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
marin_2012_co$Date <- parse_date_time(marin_2012_co$Date, c("%m-%d-%y", "%m/%d/%y"))
marin_2012_co <- separate(marin_2012_co,Date, c("year","month","date"), sep = "-")
marin_2012_co <- aggregate(marin_2012_co[, c(4,5,7,8)], list(marin_2012_co$year,marin_2012_co$COUNTY), mean)
colnames(marin_2012_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#marin 2012 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/marin/2012")
marin_2012_NO2 <- read.csv("no2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
marin_2012_NO2 <- marin_2012_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
marin_2012_NO2$Date <- parse_date_time(marin_2012_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
marin_2012_NO2 <- separate(marin_2012_NO2,Date, c("year","month","date"), sep = "-")
marin_2012_NO2 <- aggregate(marin_2012_NO2[, c(4,5,7,8)], list(marin_2012_NO2$year,marin_2012_NO2$COUNTY), mean)
colnames(marin_2012_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#marin 2012 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/marin/2012")
marin_2012_O <- read.csv("o.csv", header=T, na.strings=c(""), stringsAsFactors = T)
marin_2012_O <- marin_2012_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
marin_2012_O$Date <- parse_date_time(marin_2012_O$Date, c("%m-%d-%y", "%m/%d/%y"))
marin_2012_O <- separate(marin_2012_O,Date, c("year","month","date"), sep = "-")
marin_2012_O <- aggregate(marin_2012_O[, c(4,5,7,8)], list(marin_2012_O$year,marin_2012_O$COUNTY), mean)
colnames(marin_2012_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#marin 2012 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/marin/2012")
marin_2012_PM2.5 <- read.csv("pm2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
marin_2012_PM2.5 <- marin_2012_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
marin_2012_PM2.5$Date <- parse_date_time(marin_2012_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
marin_2012_PM2.5 <- separate(marin_2012_PM2.5,Date, c("year","month","date"), sep = "-")
marin_2012_PM2.5 <- aggregate(marin_2012_PM2.5[, c(4,5,7,8)], list(marin_2012_PM2.5$year,marin_2012_PM2.5$COUNTY), mean)
colnames(marin_2012_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#marin 2012 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/marin/2012")
marin_2012_PM10 <- read.csv("pm10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
marin_2012_PM10 <- marin_2012_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
marin_2012_PM10$Date <- parse_date_time(marin_2012_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
marin_2012_PM10 <- separate(marin_2012_PM10,Date, c("year","month","date"), sep = "-")
marin_2012_PM10 <- aggregate(marin_2012_PM10[, c(4,5,7,8)], list(marin_2012_PM10$year,marin_2012_PM10$COUNTY), mean)
colnames(marin_2012_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#marin 2012 all pollutant data
marin_2012 <- cbind(marin_2012_co,marin_2012_NO2$NO2_concentration_value,marin_2012_NO2$NO2_AQI,marin_2012_O$O3_concentration_value,marin_2012_O$O3_AQI,marin_2012_PM2.5$PM2.5_concentration_value,marin_2012_PM2.5$PM2.5_AQI,marin_2012_PM10$PM10_concentration_value,marin_2012_PM10$PM10_AQI)
marin_2012 <- marin_2012[c(1:4,7:14,5,6)]
colnames(marin_2012) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#-------------------------------------------------------------------------------------------------------
#marin 2013 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/marin/2013")
marin_2013_co <- read.csv("co.csv", header=T, na.strings=c(""), stringsAsFactors = T)
marin_2013_co <- marin_2013_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
marin_2013_co$Date <- parse_date_time(marin_2013_co$Date, c("%m-%d-%y", "%m/%d/%y"))
marin_2013_co <- separate(marin_2013_co,Date, c("year","month","date"), sep = "-")
marin_2013_co <- aggregate(marin_2013_co[, c(4,5,7,8)], list(marin_2013_co$year,marin_2013_co$COUNTY), mean)
colnames(marin_2013_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#marin 2013 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/marin/2013")
marin_2013_NO2 <- read.csv("no2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
marin_2013_NO2 <- marin_2013_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
marin_2013_NO2$Date <- parse_date_time(marin_2013_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
marin_2013_NO2 <- separate(marin_2013_NO2,Date, c("year","month","date"), sep = "-")
marin_2013_NO2 <- aggregate(marin_2013_NO2[, c(4,5,7,8)], list(marin_2013_NO2$year,marin_2013_NO2$COUNTY), mean)
colnames(marin_2013_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#marin 2013 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/marin/2013")
marin_2013_O <- read.csv("O.csv", header=T, na.strings=c(""), stringsAsFactors = T)
marin_2013_O <- marin_2013_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
marin_2013_O$Date <- parse_date_time(marin_2013_O$Date, c("%m-%d-%y", "%m/%d/%y"))
marin_2013_O <- separate(marin_2013_O,Date, c("year","month","date"), sep = "-")
marin_2013_O <- aggregate(marin_2013_O[, c(4,5,7,8)], list(marin_2013_O$year,marin_2013_O$COUNTY), mean)
colnames(marin_2013_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#marin 2013 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/marin/2013")
marin_2013_PM2.5 <- read.csv("pm2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
marin_2013_PM2.5 <- marin_2013_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
marin_2013_PM2.5$Date <- parse_date_time(marin_2013_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
marin_2013_PM2.5 <- separate(marin_2013_PM2.5,Date, c("year","month","date"), sep = "-")
marin_2013_PM2.5 <- aggregate(marin_2013_PM2.5[, c(4,5,7,8)], list(marin_2013_PM2.5$year,marin_2013_PM2.5$COUNTY), mean)
colnames(marin_2013_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#marin 2013 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/marin/2013")
marin_2013_PM10 <- read.csv("pm10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
marin_2013_PM10 <- marin_2013_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
marin_2013_PM10$Date <- parse_date_time(marin_2013_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
marin_2013_PM10 <- separate(marin_2013_PM10,Date, c("year","month","date"), sep = "-")
marin_2013_PM10 <- aggregate(marin_2013_PM10[, c(4,5,7,8)], list(marin_2013_PM10$year,marin_2013_PM10$COUNTY), mean)
colnames(marin_2013_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#marin 2013 all pollutant data
marin_2013 <- cbind(marin_2013_co,marin_2013_NO2$NO2_concentration_value,marin_2013_NO2$NO2_AQI,marin_2013_O$O3_concentration_value,marin_2013_O$O3_AQI,marin_2013_PM2.5$PM2.5_concentration_value,marin_2013_PM2.5$PM2.5_AQI,marin_2013_PM10$PM10_concentration_value,marin_2013_PM10$PM10_AQI)
marin_2013 <- marin_2013[c(1:4,7:14,5,6)]
colnames(marin_2013) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#-------------------------------------------------------------------------------------------------------------
#marin 2014 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/marin/2014")
marin_2014_co <- read.csv("co.csv", header=T, na.strings=c(""), stringsAsFactors = T)
marin_2014_co <- marin_2014_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
marin_2014_co$Date <- parse_date_time(marin_2014_co$Date, c("%m-%d-%y", "%m/%d/%y"))
marin_2014_co <- separate(marin_2014_co,Date, c("year","month","date"), sep = "-")
marin_2014_co <- aggregate(marin_2014_co[, c(4,5,7,8)], list(marin_2014_co$year,marin_2014_co$COUNTY), mean)
colnames(marin_2014_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#marin 2014 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/marin/2014")
marin_2014_NO2 <- read.csv("no2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
marin_2014_NO2 <- marin_2014_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
marin_2014_NO2$Date <- parse_date_time(marin_2014_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
marin_2014_NO2 <- separate(marin_2014_NO2,Date, c("year","month","date"), sep = "-")
marin_2014_NO2 <- aggregate(marin_2014_NO2[, c(4,5,7,8)], list(marin_2014_NO2$year,marin_2014_NO2$COUNTY), mean)
colnames(marin_2014_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#marin 2014 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/marin/2014")
marin_2014_O <- read.csv("o.csv", header=T, na.strings=c(""), stringsAsFactors = T)
marin_2014_O <- marin_2014_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
marin_2014_O$Date <- parse_date_time(marin_2014_O$Date, c("%m-%d-%y", "%m/%d/%y"))
marin_2014_O <- separate(marin_2014_O,Date, c("year","month","date"), sep = "-")
marin_2014_O <- aggregate(marin_2014_O[, c(4,5,7,8)], list(marin_2014_O$year,marin_2014_O$COUNTY), mean)
colnames(marin_2014_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#marin 2014 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/marin/2014")
marin_2014_PM2.5 <- read.csv("pm2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
marin_2014_PM2.5 <- marin_2014_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
marin_2014_PM2.5$Date <- parse_date_time(marin_2014_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
marin_2014_PM2.5 <- separate(marin_2014_PM2.5,Date, c("year","month","date"), sep = "-")
marin_2014_PM2.5 <- aggregate(marin_2014_PM2.5[, c(4,5,7,8)], list(marin_2014_PM2.5$year,marin_2014_PM2.5$COUNTY), mean)
colnames(marin_2014_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#marin 2014 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/marin/2014")
marin_2014_PM10 <- read.csv("pm10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
marin_2014_PM10 <- marin_2014_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
marin_2014_PM10$Date <- parse_date_time(marin_2014_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
marin_2014_PM10 <- separate(marin_2014_PM10,Date, c("year","month","date"), sep = "-")
marin_2014_PM10 <- aggregate(marin_2014_PM10[, c(4,5,7,8)], list(marin_2014_PM10$year,marin_2014_PM10$COUNTY), mean)
colnames(marin_2014_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#marin 2014 all pollutant data
marin_2014 <- cbind(marin_2014_co,marin_2014_NO2$NO2_concentration_value,marin_2014_NO2$NO2_AQI,marin_2014_O$O3_concentration_value,marin_2014_O$O3_AQI,marin_2014_PM2.5$PM2.5_concentration_value,marin_2014_PM2.5$PM2.5_AQI,marin_2014_PM10$PM10_concentration_value,marin_2014_PM10$PM10_AQI)
marin_2014 <- marin_2014[c(1:4,7:14,5,6)]
colnames(marin_2014) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#----------------------------------------------------------------------------------------------------------------------

#marin 2015 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/marin/2015")
marin_2015_co <- read.csv("co.csv", header=T, na.strings=c(""), stringsAsFactors = T)
marin_2015_co <- marin_2015_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
marin_2015_co$Date <- parse_date_time(marin_2015_co$Date, c("%m-%d-%y", "%m/%d/%y"))
marin_2015_co <- separate(marin_2015_co,Date, c("year","month","date"), sep = "-")
marin_2015_co <- aggregate(marin_2015_co[, c(4,5,7,8)], list(marin_2015_co$year,marin_2015_co$COUNTY), mean)
colnames(marin_2015_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#marin 2015 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/marin/2015")
marin_2015_NO2 <- read.csv("no2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
marin_2015_NO2 <- marin_2015_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
marin_2015_NO2$Date <- parse_date_time(marin_2015_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
marin_2015_NO2 <- separate(marin_2015_NO2,Date, c("year","month","date"), sep = "-")
marin_2015_NO2 <- aggregate(marin_2015_NO2[, c(4,5,7,8)], list(marin_2015_NO2$year,marin_2015_NO2$COUNTY), mean)
colnames(marin_2015_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#marin 2015 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/marin/2015")
marin_2015_O <- read.csv("o.csv", header=T, na.strings=c(""), stringsAsFactors = T)
marin_2015_O <- marin_2015_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
marin_2015_O$Date <- parse_date_time(marin_2015_O$Date, c("%m-%d-%y", "%m/%d/%y"))
marin_2015_O <- separate(marin_2015_O,Date, c("year","month","date"), sep = "-")
marin_2015_O <- aggregate(marin_2015_O[, c(4,5,7,8)], list(marin_2015_O$year,marin_2015_O$COUNTY), mean)
colnames(marin_2015_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#marin 2015 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/marin/2015")
marin_2015_PM2.5 <- read.csv("pm2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
marin_2015_PM2.5 <- marin_2015_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
marin_2015_PM2.5$Date <- parse_date_time(marin_2015_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
marin_2015_PM2.5 <- separate(marin_2015_PM2.5,Date, c("year","month","date"), sep = "-")
marin_2015_PM2.5 <- aggregate(marin_2015_PM2.5[, c(4,5,7,8)], list(marin_2015_PM2.5$year,marin_2015_PM2.5$COUNTY), mean)
colnames(marin_2015_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#marin 2015 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/marin/2015")
marin_2015_PM10 <- read.csv("pm10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
marin_2015_PM10 <- marin_2015_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
marin_2015_PM10$Date <- parse_date_time(marin_2015_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
marin_2015_PM10 <- separate(marin_2015_PM10,Date, c("year","month","date"), sep = "-")
marin_2015_PM10 <- aggregate(marin_2015_PM10[, c(4,5,7,8)], list(marin_2015_PM10$year,marin_2015_PM10$COUNTY), mean)
colnames(marin_2015_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#marin 2015 all pollutant data
marin_2015 <- cbind(marin_2015_co,marin_2015_NO2$NO2_concentration_value,marin_2015_NO2$NO2_AQI,marin_2015_O$O3_concentration_value,marin_2015_O$O3_AQI,marin_2015_PM2.5$PM2.5_concentration_value,marin_2015_PM2.5$PM2.5_AQI,marin_2015_PM10$PM10_concentration_value,marin_2015_PM10$PM10_AQI)
marin_2015 <- marin_2015[c(1:4,7:14,5,6)]
colnames(marin_2015) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#-------------------------------------------------------------------------------------------------------
#marin 2016 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/marin/2016")
marin_2016_co <- read.csv("co.csv", header=T, na.strings=c(""), stringsAsFactors = T)
marin_2016_co <- marin_2016_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
marin_2016_co$Date <- parse_date_time(marin_2016_co$Date, c("%m-%d-%y", "%m/%d/%y"))
marin_2016_co <- separate(marin_2016_co,Date, c("year","month","date"), sep = "-")
marin_2016_co <- aggregate(marin_2016_co[, c(4,5,7,8)], list(marin_2016_co$year,marin_2016_co$COUNTY), mean)
colnames(marin_2016_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#marin 2016 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/marin/2016")
marin_2016_NO2 <- read.csv("no2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
marin_2016_NO2 <- marin_2016_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
marin_2016_NO2$Date <- parse_date_time(marin_2016_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
marin_2016_NO2 <- separate(marin_2016_NO2,Date, c("year","month","date"), sep = "-")
marin_2016_NO2 <- aggregate(marin_2016_NO2[, c(4,5,7,8)], list(marin_2016_NO2$year,marin_2016_NO2$COUNTY), mean)
colnames(marin_2016_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#marin 2016 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/marin/2016")
marin_2016_O <- read.csv("o.csv", header=T, na.strings=c(""), stringsAsFactors = T)
marin_2016_O <- marin_2016_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
marin_2016_O$Date <- parse_date_time(marin_2016_O$Date, c("%m-%d-%y", "%m/%d/%y"))
marin_2016_O <- separate(marin_2016_O,Date, c("year","month","date"), sep = "-")
marin_2016_O <- aggregate(marin_2016_O[, c(4,5,7,8)], list(marin_2016_O$year,marin_2016_O$COUNTY), mean)
colnames(marin_2016_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#marin 2016 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/marin/2016")
marin_2016_PM2.5 <- read.csv("pm2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
marin_2016_PM2.5 <- marin_2016_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
marin_2016_PM2.5$Date <- parse_date_time(marin_2016_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
marin_2016_PM2.5 <- separate(marin_2016_PM2.5,Date, c("year","month","date"), sep = "-")
marin_2016_PM2.5 <- aggregate(marin_2016_PM2.5[, c(4,5,7,8)], list(marin_2016_PM2.5$year,marin_2016_PM2.5$COUNTY), mean)
colnames(marin_2016_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#marin 2016 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/marin/2016")
marin_2016_PM10 <- read.csv("pm10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
marin_2016_PM10 <- marin_2016_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
marin_2016_PM10$Date <- parse_date_time(marin_2016_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
marin_2016_PM10 <- separate(marin_2016_PM10,Date, c("year","month","date"), sep = "-")
marin_2016_PM10 <- aggregate(marin_2016_PM10[, c(4,5,7,8)], list(marin_2016_PM10$year,marin_2016_PM10$COUNTY), mean)
colnames(marin_2016_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#marin 2016 all pollutant data
marin_2016 <- cbind(marin_2016_co,marin_2016_NO2$NO2_concentration_value,marin_2016_NO2$NO2_AQI,marin_2016_O$O3_concentration_value,marin_2016_O$O3_AQI,marin_2016_PM2.5$PM2.5_concentration_value,marin_2016_PM2.5$PM2.5_AQI,marin_2016_PM10$PM10_concentration_value,marin_2016_PM10$PM10_AQI)
marin_2016 <- marin_2016[c(1:4,7:14,5,6)]
colnames(marin_2016) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#----------------------------------------------------------------------------------------------------------
#marin 2017 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/marin/2017")
marin_2017_co <- read.csv("co.csv", header=T, na.strings=c(""), stringsAsFactors = T)
marin_2017_co <- marin_2017_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
marin_2017_co$Date <- parse_date_time(marin_2017_co$Date, c("%m-%d-%y", "%m/%d/%y"))
marin_2017_co <- separate(marin_2017_co,Date, c("year","month","date"), sep = "-")
marin_2017_co <- aggregate(marin_2017_co[, c(4,5,7,8)], list(marin_2017_co$year,marin_2017_co$COUNTY), mean)
colnames(marin_2017_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#marin 2017 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/marin/2017")
marin_2017_NO2 <- read.csv("no2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
marin_2017_NO2 <- marin_2017_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
marin_2017_NO2$Date <- parse_date_time(marin_2017_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
marin_2017_NO2 <- separate(marin_2017_NO2,Date, c("year","month","date"), sep = "-")
marin_2017_NO2 <- aggregate(marin_2017_NO2[, c(4,5,7,8)], list(marin_2017_NO2$year,marin_2017_NO2$COUNTY), mean)
colnames(marin_2017_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#marin 2017 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/marin/2017")
marin_2017_O <- read.csv("o.csv", header=T, na.strings=c(""), stringsAsFactors = T)
marin_2017_O <- marin_2017_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
marin_2017_O$Date <- parse_date_time(marin_2017_O$Date, c("%m-%d-%y", "%m/%d/%y"))
marin_2017_O <- separate(marin_2017_O,Date, c("year","month","date"), sep = "-")
marin_2017_O <- aggregate(marin_2017_O[, c(4,5,7,8)], list(marin_2017_O$year,marin_2017_O$COUNTY), mean)
colnames(marin_2017_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#marin 2017 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/marin/2017")
marin_2017_PM2.5 <- read.csv("pm2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
marin_2017_PM2.5 <- marin_2017_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
marin_2017_PM2.5$Date <- parse_date_time(marin_2017_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
marin_2017_PM2.5 <- separate(marin_2017_PM2.5,Date, c("year","month","date"), sep = "-")
marin_2017_PM2.5 <- aggregate(marin_2017_PM2.5[, c(4,5,7,8)], list(marin_2017_PM2.5$year,marin_2017_PM2.5$COUNTY), mean)
colnames(marin_2017_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#marin 2017 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/marin/2017")
marin_2017_PM10 <- read.csv("pm10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
marin_2017_PM10 <- marin_2017_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
marin_2017_PM10$Date <- parse_date_time(marin_2017_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
marin_2017_PM10 <- separate(marin_2017_PM10,Date, c("year","month","date"), sep = "-")
marin_2017_PM10 <- aggregate(marin_2017_PM10[, c(4,5,7,8)], list(marin_2017_PM10$year,marin_2017_PM10$COUNTY), mean)
colnames(marin_2017_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#marin 2017 all pollutant data
marin_2017 <- cbind(marin_2017_co,marin_2017_NO2$NO2_concentration_value,marin_2017_NO2$NO2_AQI,marin_2017_O$O3_concentration_value,marin_2017_O$O3_AQI,marin_2017_PM2.5$PM2.5_concentration_value,marin_2017_PM2.5$PM2.5_AQI,marin_2017_PM10$PM10_concentration_value,marin_2017_PM10$PM10_AQI)
marin_2017 <- marin_2017[c(1:4,7:14,5,6)]
colnames(marin_2017) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#--------------------------------------------------------------------------------------------------------
#marin final data
marin <- rbind(marin_2011,marin_2012,marin_2013,marin_2014,marin_2015,marin_2016,marin_2017)
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/FINAL_DATASETS")
write.csv(marin, file = "marin.csv")