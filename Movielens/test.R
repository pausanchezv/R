#' MOVIELENS
#' Data Frames

users <- read.delim('ml-1m/users.dat', header=!0, sep=',')
movies <- read.delim('ml-1m/movies.dat', header=!0, sep=',')
ratings <- read.delim('ml-1m/ratings.dat', header=!0, sep=',')
View(users)
View(movies)
View(ratings)

class(tail(users))
users[[5]][[6]]

# accedir at dataframe per fila/columna:: valor
ratings[297345, 'user_id']

# accedir al dataframe per columna (nom o número):: retorna dataframe
ratings['rating']
ratings[2]

# accedir al dataframe per més d'una columna:: dataframe
users[c('age', 'zipcode')]

# accedir a la segona fila del dataframe:: dataframe
users[2,]
users[c(2, 3),]

# si les files tenen nom, accedir per nom:: dataframe
mtcars['Camaro Z28',]
mtcars[c('Datsun 710', 'Camaro Z28'),]

# accedir al dataframe i retornar les files que acompleixen les condicions de les columnes:: dataframe
users[users$age == 25 & users$gender == 'M',]
users[users$age == 25 & users$gender == 'M',]['gender']
names(users[users$age == 25 & users$gender == 'M',])

# retorna un array boleà de la condició sol·licitada:: array
tail(users$age)
tail(users$age == 25)

# dues maneres d'accedir a les columnes:: array
tail(users[,'age'])
tail(users$age)
tail(users['age'])[[1]]
tail(users[['age']])

#' acedir al valor de la segona fila i tercera columna:: valor
users[2, 3]

# nombre de files i columnes del DataFrame
nrow(users)
ncol(users)


# crear un dataframe
id = c(2, 3, 5) 
letters = c("aa", "bb", "cc") 
is_active = c(TRUE, FALSE, TRUE) 
df = data.frame(id, letters, is_active) 
View(df)

# ordenar un dataframe

attach(users)
newdata <- users[order(-age, user_id),] 
View(newdata)
detach(users)


################################

x <- seq(-15, 15, by=0.05)
y <- x**2

plot(x, y, type='p')

x<- seq(-5,5,by=0.005)
y<- sin(x)
plot(x,y,type='l', col='green')


y2<- sin(x+2)
par(new=T)
plot(x, y2, col='red', type='p')

u <- 1:12
u
dim(u) <- c(2,2,3)
u[,,2][1,][2]

