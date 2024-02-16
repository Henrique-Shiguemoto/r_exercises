library(tidyverse)

# 1 - Obtain a visualization that shows the relationship between 
# carat and price. (Pay attention to the types of variables 
# you’re using so that you create the appropriate type 
# of visualization.)

ggplot(data = diamonds, aes(x = carat, y = price)) + 
    geom_point()

# 2 - Repeat the previous problem, but replace carat with 
# clarity. (Be careful, you might not be able to use the 
# same type of visualization as in the previous problem.)

ggplot(data = diamonds, aes(x = clarity, y = price)) + 
    geom_boxplot()

# 3 - According to your plot from the previous problem, which
# type of clarity is priced the highest? Which type has the
# most variation in price?

# Probably SI2? Because the median value in the boxplot is the highest of
# all the categories.
    
# 4 - Referring again to the plot from Exercise 2, why do 
# you think all of the outliers are above the main cluster
# of data points?

# Well, since we're analysing diamonds, it makes sense that diamonds 
# which are outliers would the one that are more expensive, because 
# cheap diamonds aren't a thing I'd guess.
    
# 5 - Obtain a box plot of price vs. color. Three of the 
# aesthetics included in geom_boxplot are color, fill, and
# linetype. Try mapping the cut variable to each of these 
# aesthetics. Which of these three (in your opinion) is the
# most effective way to distinguish among different diamond cuts
# in your box plot and why?

# IMO, the first one is the best one (color), followed by the second one 
# (fill) and then the third one (linetype). Since there are only 5 categories
# for cut, using color to distinguish between categories seems to be a natural
# fit. Also, distinguishing categories through line types in difficult because
# some of them are very similar to each other. Moreover, the fill parameter
# was able to distinguish the boxes really well, but didn't color the outliers.

ggplot(data = diamonds, aes(x = color, y = price, colour = cut)) + 
    labs(title = "Diamond Prices vs Colors vs Cuts",
         subtitle = "Distribution of prices of diamonds according to its color and cut",
         x = "Price (US Dollars)",
         y = "Color",
         colour = "Cut") + 
    geom_boxplot()

ggplot(data = diamonds, aes(x = color, y = price, fill = cut)) + 
    labs(title = "Diamond Prices vs Colors vs Cuts",
         subtitle = "Distribution of prices of diamonds according to its color and cut",
         x = "Price (US Dollars)",
         y = "Color",
         fill = "Cut") + 
    geom_boxplot()

ggplot(data = diamonds, aes(x = color, y = price, linetype = cut)) + 
    labs(title = "Diamond Prices vs Colors vs Cuts",
         subtitle = "Distribution of prices of diamonds according to its color and cut",
         x = "Price (US Dollars)",
         y = "Color",
         linetype = "Cut") + 
    geom_boxplot()

# 6 - Re-do Exercise 2, but display the boxes horizontally, 
# arranged by average price value.

ggplot(data = diamonds, aes(x = reorder(clarity, price), y = price)) + 
    labs(title = "Diamond Prices vs Clarity",
         subtitle = "Distribution of prices of diamonds according to its clarity (Arranged by average price)",
         x = "Price (US Dollars)",
         y = "Clarity") + 
    geom_boxplot() + 
    coord_flip()
