colnames(uscitiesdf)[3] <- "DEPARTURECITY"
colnames(flightcountriesdf)[3] <- "TOTALNUMROUTES"

flightdf1 <- flightcitiesdf %>% left_join(flightcountriesdf, by = c("DEPARTURECOUNTRY", "ARRIVALCOUNTRY")) %>% group_by(DEPARTURECITY) %>% summarize(TOTALDISTANCEOUT = sum(DISTANCE), NUMFLIGHTS = n()) %>% arrange(desc(TOTALDISTANCEOUT))
