# In the previous three exercises, we practised functions that accept one or 
# more vectors of any length as input, but return a single value as output. 
# We’re now returning to functions that return a vector of the same length 
# as their input vector. Specifically, we’ll practise rounding functions. 
# R has several functions for rounding. 

# Let’s start with floor, ceiling, and trunc:

# - floor(x) rounds to the largest integer not greater than x
# - ceiling(x) rounds to the smallest integer not less than x
# - trunc(x) returns the integer part of x

# To appreciate the difference between the three, I suggest you first play 
# around a bit in R with them. Just pick any number (with or without a 
# decimal point, positive and negative values), and see the result each of 
# these functions gives you. Then make it somewwat closer to the next integer 
# (either above or below), or flip the sign, and see what happens. 
# Then continue with the following exercise:

# Below you will find a series of arguments (x), and results (y), that 
# can be obtained by choosing one or more of the 3 functions above 
# (e.g. y <- floor(x)). Which of the above 3 functions could have been used 
# in each case? First, choose your answer without using R, then check with R.

x <- c(300.99, 1.6, 583, 42.10)
y <- c(300, 1, 583, 42)
y_ <- floor(x) # or trunc(x)
identical(y, y_)

x <- c(152.34, 1940.63, 1.0001, -2.4, sqrt(26))
y <- c(152, 1940, 1, -2, 5)
y_ <- trunc(x)
identical(y, y_)

x <- -c(3.2, 444.35, 1/9, 100)
y <- c(-3, -444, 0, -100)
y_ <- ceiling(x)
identical(y, y_)

x <- c(35.6, 670, -5.4, 3^3)
y <- c(36, 670, -5, 27)
y_ <- ceiling(x)
identical(y, y_)
