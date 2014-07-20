Week 7 R Assignment
========================================================

**Write code to read in our class database simplecharter.sqlite as a data frame in R.**

```{r echo=TRUE}

require("RSQLite")
require("DBI")
library("RSQLite")
setwd("C:/Users/Jessie/Documents/GitHub/cuny_msda_programming")
drv <- dbDriver("SQLite")
db <- "simplecharter.sqlite"
conn <- dbConnect(drv, db)
list<-paste(length(dbListTables(conn))," tables loaded from ",db,":",sep="")

for(table in dbListTables(conn)) {
  name <- paste("",table,sep="")
  data <- dbReadTable(conn, table)
  assign(name, data)
  list<-paste(list," ",name,",",sep="")
}

list

```

**Write code that exports the data frame Boston (from the MASS package) to a table in a new SQLite database file.**


```{r echo=TRUE}

require("MASS")
require("RSQLite")
require("DBI")
library("RSQLite")
library("MASS")
setwd("C:/Users/Jessie/Documents/GitHub/cuny_msda_programming")
drv <- dbDriver("SQLite")
conn <- dbConnect(drv, dbname = "Boston.sqlite")

data(Boston)
dbWriteTable(conn,"Boston",Boston)

```