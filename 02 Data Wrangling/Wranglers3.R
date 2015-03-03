flightdf3 <- uscitiesdf %>% semi_join(flightdf1, by = "DEPARTURECITY")
