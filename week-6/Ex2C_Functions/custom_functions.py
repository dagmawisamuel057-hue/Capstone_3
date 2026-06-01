# Exercise 2C Lab 1: Creating and Calling Functions

def display_mailing_label(name, address, city, state, zip_code):
    print(name)
    print(address)
    print(city + ", " + state + " " + zip_code)


def add_numbers(*numbers):
    total = sum(numbers)
    print("Total:", total)


def display_receipt(total_due, amount_paid):
    change_due = amount_paid - total_due

    print("Total Due: $" + format(total_due, ".2f"))
    print("Amount Paid: $" + format(amount_paid, ".2f"))

    if amount_paid >= total_due:
        print("Change Due: $" + format(change_due, ".2f"))
    else:
        remaining_balance = total_due - amount_paid
        print("Remaining Balance: $" + format(remaining_balance, ".2f"))


# Call display_mailing_label() at least twice
display_mailing_label("Dagmawi Mulugeta", "123 Main Street", "Silver Spring", "MD", "20910")
print()
display_mailing_label("Luis Martinez", "456 Oak Avenue", "Charlotte", "NC", "28202")

print()

# Call add_numbers() three times
add_numbers(10)
add_numbers(10, 20)
add_numbers(10, 20, 30, 40)

print()

# Call display_receipt() three times
display_receipt(25.00, 30.00)   # overpay
print()
display_receipt(25.00, 25.00)   # exact pay
print()
display_receipt(25.00, 20.00)   # underpay





# BONUS: Modified mailing label function with optional second address line

def display_mailing_label2(name, address_line1, city, state, zip_code, address_line2=""):
    print(name)
    print(address_line1)

    if address_line2 != "":
        print(address_line2)

    print(city + ", " + state + " " + zip_code)


print("\nBonus Mailing Label Examples:\n")

display_mailing_label2("Dagmawi Mulugeta", "123 Main Street", "Silver Spring", "MD", "20910")

print()

display_mailing_label2("Luis Martinez", "456 Oak Avenue", "Charlotte", "NC", "28202", "Apt 4B")


# BONUS: Modified receipt function with multiple balances

def display_receipt2(amount_paid, *total_due_values):
    total_due = sum(total_due_values)
    change_due = amount_paid - total_due

    print("\nBonus Receipt Example:")
    print("Total Due: $" + format(total_due, ".2f"))
    print("Amount Paid: $" + format(amount_paid, ".2f"))

    if amount_paid >= total_due:
        print("Change Due: $" + format(change_due, ".2f"))
    else:
        remaining_balance = total_due - amount_paid
        print("Remaining Balance: $" + format(remaining_balance, ".2f"))


display_receipt2(100.00, 25.00, 30.00, 15.00)
display_receipt2(50.00, 20.00, 20.00, 20.00)