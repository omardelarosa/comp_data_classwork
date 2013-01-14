complete <- function(directory, id = 1:332) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used.
  
  ## Return a data frame of the form:
  ## id nobs
  ## 1  117
  ## 2  1041
  ## ...
  ## where 'id' is the monitor ID number and 'nobs' is the
  ## number of complete cases
  
  source("getmonitor.r")
  
  dataFrame <- data.frame(id=NULL,nobs=NULL)
  
  #print(id)
  
  
  
  for(i in id){
    
    idNum <- sprintf("%03d",i)
    currentMonitor <- getmonitor(i,directory)  
   ## data$id[i] <- i
    numComplete <- sum(complete.cases(currentMonitor))
    dataFrame <- rbind(dataFrame,data.frame(id=i,nobs=numComplete))
    #print(i)
    i <- i + 1
    dataFrameNew <- dataFrame
  }
  return(dataFrameNew)
}