# Monthly Federal Tax Calculator

monthly_salary = 3500
tax_rate = 0.23

tax_withheld = monthly_salary * tax_rate
take_home_pay = monthly_salary - tax_withheld

print("Monthly salary: $" + format(monthly_salary, ".2f"))
print("Federal tax withheld: $" + format(tax_withheld, ".2f"))
print("Take-home pay: $" + format(take_home_pay, ".2f"))