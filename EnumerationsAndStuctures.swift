enum Suit {
    case spades
    func simpleDescription() -> String {
        switch self {
            case .spades: return "spades"
        }
    }
}

enum Rank : Int {
    case ace = 1
    case two, three, four, five, sig
    case jack, queen, king

    func simpleDescription() -> String {
        switch self {
            case .ace:
                return "ace"
            case .king:
                return "king"
            default:
                return String(self.rawValue)
        }
    }
}

let ace = Rank.ace
let row = ace.rawValue

enum ServerResponse {
    case result(String,String)
    case failure(String)
}

let success = ServerResponse.result("6:00 am", "8.09 pm")
let failure = ServerResponse.failure("Out out cheese")

switch success {
    case let .result(sunreise, sunset):
        print("Sunrise is at \(sunreise) and sunset is at \(sunset)")
    case let .failure(message):
        print("Failure... \(message)")
}

// struct

struct Card {
    var rank: Rank
    var suit: Suit
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
}

let threeOfSpades = (Card(rank: .three, suit: .spades))
