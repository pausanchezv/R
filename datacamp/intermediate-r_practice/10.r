#' Construct mandatory data
me <- 89
other_199 <- sample(50:100, 199, replace=!0)
previous_4 <- matrix(sample(50:100, 4 * 200, replace=!0), ncol=4)
my_class <- c(me, other_199)
last_5 <- cbind(my_class, previous_4)
nms <- paste0("year_", 1:5)
colnames(last_5) <- nms
##################################################################

# me, my_class and last_5 are preloaded

# Define prop_less
prop_less <- mean(my_class < me)

# Code the control construct
if (prop_less > 0.9) {
    print("you're among the best 10 percent")
} else if (prop_less > 0.8) {
    print("you're among the best 20 percent")
} else {
    print("need more analysis")
}