require(grid)

my_grob=grobTree(textGrob("Slope = 2500",x=0.1, y=0.95,hjust=0, gp=gpar(col="blue",fontsize=15,fontface="italic")))

flightdf1 %>% ggplot(aes(x = NUMFLIGHTS, y = TOTALDISTANCEOUT)) +
  geom_point() +
  ggtitle("Departed Flights Total Distance vs. \nNumber of Flights") +
  labs(x = "Number of Flights", y = "Distance (km)") +
  theme(
    plot.title = element_text(size = 18, color = "purple", face = "bold", vjust = 2),
    panel.background = element_rect(fill = "grey75")
  ) +
  stat_smooth(method="lm", se=FALSE) + annotation_custom(my_grob)