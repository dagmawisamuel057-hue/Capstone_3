# Exercise 4B — Working with Exceptions
# Lab 1: exception_basics.py

# -------------------------------
# ValueError example
# -------------------------------

try:
    number = int("hello")
except ValueError:
    print("ValueError: You tried to convert text into a number.")
else:
    print(number)
finally:
    print("Let's try another one...")


# -------------------------------
# NameError example
# -------------------------------

try:
    result = unknown_variable
except NameError:
    print("NameError: You tried to use a variable that was not defined.")
else:
    print(result)
finally:
    print("Let's try another one...")


# -------------------------------
# TypeError example
# -------------------------------

try:
    total = "5" + 5
except TypeError:
    print("TypeError: You tried to combine two incompatible data types.")
else:
    print(total)
finally:
    print("Let's try another one...")


# -------------------------------
# SyntaxError example
# -------------------------------

try:
    eval("if True print('hello')")
except SyntaxError:
    print("SyntaxError: The code structure is written incorrectly.")
else:
    print("The code ran successfully.")
finally:
    print("Let's try another one...")