
# DO_NOT_REMOVE_MODIFY_OR_REPLICATE_THIS_MARKER__THE_EDITABLE_SECTION_STARTS_RIGHT_AFTER_THIS_LINE

secure_password <- function(password) {
  # Check password length
  length_points <-  length(strsplit(password, "")[[1]]) > 8
  
  # Initialize flags for lowercase, uppercase, and number checks
  lowercase_found <- FALSE
  uppercase_found <- FALSE
  number_found <- FALSE
  symbol_found <- FALSE
  
  # Check if the password contains at least one lowercase letter, one uppercase letter, and one number
  for (char in strsplit(password, "")[[1]]) {
    
    if (char %in% letters) {
      lowercase_found <- TRUE
    } else if (char %in% LETTERS) {
      uppercase_found <- TRUE
    } else if (char %in% c("0","1","2","3","4","5","6","7","8","9")) {
      number_found <- TRUE
    } else if (char %in% c("!","#","+","%","&","*","-")) {
      symbol_found <- TRUE
    }
  }
  
  # Calculate the total points
  total_points <- length_points + lowercase_found + uppercase_found + number_found + symbol_found
  
  # Assign the strength based on total points
  if (total_points == 5) {
    return("Very Strong")
  }else if (total_points == 4) {
    return("Strong")
  } else if (total_points == 3) {
    return("Medium")
  } else if (total_points == 2) {
    return("Weak")
  } else {
    return("Very Weak")
  }
}


# DO_NOT_REMOVE_MODIFY_OR_REPLICATE_THIS_MARKER__THE_EDITABLE_SECTION_ENDS_RIGHT_BEFORE_THIS_LINE
