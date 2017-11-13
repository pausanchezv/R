
# Vectors
x <- c(1, 2, 3, 4)
y <- c(4, 3, 2, 1)

# Combinar vectors
u <- c(x, 4, x, y)
print(u)

# Concatenar strings
b1 <- paste('A', 1:6)
b1

b2 <- paste(1:6, 'A')
b2

a <- paste('Avui és:', date())
a

# Aritmètica de vectors
z <- x + u
z

x / u
x / 2

# De quantes maneres diferents es podenordenar 6 unitats en grups de 3
choose(n=6, k=0:6)

# Successions regulars
1:10
seq(-5, 5, by=.4)
seq(-5, 4, by=.4)
seq(-5, 5, length=14)

# Gràfiques

# Paràbola y = x² entre -15 i 15
x <- seq(-15, 15, by=.05)
y <- x**2
plot(x, y, type='p')
plot(x, y, type='l')

y <- sin(x)
plot(x, y, type='l')

# Dues linies a la gràfica
y2 <- sin(x + 2)
par(new=T)
plot(x, y2, col='red', type='p')

# Arrays i matrius
u <- c(1:12)
dim(u) <- c(3, 4)
u

dim(u) <- c(2, 2, 3)
u

# Accés a la segona matriu de la primera dimensió
u[,,2]

# Primera fila de la segona matriu
u[,,2][1,]

# Segon ítem de la primera fila de la segona matriu
u[,,2][1,][2]

# Crear matriu
u <- matrix(1:12, nrow=3, ncol=4)
u

u <- array(1:12, dim=c(2,3,2))
u

u <- array(c(1, 4, 2), dim=c(3, 4))
u

# Transposta
t(u)

a <- matrix(1:20, nrow=4)
a

# Matriu sense columnes 1 a 3
a[,-(1:3)]

# Operacions amb matrius
a <- matrix(c(1, 3, 2, 0, 1, 1), nrow=2)
a

b <- matrix(c(1, 2, 0, 1), nrow=2)
b

# Producte exterior
outer(a, b, '*')

# Producte de matrius
a <- matrix(c(1, 3, 2, 0), nrow=2)
b <- matrix(c(1, 2, 0, 1), nrow=2)
a %*% b


# LListes
x <- list('valor'=1, retol='exemple', vector=c(1, 2, 3), '5'=9)
x[[2]]
x$'5'


# Funcions

#Variança empírica
varp <- function(x) {
    return(var(x) * (length(x) - 1) / length(x))
}

varp(1:20)
var(1:20)

#' Exercici 1. Escriviu una funci´o que entri dos enters n, p, i generi 
#' una matriu n×p d’aleatoris normals de mitjana i desviaci´o est`andard donades.
exercici1 <- function(n, p) {
    numbers <- rnorm(n * p, mean=1, sd=1)
    array <- matrix(numbers, nrow=n)
    return(array)
    
}

exercici1(4, 3)

#' Exercici 2. Escriviu una funci´o que estandarditzi una matriu n × p, de dues maneres, de forma
#' que:
#' 
#' a: Les columnes tinguin mitjana 0 i desviaci´o est`andard 1.
exercici2 <- function(n, p) {
    
    cols <- c()
    
    for (i in 1:p) {
        cols <- c(cols, rnorm(n, mean=0, sd=1))
        print(cols)
    }
    
    return(matrix(cols, nrow=n))
    
}
exercici2(3, 4)
