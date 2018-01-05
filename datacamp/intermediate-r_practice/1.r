#' me, other_199, and previous_4 aren't available in your workspace
#' beacuse datacamp requires payment of advanced courses, however,
#' we can create similar random data
me <- 89
other_199 <- sample(50:100, 199, replace=!0)
previous_4 <- matrix(sample(50:100, 4 * 200, replace=!0), ncol=4)

# Merge me and other_199: my_class
my_class <- c(me, other_199)

# cbind() my_class and previous_4: last_5
last_5 <- cbind(my_class, previous_4)

# Name last_5 appropriately
nms <- paste0("year_", 1:5)

colnames(last_5) <- nms

last_5
