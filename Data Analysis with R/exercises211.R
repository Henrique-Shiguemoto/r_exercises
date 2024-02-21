library(tidyverse)
library(nycflights13)
library(Lahman)

# 1- The nycflights13 package contains a data set called flights. 
#       Load this data set and read its documentation: ?flights. How many
#       observations does it have? How many variables?

nrow(flights) # 336776
ncol(flights) # 19

# 2 - Use filter to find all of the flights that

# a - departed in February.

filter(flights, month == 2)

# b - were operated by United or American Airlines.

filter(flights, carrier == "UA" | carrier == "AA")

# c - departed in summer (June, July, and August).

filter(flights, month == 6 | month == 7 | month == 8)

# d - arrived more than two hours late, but did not leave late.

filter(flights, dep_delay <= 0 & arr_delay >= 120)

# e - were delayed by more than an hour, but made up over 30 minutes
#       during the flight.

filter(flights, dep_delay >= 60 & arr_delay <= dep_delay - 30)

# f - departed between midnight and 6am.

filter(flights, 0 <= dep_time & dep_time <= 600)

# 3 - How many flights were canceled? (Think about how a canceled flight
#       might be detected from the data set.)

canceled_flights <- filter(flights, is.na(dep_time))
nrow(canceled_flights) # 8255

# 4 - What was the on-time arrival rate for Delta Airlines during 2013? 
#       What was it during the winter months (January, February, and 
#       December)? A flight that did not arrive, due to a cancellation,
#       crash, emergency landing, etc, should not figure into the on-time
#       arrival rate.

flights_except_cancelled <- filter(flights, !is.na(dep_time))

delta_airlines_flights_2013 <- filter(flights_except_cancelled, carrier == "DL" & year == 2013)
on_time_flights_delta_airlines_2013 <- filter(delta_airlines_flights_2013, arr_delay == 0)
rate_on_time_flights_delta_airlines_2013 <- nrow(on_time_flights_delta_airlines_2013) / nrow(delta_airlines_flights_2013)

delta_airlines_flights_summer <- filter(flights_except_cancelled, carrier == "DL" & (month == 1 | month == 2 | month == 12))
on_time_delta_airlines_flights_summer <- filter(delta_airlines_flights_summer, arr_delay == 0)
rate_on_time_flights_delta_airlines_summer <- nrow(on_time_delta_airlines_flights_summer) / nrow(delta_airlines_flights_summer)
