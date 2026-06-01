# Exercise 4A Lab 2: Pay Rules

pay_rate = 20
hours_worked = 38

# Calculate gross pay
if hours_worked > 40:
    regular_hours = 40
    overtime_hours = hours_worked - 40

    regular_pay = regular_hours * pay_rate
    overtime_pay = overtime_hours * pay_rate * 1.5

    gross_pay = regular_pay + overtime_pay
else:
    gross_pay = hours_worked * pay_rate

print("Pay rate: $" + format(pay_rate, ".2f"))
print("Hours worked: " + str(hours_worked))
print("Gross pay: $" + format(gross_pay, ".2f"))