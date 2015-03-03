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
  coord_fixed() +
  annotate("text", label="New York", x = -73.00, y = 40.75, size = 5, fontface = "bold", color = "red") +
  annotate("text", label="Los Angeles", x = -130.25, y = 33.97, size = 5, fontface = "bold", color = "red") +
  annotate("text", label="Chicago", x = -88.62, y = 41.89, size = 5, fontface = "bold", color = "red") +
  annotate("text", label="Dallas", x = -96.80, y = 32.79, size = 5, fontface = "bold", color = "red")
