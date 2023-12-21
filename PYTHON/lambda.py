people = [
    {"name": "Harry", "houses": "Gryffindor"},
    {"name": "cho", "house": "Ravenclaw"},
    {"name": "Draco", "house": "slytherin"}
]

def f(person):
    return person["house"]

people.sort(key=lambda person: person["name"])

print(people)