#' Without going straight to the console to run the code, try to reason through which of 
#' the following statements are correct and why.
sapply(list(runif (10), runif (10)), 
       function(x) c(min = min(x), mean = mean(x), max = max(x)))
