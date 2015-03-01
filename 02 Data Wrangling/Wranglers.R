colnames(uscitiesdf)[3] <- "DEPARTURECITY"
colnames(flightcountriesdf)[3] <- "TOTALNUMROUTES"

flightdf <- flightcitiesdf %>% inner_join(flightcountriesdf, by = c("DEPARTURECOUNTRY", "ARRIVALCOUNTRY")) %>% group_by(DEPARTURECITY) %>% summarize(TOTALDISTANCE = sum(DISTANCE)) %>% arrange(desc(TOTALDISTANCE))

flightdf %>% tbl_df
