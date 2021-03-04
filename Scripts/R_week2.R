# f <- function(a,b=1, c=2, d = NULL){
#   
# }

f <- function(a, b){
  a * 2
}

f(2)

myplot <- function(x,y,  type = "1", ...){
  plot(x,y, type = type, ...)
}

args(paste)
function(..., sep = " " , colapse = NULL){}

lm <- function(x) {x * x}
lm

make.power <- function(n){
  pow <- function(x){
    x^n
  }
  pow
}

y <- 10
f <- function(x) {
  y <- 2
  y^2 + g(x)
}

g <- function(x) {
  x*y
}

#Data time
x <- as.Date("1970-01-01")
unclass(x)
unclass(as.Date("1970-01-02"))

x <- Sys.time()
x
p <- as.POSIXct(x)
p
unclass(p)
p <- as.POSIXlt(x)
p
names(unclass(p))

p$sec


  #strptime
datestring <- c("January 10, 2012 10:40", "December 9, 2011 9:10")
x <- strptime(datestring, "%B %d, %Y %H:%M")
x
  #comparison
x <- as.Date("2012-01-01")
y <- strptime("9 Jan 2011 11:34:21", "%d %b %Y %H:%M:%S")
x-y

x <- as.POSIXlt(x)
x-y


# Loop 
# lapppy

x <- list(a = 1:5, b = rnorm(10))
lapply(x, mean)

x <- 1:4
lapply(x, runif, min = 0, max = 10)

x <- list(a = matrix(1:4, 2, 2), b = matrix(1:6, 3, 2)) 
lapply(x, function(elt) elt[,1])

#apply
x <- matrix(rnorm(200), 20, 10)
apply(x, 2, mean)
apply(x, 1, sum)
apply(x, 1, quantile, probs = c(0.25, 0.75))
a <- array(rnorm(2 * 2 * 10), c (2,2, 10))
apply(a, c(1,2), mean)
rowMeans(a, dims = 2)

#mapply
list(rep(1, 4), rep(2, 3), rep(3, 2), rep(4, 1))
  #or
mapply(rep, 1:4, 4:1)


 noise <- function(n, mean, sd) {
 rnorm(n, mean, sd)
 }
mapply(noise, 1:5, 1:5, 2)

#tapply
x <- c(rnorm(10), runif(10), rnorm(10, 1))
f <- gl(3, 10)
f
tapply(x, f, mean)

#split
split(x,f)
 #more than 1 level
x <- rnorm(10)
f1 <- gl(2, 5)
f2 <- gl(5, 2)
f1
f2
interaction(f1,f2)
str(split(x, list(f1, f2)))


invinsible(x)  # hide returned value on console


#simulation

dnorm(x, mean = 0, sd = 1, log = FALSE)
pnorm(q, mean = 0, sd = 1, lower.tail = TRUE, log.p = FALSE)
qnorm(p, mean = 0, sd = 1, lower.tail = TRUE, log.p = FALSE)
rnorm(n, mean = 0, sd = 1)


# simulate linear
set.seed(20)
x <- rnorm(100)
e <- rnorm(100, 0 ,2)
y <- 0.5 + 2 * x + e

  # if x is  binary
x <- rbinom( 100, 1, 0.5)
e <- rnorm(100,0,2)
y <- 0.5 + 2 * x + e
summary(y)
plot(x,y)

  # poisson model

set.seed(1)
x <- rnorm(100)
log.mu <- 0.5 + 0.3 * x
y <- rpois(100, exp(log.mu))
summary(y)
plot(x,y)

  #random sampling
set.seed(1)
sample(1:10, 4)
sample(1:10, 4)
sample(letters, 5)
sample(1:10 )  #permutation
sample(1:10)
sample(1:10, replace =TRUE) #sample w/replacement
