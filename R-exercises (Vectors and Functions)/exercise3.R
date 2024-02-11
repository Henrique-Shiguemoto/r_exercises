# Some functions accept multiple vectors as inputs. For example, the cor 
# function accepts two vectors and returns their correlation coefficient. 

# The women data “gives the average heights and weights for American women
#  aged 30-39”. It contains two vectors height and weight, which we access
#   after entering attach(women) (we’ll discuss the details of 
#   attach in a later chapter).

# Using the cor function, show that the average height and weight of these
#  women are almost perfectly correlated.

# Calculate their covariance, using the cov function.

# The cor function accepts a third argument method which allows for 
# three distinct methods (“pearson”, “kendall”, “spearman”) to 
# calculate the correlation. Repeat part (a) of this exercise for each 
# of these methods. Which is the method chosen by the default 
# (i.e. without specifying the method explicitly?)

# Rick: I don't enjoy using attach because it makes it more difficult to 
# know where certain variables come from. So I'm not gonna use it.

library(datasets)

# Both vectors are normally distributed, therefore we can use 
#   the pearson method of correlation
shapiro.test(women$height)
shapiro.test(women$weight)

# the higher the number, the bigger is the correlation (it goes up to 1)
cor(women$height,
    women$weight, method = "pearson")

cor(women$height,
    women$weight, method = "kendall")

cor(women$height,
    women$weight, method = "spearman")

# Covariance
cov(women$height,
    women$weight)

# By default, the cor() function uses the pearson method

