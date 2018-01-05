#' Since datacamp requires 'payment user', there are vectors and improvised objects 
#' like the following:
temp <- list(c(23, 25, 21, 20, 24),
             c(30, 29, 29, 28, 30),
             c(28, 27, 26, 26, 25),
             c(31, 31, 32, 34, 35),
             c(36, 30, 31, 32, 34))

# Definition of print_info()
print_info <- function(x) {
    cat("The average temperature is", mean(x), "\n")
}

# Apply print_info() over temp using sapply()
sapply(temp, print_info)


# Apply print_info() over temp using lapply()
lapply(temp, print_info)

