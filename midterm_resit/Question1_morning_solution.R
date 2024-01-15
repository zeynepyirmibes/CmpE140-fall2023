
# DO_NOT_REMOVE_MODIFY_OR_REPLICATE_THIS_MARKER__THE_EDITABLE_SECTION_STARTS_RIGHT_AFTER_THIS_LINE

stock_situation <- function(gro_stock) {
  # Find the vegetable with the least amount
  min_veggie <- names(gro_stock)[which.min(gro_stock)]
  
  # Calculate the average weight of scarce vegetables
  scarce_veggies <- gro_stock[gro_stock <= 30]
  avg_weight <- mean(scarce_veggies)
  avg_weight <- round(ifelse(is.nan(avg_weight) , 0, avg_weight), 2)
  
  # Return the results as a named vector
  result <- c(Least_Vegetable = min_veggie, Average_Weight = round(avg_weight, 2))
  return(result)
}

# DO_NOT_REMOVE_MODIFY_OR_REPLICATE_THIS_MARKER__THE_EDITABLE_SECTION_ENDS_RIGHT_BEFORE_THIS_LINE
