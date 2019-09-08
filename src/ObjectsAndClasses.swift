class Shape {
    var numberOfSides = 0
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sidles"
    }
}

var shape = Shape()
shape.numberOfSides = 7
var _ = shape.simpleDescription()


class NamedShape {
    var numberOfSides: Int = 0
    var name: String

    init(name:String) {
        self.name = name
    }

    func simpleDescription() -> String {
        return "A sahpe with \(numberOfSides) sides."
    }
}

class Squre: NamedShape {
    var sideLength: Double

    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)

        numberOfSides = 4
    }

    func area() -> Double {
        return sideLength * sideLength
    }

    override func simpleDescription() -> String {
        return "A squre with sides of length \(sideLength)"
    }
}

let test = Squre(sideLength: 5.2, name: "My test squire")
let _ = test.area()
let _ = test.simpleDescription()

