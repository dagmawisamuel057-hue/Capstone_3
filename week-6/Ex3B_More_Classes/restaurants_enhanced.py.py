# Exercise 3B — More Fun With Classes

class Restaurant:
    """A class that represents a restaurant."""

    def __init__(self, rest_name, food_type):
        self.rest_name = rest_name
        self.food_type = food_type
        self.number_served = 0
        self.customer_ratings = []

    def describe_rest(self):
        print(f"{self.rest_name} serves {self.food_type}.")

    def rest_open(self):
        print(f"{self.rest_name} is open.")

    def add_num_served(self):
        customers_today = int(input(f"How many customers did {self.rest_name} serve today? "))
        self.number_served += customers_today

    def print_num_served(self):
        print(f"{self.rest_name} has served {self.number_served} customers.")

    def customer_rating(self):
        rating = int(input("How would you rate your experience today on a scale of 1-5? "))

        if rating >= 1 and rating <= 5:
            self.customer_ratings.append(rating)
            average_rating = sum(self.customer_ratings) / len(self.customer_ratings)

            print(f"Your rating was {rating}. The average rating for this restaurant is {average_rating:.2f}.")
        else:
            print("Please enter a rating between 1 and 5.")


# Create three restaurant instances
restaurant1 = Restaurant("Habesha Kitchen", "Ethiopian food")
restaurant2 = Restaurant("Panda Express", "Chinese food")
restaurant3 = Restaurant("Chipotle", "Mexican food")


# Test describe_rest() and rest_open()
restaurant1.describe_rest()
restaurant1.rest_open()

restaurant2.describe_rest()
restaurant2.rest_open()

restaurant3.describe_rest()
restaurant3.rest_open()

print()


# Test number served
restaurant1.print_num_served()
restaurant1.add_num_served()
restaurant1.add_num_served()
restaurant1.print_num_served()

print()

restaurant2.print_num_served()
restaurant2.add_num_served()
restaurant2.print_num_served()

print()

restaurant3.print_num_served()
restaurant3.add_num_served()
restaurant3.print_num_served()

print()


# Test customer ratings
restaurant1.customer_rating()
restaurant1.customer_rating()

restaurant2.customer_rating()

restaurant3.customer_rating()