#' Since datacamp requires 'payment user', there are vectors and improvised objects 
#' like the following:
temp <- list(c(23, 25, 21, 20, 24),
             c(30, 29, 29, 28, 30),
             c(28, 27, 26, 26, 25),
             c(31, 31, 32, 34, 35),
             c(36, 30, 31, 32, 34))


# Definition of below_zero()
below_zero <- function(x) {
    return(x[x < 0])
}

# Apply below_zero over temp using sapply(): freezing_s
freezing_s <- sapply(temp, below_zero)


# Apply below_zero over temp using lapply(): freezing_l
freezing_l <- lapply(temp, below_zero)


# Are freezing_s and freezing_l identical?
freezing_s
freezing_l
