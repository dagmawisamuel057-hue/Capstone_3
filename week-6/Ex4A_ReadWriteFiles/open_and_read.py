# Exercise 4A Lab 1 — Open and Read

f = open("about_me.txt", "r")

print(f.read())

f.close()


print("\n--- read(50) twice ---")
f = open("about_me.txt", "r")
print(f.read(50))
print(f.read(50))
f.close()

print("\n--- readline examples ---")
f = open("about_me.txt", "r")
print(f.readline(10))
print(f.readline())

for i in range(1, 5):
    print(f.readline())

f.close()

print("\n--- readlines examples ---")
f = open("about_me.txt", "r")
print(f.readlines(1))
print(f.readlines(1))
print(f.readlines(10))
print(f.readlines(10))
f.close()

print("\n--- readlines larger examples ---")
f = open("about_me.txt", "r")
print(f.readlines(100))
f.close()

f = open("about_me.txt", "r")
print(f.readlines(-1))
f.close()