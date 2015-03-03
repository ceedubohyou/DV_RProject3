flightdf1 %>% ggplot(aes(x = NUMFLIGHTS, y = TOTALDISTANCEOUT)) +
  geom_point() +
  ggtitle("Departed Flights Total Distance vs. \nNumber of Flights") +
  labs(x = "Number of Flights", y = "Distance (km)") +
  theme(
    plot.title = element_text(size = 18, color = "purple", face = "bold", vjust = 2),
    panel.background = element_rect(fill = "grey75")
  ) +
  stat_smooth(method="lm", se=FALSE)
