# Did you know R has actually lots of built-in datasets that we can use to practise? 
# For example, the rivers data “gives the lengths (in miles) of 141 “major” rivers in 
#       North America, as compiled by the US Geological Survey” (you can find this 
#       description, and additonal information, if you enter help(rivers) in R. 
# Also, for an overview of all built-in datasets, enter data().

# Have a look at the rivers data by simply entering rivers at the R prompt. 
# Create a vector v with 7 elements, containing the number of elements (length)
#   in rivers, their sum (sum), mean (mean), median (median), variance (var), 
#   standard deviation (sd), minimum (min) and maximum (max).

library(datasets)

v <- c(length(rivers), 
       sum(rivers), 
       mean(rivers), 
       median(rivers),
       var(rivers),
       sd(rivers),
       min(rivers),
       max(rivers))