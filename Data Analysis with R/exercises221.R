library(tidyverse)
library(nycflights13)

# 1- Where does arrange sort the NA values in a column? 
#       (Experiment with a data set that has missing values.) 
#       How could you force arrange to sort all of the NA values
#       to the top of the list? (Try using is.na.)

# The arrange function puts them at the end.
# NAs on top
arrange(flights, !is.na(dep_time), dep_time)

# 2 - What was the longest delay of any flight?

# A departure delay of 1301 minutes
flights_ordered_by_dep_delay <- arrange(filter(flights, !is.na(dep_time)), dep_delay)
flights_ordered_by_dep_delay[nrow(flights_ordered_by_dep_delay), ]

# 3 - What flight left the earliest in the day?
arrange(filter(flights, !is.na(dep_time)), dep_time)[1, ]

# 4 - What flight averaged the fastest speed while in the air? 
#       (Average speed is the total distance traveled divided by the 
#       total time spent in the air.) What flight averaged the slowest 
#       speed?

arrange(flights, distance / air_time)[1, ] # fastest
arrange(flights, desc(distance / air_time))[1, ] # slowest

# 5 - What flight traveled the farthest distance? Which one traveled 
#       the shortest distance?

# farthest
arrange(filter(flights, !is.na(dep_time)), desc(distance))[1, ]

# shortest
arrange(filter(flights, !is.na(dep_time)), distance)[1, ]


