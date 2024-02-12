library(tidyverse)

# 1 - Obtain a scatter plot of hwy vs. displ, but map 
# the variable class to the aesthetic shape rather 
# than to color. Why do you get a warning message?

# Because there are 7 categories in the class variable and
# the maximum number of categories the shape parameter accepts 
# is 6.

ggplot(data = mpg, aes(x = displ, y = hwy, shape = class)) + 
    ggtitle("Fuel Efficiency (Highway) vs Engine Volume vs Type of Car") +
    xlab("Volume (L)") +
    ylab("Effiency (Miles/Gallon)") +
    geom_point()

# 2 - Re-do the previous problem, mapping a categorical 
# variable with fewer categories than class to the shape
# aesthetic.

ggplot(data = mpg, aes(x = displ, y = hwy, shape = drv)) + 
    ggtitle("Fuel Efficiency (Highway) vs Engine Volume vs Drive Train") +
    xlab("Volume (L)") +
    ylab("Effiency (Miles/Gallon)") +
    geom_point()

# 3 - What happens if you map a continuous variable to shape?

# We get an error saying "A continuous variable cannot be mapped 
# to the shape aesthetic". Which makes sense.

ggplot(data = mpg, aes(x = displ, y = hwy, shape = cty)) + 
    ggtitle("Fuel Efficiency (Highway) vs Engine Volume vs Fuel Efficiency (City)") +
    xlab("Volume (L)") +
    ylab("Effiency (Miles/Gallon)") +
    geom_point()

# 4 - Try mapping variables, both continuous and categorical, 
# to the size aesthetic. What do you observe?

# Since size is a continuous parameter, using a continuous variable
# seems to be the best fit for the dataviz. Whereas when using 
# categorical variables, you want to easily differentiate between
# different categories (not true for continuous variables), but 
# this is difficult in some cases.

# Continuous
ggplot(data = mpg, aes(x = displ, y = hwy, size = cty)) + 
    ggtitle("Fuel Efficiency (Highway) vs Engine Volume") +
    xlab("Volume (L)") +
    ylab("Effiency (Miles/Gallon)") +
    geom_point()

# Categorical
ggplot(data = mpg, aes(x = displ, y = hwy, size = class)) + 
    ggtitle("Fuel Efficiency (Highway) vs Engine Volume vs Type of Car") +
    xlab("Volume (L)") +
    ylab("Effiency (Miles/Gallon)") +
    geom_point()

# 5 - What happens when you map a continuous variable to color?

# You get a color gradient

ggplot(data = mpg, aes(x = displ, y = hwy, colour = cty)) + 
    ggtitle("Fuel Efficiency (Highway) vs Engine Volume vs Fuel Efficiency (City)") +
    xlab("Volume (L)") +
    ylab("Effiency (Miles/Gallon)") +
    geom_point()

# 6 - Create a scatter plot with two extra aesthetics (in 
# addition to x and y). Don’t map the same variable to each
# one. Why might this not be considered a very good practice?

# The visualization has too much information because it has 4 
# dimensions in the same viz.

ggplot(data = mpg, aes(x = displ, y = hwy, colour = class, size = cty)) + 
    ggtitle("Fuel Efficiency (Highway) vs Engine Volume vs Type of Car vs Fuel Efficiency (City)") +
    xlab("Volume (L)") +
    ylab("Effiency (Miles/Gallon)") +
    geom_point()

# 7 - Map a single variable to two different aesthetics. 
# Why might this sometimes be a good idea?

# This could be a good idea for the use of redundant information
# to focus or highlight a certain observation. In this case, 
# it's very clear to notice that bigger engines result in more 
# fuel consumption.

ggplot(data = mpg, aes(x = displ, y = hwy, colour = displ, size = displ)) + 
    ggtitle("Fuel Efficiency (Highway) vs Engine Volume") +
    xlab("Volume (L)") +
    ylab("Effiency (Miles/Gallon)") +
    geom_point()

# 8 - Run the following code. Why might this be useful?

# This is very useful for clustering purposes, since it's 
# not necessary to define additional dataframes or columns 
# to separate two different groups.

ggplot(mpg) +
    geom_point(aes(displ, hwy, color = cyl < 6))

