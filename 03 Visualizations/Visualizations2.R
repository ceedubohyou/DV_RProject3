flightdf2 %>% ggplot(aes(x = ARRIVALCITY, y = NUMFLIGHTS)) +
  geom_bar(stat="identity") +
  ggtitle("Traffic of Ten Most Popular Airports") +
  labs(x = "Arrival City", y = "Number of Incoming Flights") +
  theme(
    plot.title = element_text(size = 18, color = "green", face = "bold", vjust = 2),
    axis.text.x = element_text(angle = 90, size = 16, vjust = 0.5),
    panel.background = element_rect(fill = "orange")
  )
