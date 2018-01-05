#' Construct mandatory data
me <- 89
other_199 <- sample(50:100, 199, replace=!0)
previous_4 <- matrix(sample(50:100, 4 * 200, replace=!0), ncol=4)
my_class <- c(me, other_199)
last_5 <- cbind(my_class, previous_4)
nms <- paste0("year_", 1:5)
colnames(last_5) <- nms
##################################################################

# What's the proportion of grades in your class that is average?
mean(my_class >=70 & my_class <= 85)

# How many students in the last 5 years had a grade of 80 or 90?
sum(last_5 == 80 | last_5 == 90)
