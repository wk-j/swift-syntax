func makeArray<Item> (repeating item: Item, nubmerOfTimes: Int) -> [Item] {
    var result = [Item]()
    for _ in 0..<nubmerOfTimes {
        result.append(item)
    }
    return result
}

_ = makeArray(repeating: "knock", nubmerOfTimes: 4)

enum OptionalValue<Wrapped> {
    case none
    case some(Wrapped)
}

var possibleInteger: OptionalValue<Int> = .none
possibleInteger = .some(100)