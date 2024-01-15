
# DO_NOT_REMOVE_MODIFY_OR_REPLICATE_THIS_MARKER__THE_EDITABLE_SECTION_STARTS_RIGHT_AFTER_THIS_LINE
middle_avg_difference <- function(vec){
  mid = (length(vec) + 1) / 2
  middle = vec[mid]
  avg = mean(vec)
  
  if(middle == avg){
    return("same")
  }
  else{
    return(round(abs(middle - avg), 2))
  }
}


# DO_NOT_REMOVE_MODIFY_OR_REPLICATE_THIS_MARKER__THE_EDITABLE_SECTION_ENDS_RIGHT_BEFORE_THIS_LINE
