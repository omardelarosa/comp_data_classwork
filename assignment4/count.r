count <- function(cause = NULL) {
  
  ## Check that "cause" is non-NULL; else throw error
  
  causes <- c("blunt force","bluntforce","asphyxiation","shooting","stabbing","unknown","other")
  
  causesRegExs <- (c("[Bb]lunt(.*?)[Ff]orce","[Aa]sphyxiation","[Ss]hooting","[Ss]tabbing","[Uu]nknown","[Oo]ther"))
  
  
  if (is.null(cause)) { 
      stop(simpleError("Function argument cannot be NULL.")) 
      } else if (length(grep(cause,causes,value=TRUE,ignore.case=TRUE)) < 1 ) {    
      stop(simpleError("Cause is not listed.")) 
      } else {
        
        x <- grep(cause,causes,ignore.case=TRUE) ## gets index of match
        
        if (x==1) {
          x <- 2
        } 
        
      searchRegEx <- paste("<dd>Cause:",causesRegExs[x-1])
        
      data <- readLines("homicides.txt") 

      count <- length(grep(searchRegEx,data))
      
      print(count)  
      
      }

      
  
  ## 4. count number of matches using regular expressions, similar to getFoundDates function.
  
  ## Return integer containing count of homicides for that cause
  
  ## 5. Return integer of matches based on step 4 result
  
}