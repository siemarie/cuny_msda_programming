readHTMLTable <- function() {
  
  ## ABOUT ------------------------------------------------------
  ## Script reads an HTML table from a live website into R. This 
  ## script pulls 2014 NFL quarterback stats from "http://www.nfl
  ## .com/stats/categorystats?tabSeq=1&statisticPositionCategory=
  ## QUARTERBACK" for CUNY MSDA Programming Bridge, Week 6, R 
  ## Assignment. By Jessie Lamb.
  ## ------------------------------------------------------------
  
  install.packages("XML")
  require(XML)
  
  url <- "http://www.nfl.com/stats/categorystats?tabSeq=1&statisticPositionCategory=QUARTERBACK"
  data <- readHTMLTable(url, which=1, header=FALSE)
  
  ## Due to the construction of these tables, including column names
  ## removes the first row of data. Therefore, column names are set
  ## as follows:
  
  dataHeaders <- readHTMLTable(url, which=1, header=TRUE)
  colnames(data) <- colnames(dataHeaders)
  
  summary(data)
