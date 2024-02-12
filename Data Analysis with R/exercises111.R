library(tidyverse)

# Do cars with big engines burn more fuel than 
# cars with small engines?

head(mpg)

# For highway
ggplot(data = mpg, aes(x = displ, y = hwy)) + 
    ggtitle("Engine Volume per Fuel Consumption (Highway)") +
    xlab("Volume (L)") + 
    ylab("Consumption (Miles/Gallon)") +
    geom_point()

# For city
ggplot(data = mpg, aes(x = displ, y = cty)) + 
    ggtitle("Engine Volume per Fuel Consumption (City)") +
    xlab("Volume (L)") + 
    ylab("Consumption (Miles/Gallon)") +
    geom_point()

# 1 - What would you expect a scatter plot showing the relationship
# between hwy and cty to look like? Create such a plot.

# Scatter plot approaching a line but not quite a diagonal line, but
# slightly positive linear correlation

ggplot(data = mpg, aes(x = hwy, y = cty, colour = drv)) + 
    ggtitle("Fuel Consumption - Highway vs City") +
    xlab("In Highway (Miles/Gallon)") + 
    ylab("In City (Miles/Gallon)") +
    geom_point()

# 2 - Classify each of the 11 variables in the mpg data set 
# as either continuous or categorical.
# 
# manufacturer: categorical
# model: categorical
# displ: continuous
# year: categorical
# cyl: categorical
# trans: categorical
# drv: categorical
# cty: continuous
# hwy: continuous
# fl: categorical
# class: categorical

# 3 - Create a scatter plot to illustrate the relationship between 
# fuel efficiency and a car’s drive train. 
# What does your plot say about this relationship?
# 
# Rear-wheel Drive and 4wd consumes less fuel than front-wheel drive
#

ggplot(data = mpg, aes(x = hwy, y = drv)) + 
    ggtitle("Fuel Efficiency X Drive train") + 
    xlab("Consumption (Miles/Gallon)") + 
    ylab("Drive Train") +
    geom_point()

# 4 - How is the plot from the previous problem qualitatively different
# from the plot of hwy vs. displ? What accounts for this difference? 
# (Hint: Think about what type of variable drv is.)

# Since the variables from the previous problem were one categorical 
# and the other continuous, the scatterplot of the relationship isn't
# ideal, because there'll be points placed at strict rows (or columns)
# representing the categorical variable values. 
# Boxplots are better for this situation.
#
# However, in the "plot of hwy vs. displ", both variables are continuous.
# So the points won't lie in strict horizontal or vertical lines.

# 5 - Scatter plots aren’t always appropriate ways to visualize 
# relationships among variables. Get a scatter plot of class vs. drv 
# and explain why it’s not very useful. 
# (Whenever we make statements like <VARIABLE> vs. <VARIABLE>, 
# the first variable is considered to be the dependent 
# (y-axis) variable and the second is the independent 
# (x-axis) variable.)

ggplot(data = mpg, aes(x = drv, y = class)) + 
    ggtitle("Fuel Efficiency X Drive train") + 
    xlab("Drive Train") + 
    ylab("Type of Car") +
    geom_point()

# It's not very useful because we're treating categorical variables 
# as if they were continuous, since we're using scatter plots.
# So the look of the plot is deceiving because there are points 
# in the same place.

# 6 - Explain why scatter plots are most appropriate when the variables 
# assigned to x and y are both continuous.
# 
# They're most appropriate to continuous data because when representing
# points in a plane, the x and y values of a point are considered
# to be continuous.

















