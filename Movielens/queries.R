
library(reshape)
library(dplyr)
library(plyr)


users <- read.delim('ml-1m/users.dat', header=!0, sep=',')
movies <- read.delim('ml-1m/movies.dat', header=!0, sep=',')
ratings <- read.delim('ml-1m/ratings.dat', header=!0, sep=',')
View(users)
View(movies)
View(ratings)

#'Outer join: merge(x = df1, y = df2, by = "CustomerId", all = TRUE)
#'Left outer: merge(x = df1, y = df2, by = "CustomerId", all.x = TRUE)
#'Right outer: merge(x = df1, y = df2, by = "CustomerId", all.y = TRUE)
#'Cross join: merge(x = df1, y = df2, by = NULL)

#' INNER JOIN de 2 dataframes
usersRatings <- merge(x=users, y=ratings, by='user_id', all=!0)
View(usersRatings)

#' percentatge de ratings que estan fets per dones
ratingsByFemale <- usersRatings[usersRatings$gender == 'F',]$rating
length(ratingsByFemale) / length(usersRatings$rating)

data <- merge(x=usersRatings, y=movies, by='movie_id', all=!0)
View(data)

#' percentatge de ratings que estan fets per dones
ratingsByFemaleData <- data[data$gender == 'F',]$rating
length(ratingsByFemaleData) / length(data$rating)

#' ratings agrupats per edats
ratingsByAge <- cast(data, title ~ age, mean, value='rating')
View(ratingsByAge[1:10,])

#' ratings agrupats per sexe
ratingsByAge <- cast(data, title ~ gender, mean, value='rating')
View(ratingsByAge[1:10,])

#' mitjanes de puntuacions per edats
meanRatingsByAge<- aggregate(rating~age, data, mean) 
View(meanRatingsByAge)

#' quantitat de puntuacions per edats
sumRatingsByAge <- aggregate(rating~age, data, sum) 
View(sumRatingsByAge)

#' nombre de ràtings per pel·lícula
meltByRating <- melt(data, id='title', measure='rating')
ratingsByTitle <- aggregate(.~title, meltByRating, sum)[,-3] # no veure col 3
numRatingsByTitle <- rename(ratingsByTitle, c("variable"="num_ratings"))
View(ratingsByTitle)

#' valor mitjà de dels ràtings per pel·lícula

meltByRating <- melt(data, id='title', measure='rating')
ratingsByTitle <- aggregate(.~title, meltByRating, mean)[,-2] # no veure col 3
meanRatingsByTitle <- rename(ratingsByTitle, c("value"="mean_rating"))
View(meanRatingsByTitle)


a <- function(n, p) {
    numbers <- rnorm(n * p, mean=1, sd=1)
    array <- matrix(numbers, nrow=n)
    return(array)
    
}
a(3,3)

