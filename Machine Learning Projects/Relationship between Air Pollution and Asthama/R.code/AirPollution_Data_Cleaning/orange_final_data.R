#orange 2011 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/orange/2011")
orange_2011_co <- read.csv("co.csv", header=T, na.strings=c(""), stringsAsFactors = T)
orange_2011_co <- orange_2011_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
orange_2011_co$Date <- parse_date_time(orange_2011_co$Date, c("%m-%d-%y", "%m/%d/%y"))
orange_2011_co <- separate(orange_2011_co,Date, c("year","month","date"), sep = "-")
orange_2011_co <- aggregate(orange_2011_co[, c(4,5,7,8)], list(orange_2011_co$year,orange_2011_co$COUNTY), mean)
colnames(orange_2011_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#orange 2011 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/orange/2011")
orange_2011_NO2 <- read.csv("no2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
orange_2011_NO2 <- orange_2011_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
orange_2011_NO2$Date <- parse_date_time(orange_2011_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
orange_2011_NO2 <- separate(orange_2011_NO2,Date, c("year","month","date"), sep = "-")
orange_2011_NO2 <- aggregate(orange_2011_NO2[, c(4,5,7,8)], list(orange_2011_NO2$year,orange_2011_NO2$COUNTY), mean)
colnames(orange_2011_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#orange 2011 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/orange/2011")
orange_2011_O <- read.csv("o.csv", header=T, na.strings=c(""), stringsAsFactors = T)
orange_2011_O <- orange_2011_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
orange_2011_O$Date <- parse_date_time(orange_2011_O$Date, c("%m-%d-%y", "%m/%d/%y"))
orange_2011_O <- separate(orange_2011_O,Date, c("year","month","date"), sep = "-")
orange_2011_O <- aggregate(orange_2011_O[, c(4,5,7,8)], list(orange_2011_O$year,orange_2011_O$COUNTY), mean)
colnames(orange_2011_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#orange 2011 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/orange/2011")
orange_2011_PM2.5 <- read.csv("pm2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
orange_2011_PM2.5 <- orange_2011_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
orange_2011_PM2.5$Date <- parse_date_time(orange_2011_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
orange_2011_PM2.5 <- separate(orange_2011_PM2.5,Date, c("year","month","date"), sep = "-")
orange_2011_PM2.5 <- aggregate(orange_2011_PM2.5[, c(4,5,7,8)], list(orange_2011_PM2.5$year,orange_2011_PM2.5$COUNTY), mean)
colnames(orange_2011_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#orange 2011 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/orange/2011")
orange_2011_PM10 <- read.csv("pm10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
orange_2011_PM10 <- orange_2011_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
orange_2011_PM10$Date <- parse_date_time(orange_2011_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
orange_2011_PM10 <- separate(orange_2011_PM10,Date, c("year","month","date"), sep = "-")
orange_2011_PM10 <- aggregate(orange_2011_PM10[, c(4,5,7,8)], list(orange_2011_PM10$year,orange_2011_PM10$COUNTY), mean)
colnames(orange_2011_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#orange 2011 all pollutant data
orange_2011 <- cbind(orange_2011_co,orange_2011_NO2$NO2_concentration_value,orange_2011_NO2$NO2_AQI,orange_2011_O$O3_concentration_value,orange_2011_O$O3_AQI,orange_2011_PM2.5$PM2.5_concentration_value,orange_2011_PM2.5$PM2.5_AQI,orange_2011_PM10$PM10_concentration_value,orange_2011_PM10$PM10_AQI)
orange_2011 <- orange_2011[c(1:4,7:14,5,6)]
colnames(orange_2011) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#---------------------------------------------------------------------------------------------------
#orange 2012 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/orange/2012")
orange_2012_co <- read.csv("co.csv", header=T, na.strings=c(""), stringsAsFactors = T)
orange_2012_co <- orange_2012_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
orange_2012_co$Date <- parse_date_time(orange_2012_co$Date, c("%m-%d-%y", "%m/%d/%y"))
orange_2012_co <- separate(orange_2012_co,Date, c("year","month","date"), sep = "-")
orange_2012_co <- aggregate(orange_2012_co[, c(4,5,7,8)], list(orange_2012_co$year,orange_2012_co$COUNTY), mean)
colnames(orange_2012_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#orange 2012 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/orange/2012")
orange_2012_NO2 <- read.csv("no2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
orange_2012_NO2 <- orange_2012_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
orange_2012_NO2$Date <- parse_date_time(orange_2012_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
orange_2012_NO2 <- separate(orange_2012_NO2,Date, c("year","month","date"), sep = "-")
orange_2012_NO2 <- aggregate(orange_2012_NO2[, c(4,5,7,8)], list(orange_2012_NO2$year,orange_2012_NO2$COUNTY), mean)
colnames(orange_2012_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#orange 2012 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/orange/2012")
orange_2012_O <- read.csv("o.csv", header=T, na.strings=c(""), stringsAsFactors = T)
orange_2012_O <- orange_2012_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
orange_2012_O$Date <- parse_date_time(orange_2012_O$Date, c("%m-%d-%y", "%m/%d/%y"))
orange_2012_O <- separate(orange_2012_O,Date, c("year","month","date"), sep = "-")
orange_2012_O <- aggregate(orange_2012_O[, c(4,5,7,8)], list(orange_2012_O$year,orange_2012_O$COUNTY), mean)
colnames(orange_2012_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#orange 2012 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/orange/2012")
orange_2012_PM2.5 <- read.csv("pm2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
orange_2012_PM2.5 <- orange_2012_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
orange_2012_PM2.5$Date <- parse_date_time(orange_2012_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
orange_2012_PM2.5 <- separate(orange_2012_PM2.5,Date, c("year","month","date"), sep = "-")
orange_2012_PM2.5 <- aggregate(orange_2012_PM2.5[, c(4,5,7,8)], list(orange_2012_PM2.5$year,orange_2012_PM2.5$COUNTY), mean)
colnames(orange_2012_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#orange 2012 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/orange/2012")
orange_2012_PM10 <- read.csv("pm10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
orange_2012_PM10 <- orange_2012_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
orange_2012_PM10$Date <- parse_date_time(orange_2012_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
orange_2012_PM10 <- separate(orange_2012_PM10,Date, c("year","month","date"), sep = "-")
orange_2012_PM10 <- aggregate(orange_2012_PM10[, c(4,5,7,8)], list(orange_2012_PM10$year,orange_2012_PM10$COUNTY), mean)
colnames(orange_2012_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#orange 2012 all pollutant data
orange_2012 <- cbind(orange_2012_co,orange_2012_NO2$NO2_concentration_value,orange_2012_NO2$NO2_AQI,orange_2012_O$O3_concentration_value,orange_2012_O$O3_AQI,orange_2012_PM2.5$PM2.5_concentration_value,orange_2012_PM2.5$PM2.5_AQI,orange_2012_PM10$PM10_concentration_value,orange_2012_PM10$PM10_AQI)
orange_2012 <- orange_2012[c(1:4,7:14,5,6)]
colnames(orange_2012) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#-------------------------------------------------------------------------------------------------------
#orange 2013 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/orange/2013")
orange_2013_co <- read.csv("co.csv", header=T, na.strings=c(""), stringsAsFactors = T)
orange_2013_co <- orange_2013_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
orange_2013_co$Date <- parse_date_time(orange_2013_co$Date, c("%m-%d-%y", "%m/%d/%y"))
orange_2013_co <- separate(orange_2013_co,Date, c("year","month","date"), sep = "-")
orange_2013_co <- aggregate(orange_2013_co[, c(4,5,7,8)], list(orange_2013_co$year,orange_2013_co$COUNTY), mean)
colnames(orange_2013_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#orange 2013 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/orange/2013")
orange_2013_NO2 <- read.csv("no2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
orange_2013_NO2 <- orange_2013_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
orange_2013_NO2$Date <- parse_date_time(orange_2013_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
orange_2013_NO2 <- separate(orange_2013_NO2,Date, c("year","month","date"), sep = "-")
orange_2013_NO2 <- aggregate(orange_2013_NO2[, c(4,5,7,8)], list(orange_2013_NO2$year,orange_2013_NO2$COUNTY), mean)
colnames(orange_2013_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#orange 2013 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/orange/2013")
orange_2013_O <- read.csv("O.csv", header=T, na.strings=c(""), stringsAsFactors = T)
orange_2013_O <- orange_2013_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
orange_2013_O$Date <- parse_date_time(orange_2013_O$Date, c("%m-%d-%y", "%m/%d/%y"))
orange_2013_O <- separate(orange_2013_O,Date, c("year","month","date"), sep = "-")
orange_2013_O <- aggregate(orange_2013_O[, c(4,5,7,8)], list(orange_2013_O$year,orange_2013_O$COUNTY), mean)
colnames(orange_2013_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#orange 2013 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/orange/2013")
orange_2013_PM2.5 <- read.csv("pm2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
orange_2013_PM2.5 <- orange_2013_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
orange_2013_PM2.5$Date <- parse_date_time(orange_2013_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
orange_2013_PM2.5 <- separate(orange_2013_PM2.5,Date, c("year","month","date"), sep = "-")
orange_2013_PM2.5 <- aggregate(orange_2013_PM2.5[, c(4,5,7,8)], list(orange_2013_PM2.5$year,orange_2013_PM2.5$COUNTY), mean)
colnames(orange_2013_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#orange 2013 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/orange/2013")
orange_2013_PM10 <- read.csv("pm10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
orange_2013_PM10 <- orange_2013_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
orange_2013_PM10$Date <- parse_date_time(orange_2013_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
orange_2013_PM10 <- separate(orange_2013_PM10,Date, c("year","month","date"), sep = "-")
orange_2013_PM10 <- aggregate(orange_2013_PM10[, c(4,5,7,8)], list(orange_2013_PM10$year,orange_2013_PM10$COUNTY), mean)
colnames(orange_2013_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#orange 2013 all pollutant data
orange_2013 <- cbind(orange_2013_co,orange_2013_NO2$NO2_concentration_value,orange_2013_NO2$NO2_AQI,orange_2013_O$O3_concentration_value,orange_2013_O$O3_AQI,orange_2013_PM2.5$PM2.5_concentration_value,orange_2013_PM2.5$PM2.5_AQI,orange_2013_PM10$PM10_concentration_value,orange_2013_PM10$PM10_AQI)
orange_2013 <- orange_2013[c(1:4,7:14,5,6)]
colnames(orange_2013) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#-------------------------------------------------------------------------------------------------------------
#orange 2014 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/orange/2014")
orange_2014_co <- read.csv("co.csv", header=T, na.strings=c(""), stringsAsFactors = T)
orange_2014_co <- orange_2014_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
orange_2014_co$Date <- parse_date_time(orange_2014_co$Date, c("%m-%d-%y", "%m/%d/%y"))
orange_2014_co <- separate(orange_2014_co,Date, c("year","month","date"), sep = "-")
orange_2014_co <- aggregate(orange_2014_co[, c(4,5,7,8)], list(orange_2014_co$year,orange_2014_co$COUNTY), mean)
colnames(orange_2014_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#orange 2014 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/orange/2014")
orange_2014_NO2 <- read.csv("no2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
orange_2014_NO2 <- orange_2014_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
orange_2014_NO2$Date <- parse_date_time(orange_2014_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
orange_2014_NO2 <- separate(orange_2014_NO2,Date, c("year","month","date"), sep = "-")
orange_2014_NO2 <- aggregate(orange_2014_NO2[, c(4,5,7,8)], list(orange_2014_NO2$year,orange_2014_NO2$COUNTY), mean)
colnames(orange_2014_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#orange 2014 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/orange/2014")
orange_2014_O <- read.csv("o.csv", header=T, na.strings=c(""), stringsAsFactors = T)
orange_2014_O <- orange_2014_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
orange_2014_O$Date <- parse_date_time(orange_2014_O$Date, c("%m-%d-%y", "%m/%d/%y"))
orange_2014_O <- separate(orange_2014_O,Date, c("year","month","date"), sep = "-")
orange_2014_O <- aggregate(orange_2014_O[, c(4,5,7,8)], list(orange_2014_O$year,orange_2014_O$COUNTY), mean)
colnames(orange_2014_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#orange 2014 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/orange/2014")
orange_2014_PM2.5 <- read.csv("pm2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
orange_2014_PM2.5 <- orange_2014_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
orange_2014_PM2.5$Date <- parse_date_time(orange_2014_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
orange_2014_PM2.5 <- separate(orange_2014_PM2.5,Date, c("year","month","date"), sep = "-")
orange_2014_PM2.5 <- aggregate(orange_2014_PM2.5[, c(4,5,7,8)], list(orange_2014_PM2.5$year,orange_2014_PM2.5$COUNTY), mean)
colnames(orange_2014_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#orange 2014 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/orange/2014")
orange_2014_PM10 <- read.csv("pm10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
orange_2014_PM10 <- orange_2014_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
orange_2014_PM10$Date <- parse_date_time(orange_2014_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
orange_2014_PM10 <- separate(orange_2014_PM10,Date, c("year","month","date"), sep = "-")
orange_2014_PM10 <- aggregate(orange_2014_PM10[, c(4,5,7,8)], list(orange_2014_PM10$year,orange_2014_PM10$COUNTY), mean)
colnames(orange_2014_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#orange 2014 all pollutant data
orange_2014 <- cbind(orange_2014_co,orange_2014_NO2$NO2_concentration_value,orange_2014_NO2$NO2_AQI,orange_2014_O$O3_concentration_value,orange_2014_O$O3_AQI,orange_2014_PM2.5$PM2.5_concentration_value,orange_2014_PM2.5$PM2.5_AQI,orange_2014_PM10$PM10_concentration_value,orange_2014_PM10$PM10_AQI)
orange_2014 <- orange_2014[c(1:4,7:14,5,6)]
colnames(orange_2014) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#----------------------------------------------------------------------------------------------------------------------

#orange 2015 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/orange/2015")
orange_2015_co <- read.csv("co.csv", header=T, na.strings=c(""), stringsAsFactors = T)
orange_2015_co <- orange_2015_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
orange_2015_co$Date <- parse_date_time(orange_2015_co$Date, c("%m-%d-%y", "%m/%d/%y"))
orange_2015_co <- separate(orange_2015_co,Date, c("year","month","date"), sep = "-")
orange_2015_co <- aggregate(orange_2015_co[, c(4,5,7,8)], list(orange_2015_co$year,orange_2015_co$COUNTY), mean)
colnames(orange_2015_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#orange 2015 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/orange/2015")
orange_2015_NO2 <- read.csv("no2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
orange_2015_NO2 <- orange_2015_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
orange_2015_NO2$Date <- parse_date_time(orange_2015_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
orange_2015_NO2 <- separate(orange_2015_NO2,Date, c("year","month","date"), sep = "-")
orange_2015_NO2 <- aggregate(orange_2015_NO2[, c(4,5,7,8)], list(orange_2015_NO2$year,orange_2015_NO2$COUNTY), mean)
colnames(orange_2015_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#orange 2015 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/orange/2015")
orange_2015_O <- read.csv("o.csv", header=T, na.strings=c(""), stringsAsFactors = T)
orange_2015_O <- orange_2015_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
orange_2015_O$Date <- parse_date_time(orange_2015_O$Date, c("%m-%d-%y", "%m/%d/%y"))
orange_2015_O <- separate(orange_2015_O,Date, c("year","month","date"), sep = "-")
orange_2015_O <- aggregate(orange_2015_O[, c(4,5,7,8)], list(orange_2015_O$year,orange_2015_O$COUNTY), mean)
colnames(orange_2015_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#orange 2015 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/orange/2015")
orange_2015_PM2.5 <- read.csv("pm2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
orange_2015_PM2.5 <- orange_2015_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
orange_2015_PM2.5$Date <- parse_date_time(orange_2015_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
orange_2015_PM2.5 <- separate(orange_2015_PM2.5,Date, c("year","month","date"), sep = "-")
orange_2015_PM2.5 <- aggregate(orange_2015_PM2.5[, c(4,5,7,8)], list(orange_2015_PM2.5$year,orange_2015_PM2.5$COUNTY), mean)
colnames(orange_2015_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#orange 2015 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/orange/2015")
orange_2015_PM10 <- read.csv("pm10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
orange_2015_PM10 <- orange_2015_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
orange_2015_PM10$Date <- parse_date_time(orange_2015_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
orange_2015_PM10 <- separate(orange_2015_PM10,Date, c("year","month","date"), sep = "-")
orange_2015_PM10 <- aggregate(orange_2015_PM10[, c(4,5,7,8)], list(orange_2015_PM10$year,orange_2015_PM10$COUNTY), mean)
colnames(orange_2015_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#orange 2015 all pollutant data
orange_2015 <- cbind(orange_2015_co,orange_2015_NO2$NO2_concentration_value,orange_2015_NO2$NO2_AQI,orange_2015_O$O3_concentration_value,orange_2015_O$O3_AQI,orange_2015_PM2.5$PM2.5_concentration_value,orange_2015_PM2.5$PM2.5_AQI,orange_2015_PM10$PM10_concentration_value,orange_2015_PM10$PM10_AQI)
orange_2015 <- orange_2015[c(1:4,7:14,5,6)]
colnames(orange_2015) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#-------------------------------------------------------------------------------------------------------
#orange 2016 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/orange/2016")
orange_2016_co <- read.csv("co.csv", header=T, na.strings=c(""), stringsAsFactors = T)
orange_2016_co <- orange_2016_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
orange_2016_co$Date <- parse_date_time(orange_2016_co$Date, c("%m-%d-%y", "%m/%d/%y"))
orange_2016_co <- separate(orange_2016_co,Date, c("year","month","date"), sep = "-")
orange_2016_co <- aggregate(orange_2016_co[, c(4,5,7,8)], list(orange_2016_co$year,orange_2016_co$COUNTY), mean)
colnames(orange_2016_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#orange 2016 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/orange/2016")
orange_2016_NO2 <- read.csv("no2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
orange_2016_NO2 <- orange_2016_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
orange_2016_NO2$Date <- parse_date_time(orange_2016_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
orange_2016_NO2 <- separate(orange_2016_NO2,Date, c("year","month","date"), sep = "-")
orange_2016_NO2 <- aggregate(orange_2016_NO2[, c(4,5,7,8)], list(orange_2016_NO2$year,orange_2016_NO2$COUNTY), mean)
colnames(orange_2016_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#orange 2016 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/orange/2016")
orange_2016_O <- read.csv("o.csv", header=T, na.strings=c(""), stringsAsFactors = T)
orange_2016_O <- orange_2016_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
orange_2016_O$Date <- parse_date_time(orange_2016_O$Date, c("%m-%d-%y", "%m/%d/%y"))
orange_2016_O <- separate(orange_2016_O,Date, c("year","month","date"), sep = "-")
orange_2016_O <- aggregate(orange_2016_O[, c(4,5,7,8)], list(orange_2016_O$year,orange_2016_O$COUNTY), mean)
colnames(orange_2016_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#orange 2016 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/orange/2016")
orange_2016_PM2.5 <- read.csv("pm2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
orange_2016_PM2.5 <- orange_2016_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
orange_2016_PM2.5$Date <- parse_date_time(orange_2016_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
orange_2016_PM2.5 <- separate(orange_2016_PM2.5,Date, c("year","month","date"), sep = "-")
orange_2016_PM2.5 <- aggregate(orange_2016_PM2.5[, c(4,5,7,8)], list(orange_2016_PM2.5$year,orange_2016_PM2.5$COUNTY), mean)
colnames(orange_2016_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#orange 2016 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/orange/2016")
orange_2016_PM10 <- read.csv("pm10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
orange_2016_PM10 <- orange_2016_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
orange_2016_PM10$Date <- parse_date_time(orange_2016_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
orange_2016_PM10 <- separate(orange_2016_PM10,Date, c("year","month","date"), sep = "-")
orange_2016_PM10 <- aggregate(orange_2016_PM10[, c(4,5,7,8)], list(orange_2016_PM10$year,orange_2016_PM10$COUNTY), mean)
colnames(orange_2016_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#orange 2016 all pollutant data
orange_2016 <- cbind(orange_2016_co,orange_2016_NO2$NO2_concentration_value,orange_2016_NO2$NO2_AQI,orange_2016_O$O3_concentration_value,orange_2016_O$O3_AQI,orange_2016_PM2.5$PM2.5_concentration_value,orange_2016_PM2.5$PM2.5_AQI,orange_2016_PM10$PM10_concentration_value,orange_2016_PM10$PM10_AQI)
orange_2016 <- orange_2016[c(1:4,7:14,5,6)]
colnames(orange_2016) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#----------------------------------------------------------------------------------------------------------
#orange 2017 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/orange/2017")
orange_2017_co <- read.csv("co.csv", header=T, na.strings=c(""), stringsAsFactors = T)
orange_2017_co <- orange_2017_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
orange_2017_co$Date <- parse_date_time(orange_2017_co$Date, c("%m-%d-%y", "%m/%d/%y"))
orange_2017_co <- separate(orange_2017_co,Date, c("year","month","date"), sep = "-")
orange_2017_co <- aggregate(orange_2017_co[, c(4,5,7,8)], list(orange_2017_co$year,orange_2017_co$COUNTY), mean)
colnames(orange_2017_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#orange 2017 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/orange/2017")
orange_2017_NO2 <- read.csv("no2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
orange_2017_NO2 <- orange_2017_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
orange_2017_NO2$Date <- parse_date_time(orange_2017_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
orange_2017_NO2 <- separate(orange_2017_NO2,Date, c("year","month","date"), sep = "-")
orange_2017_NO2 <- aggregate(orange_2017_NO2[, c(4,5,7,8)], list(orange_2017_NO2$year,orange_2017_NO2$COUNTY), mean)
colnames(orange_2017_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#orange 2017 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/orange/2017")
orange_2017_O <- read.csv("o.csv", header=T, na.strings=c(""), stringsAsFactors = T)
orange_2017_O <- orange_2017_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
orange_2017_O$Date <- parse_date_time(orange_2017_O$Date, c("%m-%d-%y", "%m/%d/%y"))
orange_2017_O <- separate(orange_2017_O,Date, c("year","month","date"), sep = "-")
orange_2017_O <- aggregate(orange_2017_O[, c(4,5,7,8)], list(orange_2017_O$year,orange_2017_O$COUNTY), mean)
colnames(orange_2017_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#orange 2017 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/orange/2017")
orange_2017_PM2.5 <- read.csv("pm2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
orange_2017_PM2.5 <- orange_2017_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
orange_2017_PM2.5$Date <- parse_date_time(orange_2017_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
orange_2017_PM2.5 <- separate(orange_2017_PM2.5,Date, c("year","month","date"), sep = "-")
orange_2017_PM2.5 <- aggregate(orange_2017_PM2.5[, c(4,5,7,8)], list(orange_2017_PM2.5$year,orange_2017_PM2.5$COUNTY), mean)
colnames(orange_2017_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#orange 2017 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/orange/2017")
orange_2017_PM10 <- read.csv("pm10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
orange_2017_PM10 <- orange_2017_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
orange_2017_PM10$Date <- parse_date_time(orange_2017_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
orange_2017_PM10 <- separate(orange_2017_PM10,Date, c("year","month","date"), sep = "-")
orange_2017_PM10 <- aggregate(orange_2017_PM10[, c(4,5,7,8)], list(orange_2017_PM10$year,orange_2017_PM10$COUNTY), mean)
colnames(orange_2017_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#orange 2017 all pollutant data
orange_2017 <- cbind(orange_2017_co,orange_2017_NO2$NO2_concentration_value,orange_2017_NO2$NO2_AQI,orange_2017_O$O3_concentration_value,orange_2017_O$O3_AQI,orange_2017_PM2.5$PM2.5_concentration_value,orange_2017_PM2.5$PM2.5_AQI,orange_2017_PM10$PM10_concentration_value,orange_2017_PM10$PM10_AQI)
orange_2017 <- orange_2017[c(1:4,7:14,5,6)]
colnames(orange_2017) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#--------------------------------------------------------------------------------------------------------
#orange final data
orange <- rbind(orange_2011,orange_2012,orange_2013,orange_2014,orange_2015,orange_2016,orange_2017)
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/FINAL_DATASETS")
write.csv(orange, file = "orange.csv")