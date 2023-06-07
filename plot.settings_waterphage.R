cbPalette <- c("#999999", "#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2", "#D55E00", "#CC79A7") #colorblind palette
treatment_cols = c("#EB9D8D", "#A4B9EB", "#D1EBA5")
treatment_cols1 = c( None =  "#A4B9EB", Phage = "#D1EBA5", AB = "#EB9D8D")
treatment_cols2 = c( N =  "#A4B9EB", P = "#D1EBA5", AB = "#EB9D8D")

pp_cols = cbPalette[1:3]


ColorBlocksFacet <- c("#e0e0e0")
my.theme = theme(panel.grid.major = element_line(linewidth  = 0.3,
                                                linetype = 'solid',
                                                colour = ColorBlocksFacet),
                 panel.background = element_rect(fill = "transparent",colour = NA), # or theme_blank()
                 panel.grid.minor = element_blank(), 
                 plot.background = element_rect(fill = "transparent",colour = NA),
                 axis.line = element_line(colour = "black", linewidth = 0.3),
                 panel.border = element_rect(color = "black", fill = "transparent"),
                 axis.text = element_text(colour = "black"),
                 text=element_text(size = 10), 
                 #text=element_text(family = "Arial", size = 10), 
                 axis.ticks.length = unit(0.25, "cm"), 
                 legend.key = element_rect(fill = "transparent"), 
                 legend.background = element_rect(fill = "transparent"),
                 title = element_text(size = 10), 
                 strip.background = element_rect(color="Black", fill="transparent", linetype="solid", linewidth = 0.5),
                 strip.text = element_text(size = 10))
                                                 
                 

col = c("grey98", (RColorBrewer::brewer.pal(n = 12, name = "Paired")),RColorBrewer::brewer.pal(n = 8, name = "Dark2"))
