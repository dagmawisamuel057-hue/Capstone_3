# Bonus Exercise 4D: Number Guesser

import random

# Generate a random number between 1 and 10
secret_number = random.randint(1, 10)

guess = 0

print("Welcome to the Number Guessing Game!")
print("Try to guess the number between 1 and 10.")

# Keep looping until the user guesses correctly
while guess != secret_number:

    guess = int(input("Enter your guess: "))

    if guess < secret_number:
        print("Too low! Try again.")

    elif guess > secret_number:
        print("Too high! Try again.")

    else:
        print("Correct! You guessed the number!")