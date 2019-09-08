func greet(person: String, day:String) -> String {
    return "Hello \(person), today is \(day)."
}

let msg = greet(person: "Bob", day: "Tuesday")

func calcualteStatistics(scores: [Int]) -> (min: Int, max:Int, sum:Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0

    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum +=  score
    }

    return (min,max,sum)
}

let statistics = calcualteStatistics(scores: [5,3,100,3,9])
print(statistics.sum)


func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}


// first class function
func makeIncrementer() -> ((Int) -> Int){
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}

var incremnt = makeIncrementer()
var _ = incremnt(7)

func hasAnyMatches(list: [Int], conditions:(Int) -> Bool) -> Bool  {
    for item in list {
        if conditions(item) {
            return true
        }
    }
    return false
}

func lessThanTen(number: Int) -> Bool {
    return number < 10
}

var numbers = [20,19,7,12]
var _ = hasAnyMatches(list: numbers, conditions: lessThanTen)

let mappedNumbers = numbers.map( { number in 3 * number })
print(mappedNumbers)

let sortedNumbers = numbers.sorted { $0 > $1 }
print(sortedNumbers)