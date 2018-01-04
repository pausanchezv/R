# Definition of split_low
pioneers <- c("GAUSS:1777", "BAYES:1702", "PASCAL:1623", "PEARSON:1857")
split <- strsplit(pioneers, split = ":")
split_low <- lapply(split, tolower)

# Transform: use anonymous function inside lapply
names <- lapply(split_low, function(x) x[1])

# Transform: use anonymous function inside lapply
years <- lapply(split_low, function(x) x[2])

str(names)
str(years)