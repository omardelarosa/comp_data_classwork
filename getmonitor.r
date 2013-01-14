getmonitor <- function(id, directory, summarize = FALSE) {
  
  ## 'id' is a vector of length 1 indicating the monitor ID
  ## number. The user can specify 'id' as either an integer, a
  ## character, or a numeric.
  
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'summarize' is a logical indicating whether a summary of
  ## the data should be printed to the console; the default is
  ## FALSE
  
  #formats number
  num <- sprintf("%03s",id)
  
  #connects to file
  filename <- paste(directory,"/",num,".csv",sep="")
  
  #grabs data frame
  data <- read.csv(filename,header=TRUE)
  
  if (summarize==TRUE) {
    summary(data)
  }
  
  return(data)
}