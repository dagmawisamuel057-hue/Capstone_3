# Exercise 3B — Users and Admin Classes

class User:

    def __init__(self, first_name, last_name, age, email):
        self.first_name = first_name
        self.last_name = last_name
        self.age = age
        self.email = email

    def describe_user(self):
        print("First Name:", self.first_name)
        print("Last Name:", self.last_name)
        print("Age:", self.age)
        print("Email:", self.email)

    def greet_user(self):
        print("Welcome,", self.first_name + "!")


# Create users
user1 = User("Dagmawi", "Mulugeta", 27, "dagmawi@email.com")
user2 = User("Luis", "Martinez", 25, "luis@email.com")

print("Regular Users")
print("----------------")

user1.describe_user()
user1.greet_user()

print()

user2.describe_user()
user2.greet_user()


# -------------------------
# Inheritance (Admin Class)
# -------------------------

class Admin(User):

    def __init__(self, first_name, last_name, age, email, privileges):
        super().__init__(first_name, last_name, age, email)
        self.privileges = privileges

    def show_privileges(self):
        print("Admin Privileges:")

        for privilege in self.privileges:
            print("-", privilege)


print("\nAdmin User")
print("----------------")

admin1 = Admin(
    "Alexis",
    "Johnson",
    30,
    "alexis@email.com",
    ["can add user", "can delete user", "can reset passwords"]
)

admin1.describe_user()
admin1.greet_user()
admin1.show_privileges()