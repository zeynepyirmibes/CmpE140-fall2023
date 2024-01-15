
# DO_NOT_REMOVE_MODIFY_OR_REPLICATE_THIS_MARKER__THE_EDITABLE_SECTION_STARTS_RIGHT_AFTER_THIS_LINE

vending_machine <- function(coins, item_name) {
  
  # Define the price of each item
  prices <- c("Coke"=1.60, "Soda"=0.80, "Water"=0.50, "Chips"=1.30, "Chocolate"=1.00) 
  
  # Calculate the total amount of coins
  total <- sum(coins * c(5, 10, 25))
  
  # Calculate the change
  change <- total - prices[[item_name]]*100
  
  # Check if the user has enough money
  if (change < 0) {
    return("Not enough money")
  }
  
  # Convert the change into coins
  quarters <- floor(change / 25)
  dimes <- floor((change - quarters * 25) / 10)
  nickels <- floor((change - quarters * 25 - dimes * 10) / 5)
  
  
  # Return the remaining coins as a named vector
  return(c("nickels"=nickels, "dimes"=dimes, "quarters"=quarters))
}


# DO_NOT_REMOVE_MODIFY_OR_REPLICATE_THIS_MARKER__THE_EDITABLE_SECTION_ENDS_RIGHT_BEFORE_THIS_LINE
