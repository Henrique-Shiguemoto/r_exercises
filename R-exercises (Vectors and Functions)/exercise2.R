# For many functions, we can tweak their result through additional arguments. 
# For example, the mean function accepts a trim argument, which trims a 
# fraction of observations from both the low and high end of the 
# vector the function is applied to.

# What is the result of mean(c(-100, 0, 1, 2, 3, 6, 50, 73), trim=0.25)? 
# Don’t use R, but try to infer the result from the explanation 
# of the trim argument I just gave. Then check your answer with R.

# Calculate the mean of rivers after trimming the 10 highest 
# and lowest observations. Hint: first calculate the trim fraction, 
# using the length function.

library(datasets)

river_count_to_trim <- 10
trim_fraction <- river_count_to_trim / length(rivers)
mean(rivers, trim = trim_fraction)
