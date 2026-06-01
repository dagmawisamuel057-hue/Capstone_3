# Exercise 2D — Lambdas and Generators

# -------------------------------
# Lab 1 — Lambda Functions
# -------------------------------

square = lambda x: x * x
print("Square of 5:", square(5))

add = lambda a, b: a + b
print("10 + 20 =", add(10, 20))


# -------------------------------
# Lab 2 — map()
# -------------------------------

numbers = [1, 2, 3, 4, 5]

squared_numbers = list(map(lambda x: x * x, numbers))
print("Squared numbers:", squared_numbers)


# -------------------------------
# Lab 3 — filter()
# -------------------------------

even_numbers = list(filter(lambda x: x % 2 == 0, numbers))
print("Even numbers:", even_numbers)


# -------------------------------
# Lab 4 — List Comprehension
# -------------------------------

doubled_numbers = [x * 2 for x in numbers]
print("Doubled numbers:", doubled_numbers)


# -------------------------------
# Lab 5 — Generator Expression
# -------------------------------

generator_numbers = (x * x for x in numbers)

print("Generator expression output:")
for value in generator_numbers:
    print(value)


# -------------------------------
# Lab 6 — Generator Function
# -------------------------------

def countdown(n):
    while n > 0:
        yield n
        n -= 1

print("Generator function output:")
for num in countdown(5):
    print(num)