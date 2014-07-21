Extended Exercises - Week 7
========================================================

**1. Implement the Simplex method. Again, don't use existing packages to do this. You should be able to simply perform operations on the matrix class.**

```{r echo=TRUE}

source("simplexMethod.R");

```

**2. Come up with a real-world optimization problem that can be solved using the Simplex method. Provide the code listing that gives the solution. Why did you choose this problem?**

A company creates 3 products. Product A requires 2 hours of research & development and 2 hours of production. Product B requires 2 hours of research & development and 1 hour of production. Product C requires 3 hours of research & development and 1 hour of production. The company has a max of 1000 R&D hours and a max of 800 production hours. The company can produce up to 420 products per week. The profit for Product A is $10 while the profit for Product B is $7 and the profit for Product C is $8. How can the company maximize its profits?

```{r echo=TRUE}

row1<-c(2,2,3,1,0,0,1000);
row2<-c(2,1,1,0,1,0,800);
row3<-c(1,1,1,0,0,1,420);
row4<-c(-10,-7,-8,0,0,0,0);
matrix <- rbind(row1,row2,row3,row4);
print(simplexMethod(matrix))

```

The maximum profit is $4120 when 380 of Product A are produced.