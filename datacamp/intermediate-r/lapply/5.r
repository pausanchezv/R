lapply(split_low, function(x) {
    if (nchar(x[1]) > 5) {
        return(NULL)
    } else {
        return(x[2])
    }
})