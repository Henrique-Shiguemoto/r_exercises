library(tidyverse)

# 1 - Check the geom_smooth documentation (?geom_smooth) to see some 
# of the other aesthetics available besides color. Produce two 
# different trend curve plots, each of which uses a different 
# aesthetic. Display your plots and describe what your chosen 
# aesthetics do.

# linetype
ggplot(data = mpg, aes(x = displ, y = hwy, linetype = drv)) + 
    geom_smooth()

# fill
ggplot(data = mpg, aes(x = displ, y = hwy, fill = drv)) + 
    geom_smooth()

# 2 - Obtain a single scatter plot that:
# - Shows the relationship between city fuel efficiency and 
#   highway fuel efficiency,
# - Color-codes the points by the type of drive train,
# - Has an overlayed trend curve with no envelope, and
# - Has a title, properly labeled axes (including units), and 
#   a properly labeled legend.

ggplot(data = mpg, aes(x = hwy, y = cty, colour = drv)) +
    geom_point() + 
    geom_smooth(se = FALSE) +
    labs(title = "Fuel Efficiency - City vs. Highway",
         subtitle = "Strong linear relationship between Fuel Consumption in cities and highways",
         x = "In Highway (Miles/Gallon)",
         y = "In City (Miles/Gallon)",
         color = "Drive Train")

# 3 - Create a trend curve of hwy vs. displ and map the class variable
# to color. What do you think of your visualization? What 
# recommendation would you make regarding mapping categorical
# variables to color?

# It has too much information clutter. Usually colors should be
# used for small category count (IDK how many is the recommendation, 
# less than 7 for sure).

ggplot(data = mpg, aes(x = displ, y = hwy, colour = class)) + 
    geom_smooth()
