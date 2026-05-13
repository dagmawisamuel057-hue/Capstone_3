# Exercise 4A — Reading Files

filename = "sample_text.txt"

with open(filename, "w") as file:
    file.write("Hello Dagmawi!\n")
    file.write("Welcome to Python file handling.\n")
    file.write("This is Exercise 4A.\n")


with open(filename, "r") as file:
    contents = file.read()

print(contents)