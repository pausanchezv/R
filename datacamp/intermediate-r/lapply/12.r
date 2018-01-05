#' Since datacamp requires 'payment user', there are vectors and improvised objects 
#' like the following:
temp <- list(c(23, 25, 21, 20, 24),
             c(30, 29, 29, 28, 30),
             c(28, 27, 26, 26, 25),
             c(31, 31, 32, 34, 35),
             c(36, 30, 31, 32, 34))

# Definition of the basics() function
basics <- function(x) {
    c(min = min(x), mean = mean(x), median = median(x), max = max(x))
}

# Fix the error:
vapply(temp, basics, numeric(4))