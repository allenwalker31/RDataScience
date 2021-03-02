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