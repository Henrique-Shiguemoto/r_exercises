# In addition to trunc, floor, and ceiling, R also has round and signif
#  rounding functions. The latter two accept a second argument digits. 
#  In case of round, this is the number of decimal places, and in case 
#  of signif, the number of significant digits. As with the previous 
#  exercise, first play around a little, and see how these functions behave.

# Then continue with the exercise below:

# Below you will find a series of arguments (x), and results (y), that 
# can be obtained by choosing one, or both, of the 2 functions above 
# (e.g. y <- round(x, digits=d)). Which of these functions could have been
#  used in each case, and what should the value of d be? First, choose your
#  answer without using R, then check with R.

x <- c(35.63, 300.20, 0.39, -57.8)
y <- c(36, 300, 0, -58)
y_ <- round(x, digits = 0)
identical(y, y_)
    
x <- c(153, 8642, 10, 39.842)
y <- c(153.0, 8640.0, 10.0, 39.8)
# impossible

x <- c(3.8, 0.983, -23, 7.1)
y <- c(3.80, 0.98, -23.00, 7.10)
y_ <- 
identical(y, y_)

