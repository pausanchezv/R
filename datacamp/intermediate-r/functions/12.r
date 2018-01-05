# The linkedin and facebook vectors have already been created for you

linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)

# Define the interpret function
interpret <- function(num_views) {
    if (num_views > 15) {
        print("You're popular!")
        return(num_views)
        
    } else {
        print("Try to be more visible!")
        return(0)
        
    }
}

interpret(linkedin[1])
interpret(linkedin[2])