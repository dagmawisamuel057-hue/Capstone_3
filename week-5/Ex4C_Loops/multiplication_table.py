# Multiplication Table

number = int(input("Enter a number:3 "))

for i in range(1, 11):
    result = number * i
    print(str(number) + " x " + str(i) + " = " + str(result))