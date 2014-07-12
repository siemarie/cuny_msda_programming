readCSV <- function() {
  
  ## ABOUT ------------------------------------------------------
  ## Script reads a local CSV file into R. Assignment for CUNY
  ## MSDA Programming Bridge, Week 6, R Quiz. By Jessie Lamb.
  ## ------------------------------------------------------------
  
  data <- read.table(file="pizza-store-data.csv",sep=",",header=TRUE)
  summary(data)
  
  ## DATA -------------------------------------------------------
  ## pizza-store-data.csv is a CSV file containing 4 columns
  ## of data about sales at 4 pizza stores. 
  ##
  ##      date: date of record, data type factor
  ##     store: location of pizza store, data type factor
  ##    pizzas: number of pizzas sold, data type integer
  ## customers: number of customers served, data type integer
  ## ------------------------------------------------------------
  
}