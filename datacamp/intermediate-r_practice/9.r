#' Construct mandatory data
me <- 89
other_199 <- sample(50:100, 199, replace=!0)
previous_4 <- matrix(sample(50:100, 4 * 200, replace=!0), ncol=4)
my_class <- c(me, other_199)
#############################

# Define n_smart
n_smart <- sum(my_class >= 80)


# Code the if-else construct
if (n_smart > 50) {
    print("smart class")
} else {
    print("rather average")
}
