library(tidyverse)

# Conclusion: don't use xlab, ggtitle, ylab, etc. Just use labs(), 
# all in one place.

ggplot(data = mpg, aes(x = displ, y = hwy, colour = displ, size = displ)) + 
    labs(title = "Engine Volume vs. Fuel Efficiency (Highway)",
         subtitle = "Bigger engines = More Fuel Consumption",
         caption = "Source: fueleconomy.gov",
         x = "Volume (L)",
         y = "Consumption (Miles/Gallon)",
         colour = "Volume",
         size = "Volume") + 
    geom_point()
