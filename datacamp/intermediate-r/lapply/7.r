#' Since datacamp requires 'payment user', there are vectors and improvised objects 
#' like the following:
temp <- list(c(23, 25, 21, 20, 24),
             c(30, 29, 29, 28, 30),
             c(28, 27, 26, 26, 25),
             c(31, 31, 32, 34, 35),
             c(36, 30, 31, 32, 34))

# Finish function definition of extremes_avg
extremes_avg <- function(x) {
    (min(x) + max(x)) / 2
}

# Apply extremes_avg() over temp using sapply()
sapply(temp, extremes_avg)


# Apply extremes_avg() over temp using lapply()
lapply(temp, extremes_avg)