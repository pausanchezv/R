#' Construct mandatory data
me <- 89
other_199 <- sample(50:100, 199, replace=!0)
previous_4 <- matrix(sample(50:100, 4 * 200, replace=!0), ncol=4)
my_class <- c(me, other_199)
last_5 <- cbind(my_class, previous_4)
nms <- paste0("year_", 1:5)
colnames(last_5) <- nms
##################################################################

# Build histogram of my_class
hist(my_class)

# Generate summary of last_5
summary(last_5)

# Build boxplot of last_5
boxplot(last_5)