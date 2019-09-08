var myVariable = 42
let myConstant = 42

let implicitInteger = 70
let explicitDouble: Double = 70

let label = "The width is "
let width = 94
let widthLabel = label + String(width)

let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."

let quotation = """
I said "I have \(apples) apples."
And then i said "I have \(apples + oranges) pieces of fruit."
"""

print(quotation)


var shoppingList = ["catfish", "water", "tuplips"]
shoppingList[1] = "bottle of water"

var occupations = [
    "Malcolm": "Captain",
    "Kaylee": "Machanic"
]

occupations["Jayne"] = "Public relations"
shoppingList.append("blue paint")
print(shoppingList)

shoppingList = []
occupations = [:]