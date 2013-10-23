getFoundDates <- function(data){
  
  r <- regexec("<dd>[Ff]ound on (.*?)</dd>",data)   
  
  m <- regmatches(data,r)   
  
  dates <- sapply(m, function(x) x[2])
  
  dates <- as.Date(dates, "%B %d, %Y")
  
  hist(dates,"month", freq=TRUE)
  
}

