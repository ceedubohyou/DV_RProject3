flightdf3 %>% ggplot(aes(x = LNG, y = LAT)) +
  geom_point() +
  ggtitle("Map of Airports in the United States") +
  labs(x = "Longitude", y = "Latitude") +
  theme(
    plot.title = element_text(size = 18, color = "blue", face = "bold", vjust = 2),
    panel.grid.major = element_line(color = "blue")
  ) +
  scale_x_continuous(breaks = seq(-180, -60, 10)) +
  scale_y_continuous(breaks = seq(0, 90, 10)) +
  coord_fixed()
