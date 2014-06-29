## -------------- WEEK 4 ASSIGNMENT -------------- ##
##                                                 ##
## Three different ways to assign variables.       ##
##                                                 ##
## ----------------------------------------------- ##

x <- 1
y = 2
assign("z",3)

## ----------------------------------------------- ##
##                                                 ##
## Use sum() and is.na() to count missing values.  ##
##                                                 ##
## ----------------------------------------------- ##

x <- c(1,5,NA,4,NA)
sum(is.na(x))

## ----------------------------------------------- ##
##                                                 ##
## Show the difference between library() and       ##
## require().                                      ##
##                                                 ##
## ----------------------------------------------- ##

x <- library(MASS)
## returns x as the elements of the MASS package.

x <- library(math)
## prints "Error in library(math) : there is no package called 'math'" but does not return/update x.

x <- require(MASS)
## returns x as "TRUE" indicating that the package loaded correctly.

x <- require(math)
## returns x as "FALSE" indicating that the package did not load correctly.