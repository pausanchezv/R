two_dice <- function() {
    possibilities <- 1:6
    dice1 <- sample(possibilities, size = 1)
    dice2 <- sample(possibilities, size = 1)
    dice1 + dice2
}
two_dice()

#' Statement 3 is true