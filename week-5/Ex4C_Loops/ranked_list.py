# Ranked List Program

foods = [
    "Injera",
    "Burger",
    "Pizza",
    "Pasta",
    "Tacos"
]

print("Favorite Foods Ranking:")

for index, food in enumerate(foods, start=1):

    if index == 1:
        print(str(index) + ". " + food + " <- top pick!")
    else:
        print(str(index) + ". " + food)

print("\nReverse Order:")

for index, food in enumerate(reversed(foods), start=1):
    print(str(index) + ". " + food)