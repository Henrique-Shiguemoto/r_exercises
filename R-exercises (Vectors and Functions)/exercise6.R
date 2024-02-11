# Ok, let’s continue with a really interesting function: cumsum. 
# This function returns a vector of the same length as its input vector. 
# But contrary to the previous functions, the value of an element in 
# the output vector depends not only on its corresponding element in the 
# input vector, but on all previous elements in the input vector.

# So, its results are cumulative, hence the cum prefix. 
# Take for example: cumsum(c(0, 1, 2, 3, 4, 5)), which 
# returns: 0, 1, 3, 6, 10, 15. Do you notice the pattern?

# Functions that are similar in their behavior to cumsum, are: cumprod, 
# cummax and cummin. From just their naming, you might already have an 
# idea how they work, and I suggest you play around a bit with them in 
# R before continuing with the exercise.

# The nhtemp data contain “the mean annual temperature in degrees Fahrenheit 
# in New Haven, Connecticut, from 1912 to 1971”. (Although nhtemp is not 
# a vector, but a timeseries object (which we’ll learn the details of later), 
# for the purpose of this exercise this doesn’t really matter.) 
# Use one of the four functions above to calculate the maximum mean annual 
# temperature in New Haven observed since 1912, for each of the years 1912-1971.

# Suppose you put $1,000 in an investment fund that will exhibit the following
# annual returns in the next 10 years: 9% 18% 10% 7% 2% 17% -8% 5% 9% 33%. 
# Using one of the four functions above, show how much money your investment
# will be worth at the end of each year for the next 10 years, assuming 
# returns are re-invested every year. Hint: If an investment returns 
# e.g. 4% per year, it will be worth 1.04 times as much after one year,
# 1.04 * 1.04 times as much after two years, 1.04 * 1.04 * 1.04 times as
# much after three years, etc.

library(datasets)

# a
cummax(nhtemp)

# b
initial_investiment <- 1000
rates <- 1 + c(0.09, 0.18, 0.1, 0.7, 0.02, 0.17, -0.08, 0.05, 0.09, 0.33)
rates[1] <- rates[1] * initial_investiment
cumprod(rates)

