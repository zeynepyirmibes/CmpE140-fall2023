
# DO_NOT_REMOVE_MODIFY_OR_REPLICATE_THIS_MARKER__THE_EDITABLE_SECTION_STARTS_RIGHT_AFTER_THIS_LINE
most_hateful_student <- function(vec){
  return(names(sort(vec))[1])
}

life_isnt_fair <- function(vec){
  vec[vec <= 30] = vec[vec <= 30] - 10
  vec[vec > 30] = vec[vec > 30] - 25
  
  vec[vec < 0] = 0
  
  return(sort(vec, decreasing=T))
}



# DO_NOT_REMOVE_MODIFY_OR_REPLICATE_THIS_MARKER__THE_EDITABLE_SECTION_ENDS_RIGHT_BEFORE_THIS_LINE
