# The nyc list is already specified
nyc <- list(pop = 8405837, 
            boroughs = c("Manhattan", "Bronx", "Brooklyn", "Queens", "Staten Island"), 
            capital = FALSE)

# Loop version 1
for (x in nyc) {
  print(x)
}


# Loop version 2
for (i in 1:length(nyc)) {
  print(nyc[[i]])
}
