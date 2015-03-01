library("ggplot2")
library("grid")
library("RCurl")
library("dplyr")
library("tidyr")
library("jsonlite")

flightcitiesdf <- data.frame(fromJSON(getURL(URLencode('129.152.144.84:5001/rest/native/?query="select * from CITIESTOCITIES"'),httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521:ORCL', USER='C##cs329e_mh33483', PASS='orcl_mh33483', MODE='native_mode', MODEL='model', returnDimensions = 'False', returnFor = 'JSON'), verbose = TRUE)))

flightcountriesdf <- data.frame(fromJSON(getURL(URLencode('129.152.144.84:5001/rest/native/?query="select * from COUNTRIESTOCOUNTRIES"'),httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521:ORCL', USER='C##cs329e_mh33483', PASS='orcl_mh33483', MODE='native_mode', MODEL='model', returnDimensions = 'False', returnFor = 'JSON'), verbose = TRUE)))

uscitiesdf <- data.frame(fromJSON(getURL(URLencode('129.152.144.84:5001/rest/native/?query="select * from USCITIES"'),httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521:ORCL', USER='C##cs329e_mh33483', PASS='orcl_mh33483', MODE='native_mode', MODEL='model', returnDimensions = 'False', returnFor = 'JSON'), verbose = TRUE)))

tbl_df(flightcitiesdf)

tbl_df(flightcountriesdf)

tbl_df(uscitiesdf)
