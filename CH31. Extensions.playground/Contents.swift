import Foundation

extension Double {
    var asKM: Double { return self / 1000.0 }
    var asM: Double { return self }
    var asCM: Double { return self * 100.0 }
    var asMM: Double { return self * 1000.0 }

    var asFT: Double {
        get { return self / 0.3048 }
        set {
            self = newValue * 0.3048
        }
    }
}

var length: Double = 25
length.asFT

var someInt = 3
someInt.squared()

struct Line {
    var pointOne: (Double, Double)
    var pointTwo: (Double, Double)
}

extension Double {
    init(line: Line) {
        self = sqrt(
            pow((line.pointTwo.0 - line.pointOne.0), 2)
                + pow((line.pointTwo.1 - line.pointOne.1), 2)
        )
    }
}

var myLine = Line(pointOne: (10, 10), pointTwo: (14, 10))
var lineLength = Double(line: myLine)

extension Int {
    subscript(digitIndex: Int) -> Int {
        var base = 1
        var index = digitIndex
        
        while index > 0 {
            base *= 10
            index -= 1
        }
        return (self / base) % 10
    }
    
    func squared() -> Int {
        return self * self
    }
    
    func repetition(task: () -> Void) {
        for _ in 0..<self {
            task()
        }
    }
    
    var isEven: Bool {
        self % 2 == 0
    }
}

var c = 50
c.squared()
c.isEven

protocol TextRepresentable {
    func asText() -> String
}

extension Int: TextRepresentable {
    func asText() -> String {
        return String(self)
    }
}

5.asText()


protocol Descriptional {
    func getDescription() -> String
}

extension Descriptional {
    func getDescription() -> String {
        return "Description of an object"
    }
}

class myClass: Descriptional { }

var myClass1 = myClass()
myClass1.getDescription()

class myStruct: Descriptional {
    func getDescription() -> String {
        return "Description of a struct"
    }
}

var myStruct1 = myStruct()
myStruct1.getDescription()

extension TextRepresentable {
    func about() -> String {
        return "Current type supports a TextRepresentable protocol"
    }
}
5.about()
