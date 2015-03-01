flightdf2 %>% ggplot(aes(x = ARRIVALCITY, y = TOTALDISTANCEIN)) +
  geom_bar(stat="identity") +
  theme(
    axis.text.x = element_text(angle = 85, size = 16, vjust = 0.5)
  )
