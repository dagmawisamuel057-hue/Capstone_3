# Exercise 3A — Restaurant Class

class Restaurant:

    def __init__(self, restaurant_name, cuisine_type):
        self.restaurant_name = restaurant_name
        self.cuisine_type = cuisine_type

    def describe_restaurant(self):
        print("Restaurant Name:", self.restaurant_name)
        print("Cuisine Type:", self.cuisine_type)

    def open_restaurant(self):
        print(self.restaurant_name + " is now open!")


# Create restaurant objects
restaurant1 = Restaurant("Habesha Kitchen", "Ethiopian")
restaurant2 = Restaurant("Panda Express", "Chinese")
restaurant3 = Restaurant("Chipotle", "Mexican")

# Call methods
restaurant1.describe_restaurant()
restaurant1.open_restaurant()

print()

restaurant2.describe_restaurant()
restaurant2.open_restaurant()

print()

restaurant3.describe_restaurant()
restaurant3.open_restaurant()