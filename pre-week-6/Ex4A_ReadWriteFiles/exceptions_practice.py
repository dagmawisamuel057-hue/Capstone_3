# Exercise 4B — Working With Exceptions

# Example 1: Handling a missing file

filename = "missing_file.txt"

try:
    with open(filename, "r") as file:
        contents = file.read()
        print(contents)

except FileNotFoundError:
    print("Sorry, the file was not found.")


print()


# Example 2: Handling invalid number input

try:
    number = int(input("Enter a number: "))
    print("You entered:", number)

except ValueError:
    print("That was not a valid number. Please enter digits only.")


print()


# Example 3: Handling division by zero

try:
    numerator = int(input("Enter the top number: "))
    denominator = int(input("Enter the bottom number: "))

    result = numerator / denominator
    print("Result:", result)

except ZeroDivisionError:
    print("You cannot divide by zero.")

except ValueError:
    print("Please enter valid numbers only.")