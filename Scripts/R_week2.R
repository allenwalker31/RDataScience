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