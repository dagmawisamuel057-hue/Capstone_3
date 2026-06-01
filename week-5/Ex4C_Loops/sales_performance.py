# Sales Performance Tracker

# Employee names
employees = [
    "Luis",
    "Alexis",
    "Corey",
    "Blake"
]

# Sales amounts
sales = [
    1500,
    2200,
    1800,
    2600
]

# Variables for totals and top performer
total_sales = 0
top_sales = 0
top_employee = ""

print("Employee Sales Performance\n")

# Loop through employees and sales
for index in range(len(employees)):

    employee_name = employees[index]
    employee_sales = sales[index]

    print(employee_name + " sold $" + str(employee_sales))

    # Add sales to total
    total_sales += employee_sales

    # Determine performance level
    if employee_sales >= 2500:
        print("Excellent performance!")

    elif employee_sales >= 2000:
        print("Strong performance!")

    else:
        print("Needs improvement.")

    # Find top performer
    if employee_sales > top_sales:
        top_sales = employee_sales
        top_employee = employee_name

    print()

# Final totals
print("Total Team Sales: $" + str(total_sales))
print("Top Performer:", top_employee)
print("Highest Sales: $" + str(top_sales))