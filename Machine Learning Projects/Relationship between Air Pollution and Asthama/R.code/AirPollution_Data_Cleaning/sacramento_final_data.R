#sacramento 2011 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sacramento/2011")
sacramento_2011_co <- read.csv("2011sacramentoCO.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sacramento_2011_co <- sacramento_2011_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sacramento_2011_co$Date <- parse_date_time(sacramento_2011_co$Date, c("%m-%d-%y", "%m/%d/%y"))
sacramento_2011_co <- separate(sacramento_2011_co,Date, c("year","month","date"), sep = "-")
sacramento_2011_co <- aggregate(sacramento_2011_co[, c(4,5,7,8)], list(sacramento_2011_co$year,sacramento_2011_co$COUNTY), mean)
colnames(sacramento_2011_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#sacramento 2011 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sacramento/2011")
sacramento_2011_NO2 <- read.csv("2011sacramentoNO2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sacramento_2011_NO2 <- sacramento_2011_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sacramento_2011_NO2$Date <- parse_date_time(sacramento_2011_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
sacramento_2011_NO2 <- separate(sacramento_2011_NO2,Date, c("year","month","date"), sep = "-")
sacramento_2011_NO2 <- aggregate(sacramento_2011_NO2[, c(4,5,7,8)], list(sacramento_2011_NO2$year,sacramento_2011_NO2$COUNTY), mean)
colnames(sacramento_2011_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#sacramento 2011 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sacramento/2011")
sacramento_2011_O <- read.csv("2011sacramentoozone.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sacramento_2011_O <- sacramento_2011_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sacramento_2011_O$Date <- parse_date_time(sacramento_2011_O$Date, c("%m-%d-%y", "%m/%d/%y"))
sacramento_2011_O <- separate(sacramento_2011_O,Date, c("year","month","date"), sep = "-")
sacramento_2011_O <- aggregate(sacramento_2011_O[, c(4,5,7,8)], list(sacramento_2011_O$year,sacramento_2011_O$COUNTY), mean)
colnames(sacramento_2011_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#sacramento 2011 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sacramento/2011")
sacramento_2011_PM2.5 <- read.csv("2011sacramentoPM2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sacramento_2011_PM2.5 <- sacramento_2011_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sacramento_2011_PM2.5$Date <- parse_date_time(sacramento_2011_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
sacramento_2011_PM2.5 <- separate(sacramento_2011_PM2.5,Date, c("year","month","date"), sep = "-")
sacramento_2011_PM2.5 <- aggregate(sacramento_2011_PM2.5[, c(4,5,7,8)], list(sacramento_2011_PM2.5$year,sacramento_2011_PM2.5$COUNTY), mean)
colnames(sacramento_2011_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#sacramento 2011 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sacramento/2011")
sacramento_2011_PM10 <- read.csv("2011sacramentoPM10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sacramento_2011_PM10 <- sacramento_2011_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sacramento_2011_PM10$Date <- parse_date_time(sacramento_2011_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
sacramento_2011_PM10 <- separate(sacramento_2011_PM10,Date, c("year","month","date"), sep = "-")
sacramento_2011_PM10 <- aggregate(sacramento_2011_PM10[, c(4,5,7,8)], list(sacramento_2011_PM10$year,sacramento_2011_PM10$COUNTY), mean)
colnames(sacramento_2011_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#sacramento 2011 all pollutant data
sacramento_2011 <- cbind(sacramento_2011_co,sacramento_2011_NO2$NO2_concentration_value,sacramento_2011_NO2$NO2_AQI,sacramento_2011_O$O3_concentration_value,sacramento_2011_O$O3_AQI,sacramento_2011_PM2.5$PM2.5_concentration_value,sacramento_2011_PM2.5$PM2.5_AQI,sacramento_2011_PM10$PM10_concentration_value,sacramento_2011_PM10$PM10_AQI)
sacramento_2011 <- sacramento_2011[c(1:4,7:14,5,6)]
colnames(sacramento_2011) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#---------------------------------------------------------------------------------------------------
#sacramento 2012 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sacramento/2012")
sacramento_2012_co <- read.csv("2012sacramentoCO.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sacramento_2012_co <- sacramento_2012_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sacramento_2012_co$Date <- parse_date_time(sacramento_2012_co$Date, c("%m-%d-%y", "%m/%d/%y"))
sacramento_2012_co <- separate(sacramento_2012_co,Date, c("year","month","date"), sep = "-")
sacramento_2012_co <- aggregate(sacramento_2012_co[, c(4,5,7,8)], list(sacramento_2012_co$year,sacramento_2012_co$COUNTY), mean)
colnames(sacramento_2012_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#sacramento 2012 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sacramento/2012")
sacramento_2012_NO2 <- read.csv("2012sacramentoNO2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sacramento_2012_NO2 <- sacramento_2012_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sacramento_2012_NO2$Date <- parse_date_time(sacramento_2012_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
sacramento_2012_NO2 <- separate(sacramento_2012_NO2,Date, c("year","month","date"), sep = "-")
sacramento_2012_NO2 <- aggregate(sacramento_2012_NO2[, c(4,5,7,8)], list(sacramento_2012_NO2$year,sacramento_2012_NO2$COUNTY), mean)
colnames(sacramento_2012_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#sacramento 2012 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sacramento/2012")
sacramento_2012_O <- read.csv("2012sacramentoozone.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sacramento_2012_O <- sacramento_2012_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sacramento_2012_O$Date <- parse_date_time(sacramento_2012_O$Date, c("%m-%d-%y", "%m/%d/%y"))
sacramento_2012_O <- separate(sacramento_2012_O,Date, c("year","month","date"), sep = "-")
sacramento_2012_O <- aggregate(sacramento_2012_O[, c(4,5,7,8)], list(sacramento_2012_O$year,sacramento_2012_O$COUNTY), mean)
colnames(sacramento_2012_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#sacramento 2012 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sacramento/2012")
sacramento_2012_PM2.5 <- read.csv("2012sacramentoPM2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sacramento_2012_PM2.5 <- sacramento_2012_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sacramento_2012_PM2.5$Date <- parse_date_time(sacramento_2012_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
sacramento_2012_PM2.5 <- separate(sacramento_2012_PM2.5,Date, c("year","month","date"), sep = "-")
sacramento_2012_PM2.5 <- aggregate(sacramento_2012_PM2.5[, c(4,5,7,8)], list(sacramento_2012_PM2.5$year,sacramento_2012_PM2.5$COUNTY), mean)
colnames(sacramento_2012_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#sacramento 2012 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sacramento/2012")
sacramento_2012_PM10 <- read.csv("2012sacramentoPM10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sacramento_2012_PM10 <- sacramento_2012_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sacramento_2012_PM10$Date <- parse_date_time(sacramento_2012_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
sacramento_2012_PM10 <- separate(sacramento_2012_PM10,Date, c("year","month","date"), sep = "-")
sacramento_2012_PM10 <- aggregate(sacramento_2012_PM10[, c(4,5,7,8)], list(sacramento_2012_PM10$year,sacramento_2012_PM10$COUNTY), mean)
colnames(sacramento_2012_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#sacramento 2012 all pollutant data
sacramento_2012 <- cbind(sacramento_2012_co,sacramento_2012_NO2$NO2_concentration_value,sacramento_2012_NO2$NO2_AQI,sacramento_2012_O$O3_concentration_value,sacramento_2012_O$O3_AQI,sacramento_2012_PM2.5$PM2.5_concentration_value,sacramento_2012_PM2.5$PM2.5_AQI,sacramento_2012_PM10$PM10_concentration_value,sacramento_2012_PM10$PM10_AQI)
sacramento_2012 <- sacramento_2012[c(1:4,7:14,5,6)]
colnames(sacramento_2012) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#-------------------------------------------------------------------------------------------------------
#sacramento 2013 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sacramento/2013")
sacramento_2013_co <- read.csv("2013sacramentoCO.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sacramento_2013_co <- sacramento_2013_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sacramento_2013_co$Date <- parse_date_time(sacramento_2013_co$Date, c("%m-%d-%y", "%m/%d/%y"))
sacramento_2013_co <- separate(sacramento_2013_co,Date, c("year","month","date"), sep = "-")
sacramento_2013_co <- aggregate(sacramento_2013_co[, c(4,5,7,8)], list(sacramento_2013_co$year,sacramento_2013_co$COUNTY), mean)
colnames(sacramento_2013_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#sacramento 2013 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sacramento/2013")
sacramento_2013_NO2 <- read.csv("2013sacramentoNO2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sacramento_2013_NO2 <- sacramento_2013_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sacramento_2013_NO2$Date <- parse_date_time(sacramento_2013_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
sacramento_2013_NO2 <- separate(sacramento_2013_NO2,Date, c("year","month","date"), sep = "-")
sacramento_2013_NO2 <- aggregate(sacramento_2013_NO2[, c(4,5,7,8)], list(sacramento_2013_NO2$year,sacramento_2013_NO2$COUNTY), mean)
colnames(sacramento_2013_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#sacramento 2013 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sacramento/2013")
sacramento_2013_O <- read.csv("2013sacramentoozone.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sacramento_2013_O <- sacramento_2013_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sacramento_2013_O$Date <- parse_date_time(sacramento_2013_O$Date, c("%m-%d-%y", "%m/%d/%y"))
sacramento_2013_O <- separate(sacramento_2013_O,Date, c("year","month","date"), sep = "-")
sacramento_2013_O <- aggregate(sacramento_2013_O[, c(4,5,7,8)], list(sacramento_2013_O$year,sacramento_2013_O$COUNTY), mean)
colnames(sacramento_2013_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#sacramento 2013 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sacramento/2013")
sacramento_2013_PM2.5 <- read.csv("2013sacramentoPM2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sacramento_2013_PM2.5 <- sacramento_2013_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sacramento_2013_PM2.5$Date <- parse_date_time(sacramento_2013_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
sacramento_2013_PM2.5 <- separate(sacramento_2013_PM2.5,Date, c("year","month","date"), sep = "-")
sacramento_2013_PM2.5 <- aggregate(sacramento_2013_PM2.5[, c(4,5,7,8)], list(sacramento_2013_PM2.5$year,sacramento_2013_PM2.5$COUNTY), mean)
colnames(sacramento_2013_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#sacramento 2013 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sacramento/2013")
sacramento_2013_PM10 <- read.csv("2013sacramentoPM10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sacramento_2013_PM10 <- sacramento_2013_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sacramento_2013_PM10$Date <- parse_date_time(sacramento_2013_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
sacramento_2013_PM10 <- separate(sacramento_2013_PM10,Date, c("year","month","date"), sep = "-")
sacramento_2013_PM10 <- aggregate(sacramento_2013_PM10[, c(4,5,7,8)], list(sacramento_2013_PM10$year,sacramento_2013_PM10$COUNTY), mean)
colnames(sacramento_2013_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#sacramento 2013 all pollutant data
sacramento_2013 <- cbind(sacramento_2013_co,sacramento_2013_NO2$NO2_concentration_value,sacramento_2013_NO2$NO2_AQI,sacramento_2013_O$O3_concentration_value,sacramento_2013_O$O3_AQI,sacramento_2013_PM2.5$PM2.5_concentration_value,sacramento_2013_PM2.5$PM2.5_AQI,sacramento_2013_PM10$PM10_concentration_value,sacramento_2013_PM10$PM10_AQI)
sacramento_2013 <- sacramento_2013[c(1:4,7:14,5,6)]
colnames(sacramento_2013) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#-------------------------------------------------------------------------------------------------------------
#sacramento 2014 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sacramento/2014")
sacramento_2014_co <- read.csv("2014sacramentoCO.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sacramento_2014_co <- sacramento_2014_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sacramento_2014_co$Date <- parse_date_time(sacramento_2014_co$Date, c("%m-%d-%y", "%m/%d/%y"))
sacramento_2014_co <- separate(sacramento_2014_co,Date, c("year","month","date"), sep = "-")
sacramento_2014_co <- aggregate(sacramento_2014_co[, c(4,5,7,8)], list(sacramento_2014_co$year,sacramento_2014_co$COUNTY), mean)
colnames(sacramento_2014_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#sacramento 2014 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sacramento/2014")
sacramento_2014_NO2 <- read.csv("2014sacramentoNO2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sacramento_2014_NO2 <- sacramento_2014_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sacramento_2014_NO2$Date <- parse_date_time(sacramento_2014_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
sacramento_2014_NO2 <- separate(sacramento_2014_NO2,Date, c("year","month","date"), sep = "-")
sacramento_2014_NO2 <- aggregate(sacramento_2014_NO2[, c(4,5,7,8)], list(sacramento_2014_NO2$year,sacramento_2014_NO2$COUNTY), mean)
colnames(sacramento_2014_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#sacramento 2014 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sacramento/2014")
sacramento_2014_O <- read.csv("2014sacramentoozone.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sacramento_2014_O <- sacramento_2014_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sacramento_2014_O$Date <- parse_date_time(sacramento_2014_O$Date, c("%m-%d-%y", "%m/%d/%y"))
sacramento_2014_O <- separate(sacramento_2014_O,Date, c("year","month","date"), sep = "-")
sacramento_2014_O <- aggregate(sacramento_2014_O[, c(4,5,7,8)], list(sacramento_2014_O$year,sacramento_2014_O$COUNTY), mean)
colnames(sacramento_2014_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#sacramento 2014 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sacramento/2014")
sacramento_2014_PM2.5 <- read.csv("2014sacramentoPM2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sacramento_2014_PM2.5 <- sacramento_2014_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sacramento_2014_PM2.5$Date <- parse_date_time(sacramento_2014_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
sacramento_2014_PM2.5 <- separate(sacramento_2014_PM2.5,Date, c("year","month","date"), sep = "-")
sacramento_2014_PM2.5 <- aggregate(sacramento_2014_PM2.5[, c(4,5,7,8)], list(sacramento_2014_PM2.5$year,sacramento_2014_PM2.5$COUNTY), mean)
colnames(sacramento_2014_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#sacramento 2014 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sacramento/2014")
sacramento_2014_PM10 <- read.csv("2014sacramentoPM10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sacramento_2014_PM10 <- sacramento_2014_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sacramento_2014_PM10$Date <- parse_date_time(sacramento_2014_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
sacramento_2014_PM10 <- separate(sacramento_2014_PM10,Date, c("year","month","date"), sep = "-")
sacramento_2014_PM10 <- aggregate(sacramento_2014_PM10[, c(4,5,7,8)], list(sacramento_2014_PM10$year,sacramento_2014_PM10$COUNTY), mean)
colnames(sacramento_2014_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#sacramento 2014 all pollutant data
sacramento_2014 <- cbind(sacramento_2014_co,sacramento_2014_NO2$NO2_concentration_value,sacramento_2014_NO2$NO2_AQI,sacramento_2014_O$O3_concentration_value,sacramento_2014_O$O3_AQI,sacramento_2014_PM2.5$PM2.5_concentration_value,sacramento_2014_PM2.5$PM2.5_AQI,sacramento_2014_PM10$PM10_concentration_value,sacramento_2014_PM10$PM10_AQI)
sacramento_2014 <- sacramento_2014[c(1:4,7:14,5,6)]
colnames(sacramento_2014) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#----------------------------------------------------------------------------------------------------------------------

#sacramento 2015 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sacramento/2015")
sacramento_2015_co <- read.csv("2015sacramentoCO.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sacramento_2015_co <- sacramento_2015_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sacramento_2015_co$Date <- parse_date_time(sacramento_2015_co$Date, c("%m-%d-%y", "%m/%d/%y"))
sacramento_2015_co <- separate(sacramento_2015_co,Date, c("year","month","date"), sep = "-")
sacramento_2015_co <- aggregate(sacramento_2015_co[, c(4,5,7,8)], list(sacramento_2015_co$year,sacramento_2015_co$COUNTY), mean)
colnames(sacramento_2015_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#sacramento 2015 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sacramento/2015")
sacramento_2015_NO2 <- read.csv("2015sacramentoNO2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sacramento_2015_NO2 <- sacramento_2015_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sacramento_2015_NO2$Date <- parse_date_time(sacramento_2015_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
sacramento_2015_NO2 <- separate(sacramento_2015_NO2,Date, c("year","month","date"), sep = "-")
sacramento_2015_NO2 <- aggregate(sacramento_2015_NO2[, c(4,5,7,8)], list(sacramento_2015_NO2$year,sacramento_2015_NO2$COUNTY), mean)
colnames(sacramento_2015_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#sacramento 2015 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sacramento/2015")
sacramento_2015_O <- read.csv("2015sacramentoozone.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sacramento_2015_O <- sacramento_2015_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sacramento_2015_O$Date <- parse_date_time(sacramento_2015_O$Date, c("%m-%d-%y", "%m/%d/%y"))
sacramento_2015_O <- separate(sacramento_2015_O,Date, c("year","month","date"), sep = "-")
sacramento_2015_O <- aggregate(sacramento_2015_O[, c(4,5,7,8)], list(sacramento_2015_O$year,sacramento_2015_O$COUNTY), mean)
colnames(sacramento_2015_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#sacramento 2015 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sacramento/2015")
sacramento_2015_PM2.5 <- read.csv("2015sacramentoPM2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sacramento_2015_PM2.5 <- sacramento_2015_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sacramento_2015_PM2.5$Date <- parse_date_time(sacramento_2015_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
sacramento_2015_PM2.5 <- separate(sacramento_2015_PM2.5,Date, c("year","month","date"), sep = "-")
sacramento_2015_PM2.5 <- aggregate(sacramento_2015_PM2.5[, c(4,5,7,8)], list(sacramento_2015_PM2.5$year,sacramento_2015_PM2.5$COUNTY), mean)
colnames(sacramento_2015_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#sacramento 2015 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sacramento/2015")
sacramento_2015_PM10 <- read.csv("2015sacramentoPM10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sacramento_2015_PM10 <- sacramento_2015_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sacramento_2015_PM10$Date <- parse_date_time(sacramento_2015_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
sacramento_2015_PM10 <- separate(sacramento_2015_PM10,Date, c("year","month","date"), sep = "-")
sacramento_2015_PM10 <- aggregate(sacramento_2015_PM10[, c(4,5,7,8)], list(sacramento_2015_PM10$year,sacramento_2015_PM10$COUNTY), mean)
colnames(sacramento_2015_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#sacramento 2015 all pollutant data
sacramento_2015 <- cbind(sacramento_2015_co,sacramento_2015_NO2$NO2_concentration_value,sacramento_2015_NO2$NO2_AQI,sacramento_2015_O$O3_concentration_value,sacramento_2015_O$O3_AQI,sacramento_2015_PM2.5$PM2.5_concentration_value,sacramento_2015_PM2.5$PM2.5_AQI,sacramento_2015_PM10$PM10_concentration_value,sacramento_2015_PM10$PM10_AQI)
sacramento_2015 <- sacramento_2015[c(1:4,7:14,5,6)]
colnames(sacramento_2015) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#-------------------------------------------------------------------------------------------------------
#sacramento 2016 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sacramento/2016")
sacramento_2016_co <- read.csv("2016sacramentoCO.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sacramento_2016_co <- sacramento_2016_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sacramento_2016_co$Date <- parse_date_time(sacramento_2016_co$Date, c("%m-%d-%y", "%m/%d/%y"))
sacramento_2016_co <- separate(sacramento_2016_co,Date, c("year","month","date"), sep = "-")
sacramento_2016_co <- aggregate(sacramento_2016_co[, c(4,5,7,8)], list(sacramento_2016_co$year,sacramento_2016_co$COUNTY), mean)
colnames(sacramento_2016_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#sacramento 2016 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sacramento/2016")
sacramento_2016_NO2 <- read.csv("2016sacramentoNO2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sacramento_2016_NO2 <- sacramento_2016_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sacramento_2016_NO2$Date <- parse_date_time(sacramento_2016_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
sacramento_2016_NO2 <- separate(sacramento_2016_NO2,Date, c("year","month","date"), sep = "-")
sacramento_2016_NO2 <- aggregate(sacramento_2016_NO2[, c(4,5,7,8)], list(sacramento_2016_NO2$year,sacramento_2016_NO2$COUNTY), mean)
colnames(sacramento_2016_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#sacramento 2016 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sacramento/2016")
sacramento_2016_O <- read.csv("2016sacramentoozone.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sacramento_2016_O <- sacramento_2016_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sacramento_2016_O$Date <- parse_date_time(sacramento_2016_O$Date, c("%m-%d-%y", "%m/%d/%y"))
sacramento_2016_O <- separate(sacramento_2016_O,Date, c("year","month","date"), sep = "-")
sacramento_2016_O <- aggregate(sacramento_2016_O[, c(4,5,7,8)], list(sacramento_2016_O$year,sacramento_2016_O$COUNTY), mean)
colnames(sacramento_2016_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#sacramento 2016 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sacramento/2016")
sacramento_2016_PM2.5 <- read.csv("2016sacramentoPM2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sacramento_2016_PM2.5 <- sacramento_2016_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sacramento_2016_PM2.5$Date <- parse_date_time(sacramento_2016_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
sacramento_2016_PM2.5 <- separate(sacramento_2016_PM2.5,Date, c("year","month","date"), sep = "-")
sacramento_2016_PM2.5 <- aggregate(sacramento_2016_PM2.5[, c(4,5,7,8)], list(sacramento_2016_PM2.5$year,sacramento_2016_PM2.5$COUNTY), mean)
colnames(sacramento_2016_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#sacramento 2016 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sacramento/2016")
sacramento_2016_PM10 <- read.csv("2016sacramentoPM10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sacramento_2016_PM10 <- sacramento_2016_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sacramento_2016_PM10$Date <- parse_date_time(sacramento_2016_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
sacramento_2016_PM10 <- separate(sacramento_2016_PM10,Date, c("year","month","date"), sep = "-")
sacramento_2016_PM10 <- aggregate(sacramento_2016_PM10[, c(4,5,7,8)], list(sacramento_2016_PM10$year,sacramento_2016_PM10$COUNTY), mean)
colnames(sacramento_2016_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#sacramento 2016 all pollutant data
sacramento_2016 <- cbind(sacramento_2016_co,sacramento_2016_NO2$NO2_concentration_value,sacramento_2016_NO2$NO2_AQI,sacramento_2016_O$O3_concentration_value,sacramento_2016_O$O3_AQI,sacramento_2016_PM2.5$PM2.5_concentration_value,sacramento_2016_PM2.5$PM2.5_AQI,sacramento_2016_PM10$PM10_concentration_value,sacramento_2016_PM10$PM10_AQI)
sacramento_2016 <- sacramento_2016[c(1:4,7:14,5,6)]
colnames(sacramento_2016) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#----------------------------------------------------------------------------------------------------------
#sacramento 2017 CO
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sacramento/2017")
sacramento_2017_co <- read.csv("2017sacramentoCO.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sacramento_2017_co <- sacramento_2017_co[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sacramento_2017_co$Date <- parse_date_time(sacramento_2017_co$Date, c("%m-%d-%y", "%m/%d/%y"))
sacramento_2017_co <- separate(sacramento_2017_co,Date, c("year","month","date"), sep = "-")
sacramento_2017_co <- aggregate(sacramento_2017_co[, c(4,5,7,8)], list(sacramento_2017_co$year,sacramento_2017_co$COUNTY), mean)
colnames(sacramento_2017_co) <- c("year", "county","CO_concentration_value","CO_AQI","lattitude","longitude")
#sacramento 2017 NO2
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sacramento/2017")
sacramento_2017_NO2 <- read.csv("2017sacramentoNO2.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sacramento_2017_NO2 <- sacramento_2017_NO2[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sacramento_2017_NO2$Date <- parse_date_time(sacramento_2017_NO2$Date, c("%m-%d-%y", "%m/%d/%y"))
sacramento_2017_NO2 <- separate(sacramento_2017_NO2,Date, c("year","month","date"), sep = "-")
sacramento_2017_NO2 <- aggregate(sacramento_2017_NO2[, c(4,5,7,8)], list(sacramento_2017_NO2$year,sacramento_2017_NO2$COUNTY), mean)
colnames(sacramento_2017_NO2) <- c("year", "county","NO2_concentration_value","NO2_AQI","lattitude","longitude")
#sacramento 2017 O3
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sacramento/2017")
sacramento_2017_O <- read.csv("2017sacramentoozone.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sacramento_2017_O <- sacramento_2017_O[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sacramento_2017_O$Date <- parse_date_time(sacramento_2017_O$Date, c("%m-%d-%y", "%m/%d/%y"))
sacramento_2017_O <- separate(sacramento_2017_O,Date, c("year","month","date"), sep = "-")
sacramento_2017_O <- aggregate(sacramento_2017_O[, c(4,5,7,8)], list(sacramento_2017_O$year,sacramento_2017_O$COUNTY), mean)
colnames(sacramento_2017_O) <- c("year", "county","O3_concentration_value","O3_AQI","lattitude","longitude")
#sacramento 2017 PM2.5
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sacramento/2017")
sacramento_2017_PM2.5 <- read.csv("2017sacramentoPM2.5.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sacramento_2017_PM2.5 <- sacramento_2017_PM2.5[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sacramento_2017_PM2.5$Date <- parse_date_time(sacramento_2017_PM2.5$Date, c("%m-%d-%y", "%m/%d/%y"))
sacramento_2017_PM2.5 <- separate(sacramento_2017_PM2.5,Date, c("year","month","date"), sep = "-")
sacramento_2017_PM2.5 <- aggregate(sacramento_2017_PM2.5[, c(4,5,7,8)], list(sacramento_2017_PM2.5$year,sacramento_2017_PM2.5$COUNTY), mean)
colnames(sacramento_2017_PM2.5) <- c("year", "county","PM2.5_concentration_value","PM2.5_AQI","lattitude","longitude")
#sacramento 2017 PM10
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/sacramento/2017")
sacramento_2017_PM10 <- read.csv("2017sacramentoPM10.csv", header=T, na.strings=c(""), stringsAsFactors = T)
sacramento_2017_PM10 <- sacramento_2017_PM10[ ,-c(2,3,4,6,8:17)]
library(lubridate)
sacramento_2017_PM10$Date <- parse_date_time(sacramento_2017_PM10$Date, c("%m-%d-%y", "%m/%d/%y"))
sacramento_2017_PM10 <- separate(sacramento_2017_PM10,Date, c("year","month","date"), sep = "-")
sacramento_2017_PM10 <- aggregate(sacramento_2017_PM10[, c(4,5,7,8)], list(sacramento_2017_PM10$year,sacramento_2017_PM10$COUNTY), mean)
colnames(sacramento_2017_PM10) <- c("year", "county","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#sacramento 2017 all pollutant data
sacramento_2017 <- cbind(sacramento_2017_co,sacramento_2017_NO2$NO2_concentration_value,sacramento_2017_NO2$NO2_AQI,sacramento_2017_O$O3_concentration_value,sacramento_2017_O$O3_AQI,sacramento_2017_PM2.5$PM2.5_concentration_value,sacramento_2017_PM2.5$PM2.5_AQI,sacramento_2017_PM10$PM10_concentration_value,sacramento_2017_PM10$PM10_AQI)
sacramento_2017 <- sacramento_2017[c(1:4,7:14,5,6)]
colnames(sacramento_2017) <- c("year", "county","CO_concentration_value","CO_AQI","NO2_concentration_value","NO2_AQI","O3_concentration_value","O3_AQI","PM2.5_concentration_value","PM2.5_AQI","PM10_concentration_value","PM10_AQI","lattitude","longitude")
#--------------------------------------------------------------------------------------------------------
#sacramento final data
sacramento <- rbind(sacramento_2011,sacramento_2012,sacramento_2013,sacramento_2014,sacramento_2015,sacramento_2016,sacramento_2017)
setwd("C:/Users/Imtiyaz/Desktop/Research in computing/Data Sets/air_pollution_data/FINAL_DATASETS")
write.csv(sacramento, file = "sacramento.csv")