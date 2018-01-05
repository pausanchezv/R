#' Construct mandatory data
me <- 89
other_199 <- sample(50:100, 199, replace=!0)
previous_4 <- matrix(sample(50:100, 4 * 200, replace=!0), ncol=4)
my_class <- c(me, other_199)
last_5 <- cbind(my_class, previous_4)
nms <- paste0("year_", 1:5)
colnames(last_5) <- nms
##################################################################

# How many grades in your class are higher than 75?
sum(my_class > 75)

# How many students in your class scored strictly higher than you?
sum(my_class > me)

# What's the proportion of grades below or equal to 64 in the last 5 years?
mean(last_5 <= 64)