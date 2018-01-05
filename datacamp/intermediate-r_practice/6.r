#' Construct mandatory data
me <- 89
other_199 <- sample(50:100, 199, replace=!0)
previous_4 <- matrix(sample(50:100, 4 * 200, replace=!0), ncol=4)
my_class <- c(me, other_199)
last_5 <- cbind(my_class, previous_4)
nms <- paste0("year_", 1:5)
colnames(last_5) <- nms
##################################################################

# Is your grade greater than 87 and smaller than or equal to 89?
me > 87 & me <= 89

# Which grades in your class are below 60 or above 90?
my_class < 60 | my_class > 90
