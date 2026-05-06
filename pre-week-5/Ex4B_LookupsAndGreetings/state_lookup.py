# State Lookup Dictionary

states = {
    "MD": "Maryland",
    "VA": "Virginia",
    "CA": "California",
    "TX": "Texas",
    "NY": "New York"
}

abbreviation = input("MD").upper()

if abbreviation in states:
    print("The state is " + states[abbreviation])
else:
    print("State abbreviation not found.")