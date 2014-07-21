simplexMethod <- function(augMatrix) {
  
  ## DEFINITIONS ------------------------------------------------
  ## augMatrix: original matrix in simplex tableau format to
  ##            be solved.
  ##
  ## ------------------------------------------------------------  
  
  finalRow <- nrow(augMatrix)
  otherRows <- finalRow-1
  lastCol <- ncol(augMatrix)
  pivots <- c()
  test <- c()
  pivotCol <- which.min(augMatrix[finalRow,]) ## get initial pivot column
  newMatrix <- augMatrix
  runAgain=1;
  
  while(runAgain>=1) { ## as long as matrix is not yet solved
    rowVector <- c(1:finalRow)
    ##newPivotCol<-which.min(newMatrix[finalRow,])
    
    mostNeg <- newMatrix[finalRow,pivotCol] ## get value of the pivot column's final row 
    
    if(mostNeg<0) { ## if the value is not yet zeroed out
      newValueTest<-c()
      i<-1
      while(i<=otherRows) { ## loop through other rows
        newValueTest<-c(newValueTest,newMatrix[i,lastCol]/newMatrix[i,pivotCol])
        i<-i+1
      }
      pivotRow <- which.min(newValueTest) ## ideftify pivot row
      rowVector<-rowVector[!rowVector==pivotRow] ## create vector of rows other than pivot row
      pivot<-newMatrix[pivotRow,pivotCol] ## identify pivot value
      newMatrix[pivotRow,] <- newMatrix[pivotRow,]/pivot
      
      for(row in rowVector) {
       newMatrix[row,] <- newMatrix[row,]-(newMatrix[row,pivotCol]*newMatrix[pivotRow,]) 
      }
      
    }
    newPivotCol<-which.min(newMatrix[finalRow,])
    newPivot <- newMatrix[finalRow,newPivotCol]
    if(newPivot<0) {
      runAgain=1
      pivotCol=newPivotCol
      mostNeg<-newPivot
    } else {
      runAgain=0
    }
  }
  newMatrix
}