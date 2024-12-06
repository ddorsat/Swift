import Foundation

protocol SomeProtocol {
    var mustBeSettable: Int { get set }
    var doesNotNeedToBeSettable: Int { get set }
}

struct SomeStruct: SomeProtocol {
    var mustBeSettable: Int
    var doesNotNeedToBeSettable: Int

    func getSum() -> Int {
        return self.mustBeSettable + self.doesNotNeedToBeSettable
    }
}

protocol AnotherProtocol {
    static var someTypeProperty: Int { get }
}

struct AnotherStruct: SomeProtocol, AnotherProtocol {
    var mustBeSettable: Int
    var doesNotNeedToBeSettable: Int
    nonisolated(unsafe) static var someTypeProperty: Int = 3

    func getSum() -> Int {
        return self.mustBeSettable + self.doesNotNeedToBeSettable
            + AnotherStruct.someTypeProperty
    }
}

protocol RandomNumberGenerator {
    var randomCollection: [Int] { get set }
    func getRandomNumber() -> Int
    mutating func setNewRandomCollection(newValue: [Int])
}

struct RandomGenerator: RandomNumberGenerator {
    var randomCollection: [Int] = [1, 2, 3, 4, 5]

    func getRandomNumber() -> Int {
        if let randomElement = randomCollection.randomElement() {
            return randomElement
        }
        return 0
    }

    mutating func setNewRandomCollection(newValue: [Int]) {
        self.randomCollection = newValue
    }
}

class RandomGeneratorClass: RandomNumberGenerator {
    var randomCollection: [Int] = [1, 2, 3, 4, 5]

    func getRandomNumber() -> Int {
        if let randomElement = randomCollection.randomElement() {
            return randomElement
        }
        return 0
    }

    func setNewRandomCollection(newValue: [Int]) {
        self.randomCollection = newValue
    }
}

protocol Named {
    init(name: String)
}

class Person: Named {
    var name: String

    required init(name: String) {
        self.name = name
    }
}

func getHash<T: Hashable>(of value: T) -> Int {
    return value.hashValue
}

protocol HasValue {
    var value: Int { get set }
}

class ClassWithValue: HasValue {
    var value: Int

    init(value: Int) {
        self.value = value
    }
}

struct StructWithValue: HasValue {
    var value: Int
}

let objects: [Any] = [
    2, StructWithValue(value: 3), true, ClassWithValue(value: 10), "Dmitry",
]

for object in objects {
    if let elementWithValue = object as? HasValue {
        print("Element \(elementWithValue.value)")
    }
}

for ob in objects {
    print(ob is HasValue)
}

protocol GeometricFigureWithXAxis {
    var x: Int { get set }
}

protocol GeometricFigureWithYAxis {
    var y: Int { get set }
}

protocol GeometricFigureTwoAxis: GeometricFigureWithXAxis,
    GeometricFigureWithYAxis
{
    var distanceFromCenter: Float { get }
}

struct Figure2D: GeometricFigureTwoAxis {
    var x: Int = 0
    var y: Int = 0

    var distanceFromCenter: Float {
        let xPow = pow(Double(self.x), 2)
        let yPow = pow(Double(self.y), 2)
        let length = sqrt(xPow + yPow)
        return Float(length)
    }
}

let figure = Figure2D(x: 5, y: 7)

protocol SuperProtocol: class {}

protocol SubProtocol: class, SuperProtocol {}

class ClassWithProtocol: SuperProtocol {}

protocol Named1 {
    var name: String { get }
}

protocol Aged {
    var age: Int { get }
}

struct Person1: Named1, Aged {
    var name: String
    var age: Int
}

func wishHappyBirthday(celebrator: Named1 & Aged) {
    print("Happy birthday \(celebrator.name), u're \(celebrator.age) years old!")
}

let birthdayPerson = Person1(name: "John Wick", age: 46)
wishHappyBirthday(celebrator: birthdayPerson)
