# Exercise 4C — JSON storage

import json

favorite_number = input("Enter your favorite number: ")

with open("favorite_number.json", "w") as file:
    json.dump(favorite_number, file)

print("Your favorite number has been saved.")


with open("favorite_number.json", "r") as file:
    saved_number = json.load(file)

print("I know your favorite number! It is", saved_number)