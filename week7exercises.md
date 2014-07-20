Book Exercises - Week 7
========================================================

## Section 4.5

**1. When he was young, Captain Conundrum mowed lawns on weekends to help pay his college tuition bills. He charged his customers according to the size of their lawns at a rate of 5¢ per square foot and meticulously kept a record of the areas of their lawns in an ordered list:**

```{r echo=TRUE}

A <- c(200,300,50,50,100,100,200,500,1000,100);

```

**He also listed the number of times he mowed each lawn in a given year, for the year 1988 that ordered list was:**


```{r echo=TRUE}

f <- c(20,1,2,4,1,5,2,1,10,6)

```

**(a) Pretend that A and f are vectors and compute A*f.**

```{r echo=TRUE}

A*f

```

**(b) What quantity does the dot product A*f measure?**

```{r echo=TRUE}

sum(A*f)

```

**(c) How much did Captain Conundrum earn from mowing lawns in 1988? Write an expression for this amount in terms of the vectors A and f.**

```{r echo=TRUE}

dollarsEarned <- 0.05*(sum(A*f))
dollarsEarned

```

**(d) Suppose Captain Conundrum charged different customers different rates. How could you modify the expression in part 1c to compute the Captain's earnings?**

Rates could be stored in a vector such that:

```{r echo=TRUE}

r<-round(rnorm(10,.05,.05),2)

```

Then, the expression in 1c could be computed as:

```{r echo=TRUE}

dollarsEarned <- sum(A*f*r)

```