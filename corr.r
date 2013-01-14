corr <- function(directory, threshold = 0) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'threshold' is a numeric vector of length 1 indicating the
  ## number of completely observed observations (on all
  ## variables) required to compute the correlation between
  ## nitrate and sulfate; the default is 0
  
  ## Return a numeric vector of correlations
  
  source("complete.r")
  source("getmonitor.r")

  id <- 1:332
  correlations <- as.numeric(c())
  completes <- complete(directory) 
  for(i in id){
    if(completes[i,2]>threshold){
       data <- getmonitor(i,directory)
       correlations[i] <- rbind(cor(data$sulfate,data$nitrate,use="complete.obs"))
    }
    ##return(correlations)
  }

  if(length(correlations)>0){
    return(na.omit(correlations))
  } else {
    return(correlations)
  }
}