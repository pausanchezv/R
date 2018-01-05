
# Finish the pow_two() function
pow_two <- function(x, print_info=!0) {
    
    y <- x ^ 2
    
    if (print_info)
        print(paste(x, "to the power two equals", y))
    
    return(y)
}

pow_two(2, !0)