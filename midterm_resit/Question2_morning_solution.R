
# DO_NOT_REMOVE_MODIFY_OR_REPLICATE_THIS_MARKER__THE_EDITABLE_SECTION_STARTS_RIGHT_AFTER_THIS_LINE

lucas <- function(n) {

  if(n == 0){
    return (2)
  }

  if(n == 1){
    return (1)
  }

  lucas_prev <- 2
  lucas_curr <- 1


  for (i in 2:(n)) {
    #print(paste("i:",i))
    lucas_next <- lucas_prev + lucas_curr
    lucas_prev <- lucas_curr
    lucas_curr <- lucas_next
  }

  return(lucas_curr)
}

# DO_NOT_REMOVE_MODIFY_OR_REPLICATE_THIS_MARKER__THE_EDITABLE_SECTION_ENDS_RIGHT_BEFORE_THIS_LINE
