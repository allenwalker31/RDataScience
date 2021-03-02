print("this file was create within Rstudio")

print("and now it on github")

x <- 1
print(x)
x
msg <- "hello"

x <- 1:20 ##integer sequence

##Data type: character, 
##numeric(real number), 
##integer: need L suffix
##complex, 
##logical
##

##Attributes: accessed by attribites()
##name: dimnames.
##dimension
##class
##length
##other user-defined

##Vector vs list
##Vector: c function to create vector of objs
##x <- c(TRUE, FALSE)
##x <- c(1+0i, 2+ 4i)
## x <- 3:30
## as.*(x) to parse, explicit coercion. If parse failed, return NA
##List: any type of data
## x <- list() 

##Matrix
## m <- maxtrix(nrow= 1, ncol= 3)
## m <- 1:10 ,dim(m) <- c(2,5)
## cbind() and rbind(), another way to create matrix


##Factor
## model function: lm() and glm
## x<-factor(c("yes","yes","no","yes","no"))
##table(x)
##unclass(x)


##missing value: NA or NaN
## is.na() or is.nan()
## NaN is NA, but NA is not NaN

## Data Frame: special type of list
## is used to store tabular data

##Name Attribute
##> x <- 1:3
##> names(x)
##NULL
##> names(x) <- c("foo", "bar", "norf")
##> x
##foo bar norf
##1 2 3
##> names(x)
##[1] "foo" "bar" "norf"
##x <- list(a = 1, b = 2, c = 3
