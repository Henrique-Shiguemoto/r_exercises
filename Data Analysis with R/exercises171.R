library(tidyverse)
library(forcats)

# 1 - Create a visualization of the distribution of the clarity variable
# in diamonds.

ggplot(data = diamonds, aes(x = clarity)) + 
    labs(title = "Distribution of Clarity Categories",
         subtitle = "Diamond's clarity cistribution follows a normal distribution",
         x = "Clarity",
         y = "Count") + 
    geom_bar()
    

# 2 - Re-do the previous problem, but have the y-axis record the
# percentages of each clarity value within diamonds.

ggplot(data = diamonds, aes(x = clarity, y = stat(prop), group = 1)) + 
    labs(title = "Distribution of Clarity Categories",
         subtitle = "Diamond's clarity cistribution follows a normal distribution",
         x = "Clarity",
         y = "Percentage") + 
    geom_bar()

# 3 - Create a visualization of the distribution of the carat variable
# in diamonds.

ggplot(data = diamonds, aes(x = carat)) +
    labs(title = "Distribution of Carat values in Diamonds",
         x = "Carat",
         y = "Count") + 
    geom_histogram()

# 4 - Create a histogram for which the bins are way too narrow. 
# Then create one for which they’re way too wide. What do you observe
# in each case?

# One is unnecessarily detailed (more information than needed, it makes it 
# difficult to make general conclusion) and the other is too summarized,
# making it an unreliable source of information.

ggplot(data = diamonds, aes(x = carat)) +
    labs(title = "Distribution of Carat values in Diamonds",
         x = "Carat",
         y = "Count") + 
    geom_histogram(bins = length(unique(diamonds$carat)))

ggplot(data = diamonds, aes(x = carat)) +
    labs(title = "Distribution of Carat values in Diamonds",
         x = "Carat",
         y = "Count") + 
    geom_histogram(bins = 5)
    
# 5 - Create a bar graph that shows the distribution of the price
# variable in diamonds. Why does it look so spiky? What should you
# have done to visualize the distribution of price?

# That's because we're using a visualization which is designed to be used
# with categorical and continuous variables and, in this case, we're dealing
# with a pair of continuous variables.

ggplot(data = diamonds, aes(x = price)) + 
    labs(title = "Distribution of Diamond Prices",
         subtitle = "",
         x = "Price",
         y = "Count") + 
    geom_bar()
    
# 6 - Two useful aesthetics for bar graphs are color and fill. 
# For your bar graph from Exercise 1 above, try mapping cut to color
# and then to fill. Which seems to be the more helpful aesthetic?

# The fill aesthetic is definitely better because it separates cut 
# categories per bar more clearly than the colour aesthetic.

ggplot(data = diamonds, aes(x = clarity, colour = cut)) + 
    labs(title = "Distribution of Clarity Categories (with Cut Distribution as well)",
         subtitle = "Diamond's clarity cistribution follows a normal distribution",
         x = "Clarity",
         y = "Count",
         colour = "Cut") + 
    geom_bar()

ggplot(data = diamonds, aes(x = clarity, fill = cut)) + 
    labs(title = "Distribution of Clarity Categories (with Cut Distribution as well)",
         subtitle = "Diamond's clarity cistribution follows a normal distribution",
         x = "Clarity",
         y = "Count",
         fill = "Cut") + 
    geom_bar()

# 7 - A more useful way to apply the color or fill aesthetics is to
# pair them with the optional position argument. Run the following 
# code and reflect on how the bar graph might be better than the ones
# from Exercise 6.

# On the previous visualization I noticed that it wasn't clear that the 
# other categories followed a normal distribution just like the "Ideal"
# category, with the position parameter set to dodge, it is now very clear
# that the conjecture is actually true for all categories of cut. 
# Very cool!

ggplot(data = diamonds) +
    geom_bar(mapping = aes(x = clarity, fill = cut), position = "dodge")

# 8 - Explain why the following code would produce a bar graph that would 
# contain some redundancy but would also be visually pleasing:

# The fill parameter is unnecessary because we already have the information
# on the x axis legends about what each column represents. On the other 
# hand, the redundancy that the color parameter brings makes the 
# visualization more pleasing to see and also highlights the 
# differentiation of the columns.

ggplot(data = diamonds) +
    geom_bar(mapping = aes(x = cut, fill = cut))

# 9 - Reproduce the bar graph from the previous problem, but add an
# extra layer:+ coord_polar(). What happens?

# Now the graph isn't a bar graph anymore, it is a pie chart? sort of? 
# Idk how to call it. Each bar is now a piece of the pie with a color
# differentiation and also the length of the pie in height and angle is
# more information redundancy for column differentiation. I don't think
# this layer is necessary.

ggplot(data = diamonds) +
    geom_bar(mapping = aes(x = cut, fill = cut)) + 
    coord_polar()
    
# 10 - Create a visualization of the distribution of the manufacturer
# variable in mpg. Explain why this visualization would look better if
# the bars were displayed horizontally rather than vertically, then 
# create such a visualization. (Hint: Recall how this is done for box
# plots.)

# It is better vertically because the labels for each column don't overlap
# each other.

ggplot(data = mpg, aes(x = manufacturer)) + 
    geom_bar() + 
    coord_flip()

# 11 - The aesthetics for geom_histogram are the same as those for
# geom_bar. Create a histogram that shows the distribution of carat
# within diamonds and use an aesthetic to show the distribution of cut
# values within each bin.

ggplot(data = diamonds, aes(x = carat, fill = cut)) +
    labs(title = "Distribution of Carat values in Diamonds",
         x = "Carat",
         y = "Count") + 
    geom_histogram()

# 12 - A geom very similar to geom_histogram is geom_freqpoly. Create
# a visualization of the distribution of price within diamonds using 
# geom_freqpoly instead of geom_histogram. Why might this sometimes be
# preferable to a histogram?

# It sort of has almost the same amount of information as a histrogram
# but with less things in the viz. It also shows the same trends you'd
# see in a histogram but with less visuals, which means you can fit
# more visuals with it.

ggplot(data = diamonds, aes(x = price)) +
    labs(title = "Distribution of Prices of Diamonds",
         x = "Price",
         y = "Count") + 
    geom_freqpoly()

# 13 - As you may have seen in Exercise 11, you can map a third 
# variable to the color or fill aesthetic, but the result is somewhat
# visually confusing. Retry Exercise 11, but use geom_freqpoly rather
# than geom_histogram. Do you think this is a better visualization?

# Not sure if I'm doing something wrong here, but I actually prefer 
# the viz in the Exercise 11 lul.

ggplot(data = diamonds, aes(x = carat, color = cut)) +
    labs(title = "Distribution of Carat values in Diamonds",
         x = "Carat",
         y = "Count") + 
    geom_freqpoly()

# 14 - Using the mpg data set, create a visualization of the 
# distribution of types of cars in the data set, and include a 
# breakdown of the distribution of drive trains present for each 
# type of car. Label the x- and y-axes and the legend with meaningful 
# names, and give your plot an appropriate title.

ggplot(data = mpg, aes(x =  fct_rev(fct_infreq(class)), fill = drv)) + 
    labs(title = "Distribution of Car Types (with Drive Train breakdown)",
         subtitle = "With exception of Subcompacts, hardly any variety of drive trains is seen per category",
         x = "Car Type",
         y = "Count",
         fill = "Drive Train",
         caption = "Source: fueleconomy.gov") + 
    geom_bar()
