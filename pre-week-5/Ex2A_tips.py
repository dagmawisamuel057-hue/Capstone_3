# Exercise 2A: Restaurant Tip Calculation

# Define known values
food_cost = 79.25
tax = 6.54
tip = 12.00

# Calculate the unknown
total_due = food_cost + tax + tip

# Display the results
print("The total due is " + str(total_due))

# str() is used because Python cannot combine text and numbers directly.
# It changes the number into text so it can be printed with the sentence.

print("Food cost is " + str(food_cost) + " and tax is " + str(tax))
print("Tip is " + format(tip, ".2f"))
print("Total due is " + str(total_due))

# format(tip, ".2f") displays the tip with two decimal places, like money.