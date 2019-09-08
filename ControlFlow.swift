let individualScores = [75,43,103,87,12]
var teamScore = 0

for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}

print(teamScore)

var optionalString: String? = "Hello"
print(optionalString == nil)

var optionalName : String? = "John Applessed"
var greeting = "Hello!"

if let name = optionalName {
    greeting = "Hello, \(name)"
}

let nickName: String? = nil
let fullName: String = "John Applessed"
let informalGreeting = "Hi \(nickName ?? fullName)"


var vagetable = "red pepper"

switch vagetable {
case "calery":
    print("Add some")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
default:
    print("Everything")
}


// for

let interestingNumbers = [
    "Prime": [2,3,5,7,11,23],
    "Fibbonacci": [1,1,2,3,5,8],
    "Squre":[1,4,9,16,25]
]

var largest = 0
for (_, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}

print(largest)

// while

var n = 2
while n < 100 {
    n *= 2
}

print(n)

var m = 2
repeat {
    m *= 2
} while m < 100

print(m)