best <- function(state, outcome) {
  ## Read outcome data
  data <- read.csv("outcome-of-care-measures.csv")
  
  data2 <-subset(data,table(outcome$State)[outcome$State])
  
  death <- data2[,11]
  
  bystate <- subset(data,State = state)
  
  ## Check that state and outcome are valid
  
  ## Return hospital name in that state with lowest 30-day death
  
  ## rate

}