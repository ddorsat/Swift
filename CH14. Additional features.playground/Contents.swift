let myArray = [2, 4, 5, 7]
var newArray = myArray.map { $0 * $0 }  // MAP

newArray

let intArray = [1, 2, 3, 4]
let boolArray = intArray.map { $0 > 2 }  // MAP

let numbers = [1, 2, 3, 4]
let mapped = numbers.map { Array(repeating: $0, count: $0) }  // MAP

let milesToDest = ["Moscow": 120.0, "Dubai": 50.0, "Paris": 70.0]
let kmToDest = milesToDest.map { name, miles in [name: miles * 1.6] }  // MAP
print(kmToDest)

let mappedCloseStars = ["Proxima Centauri": 4.24, "Alpha Centauri A": 4.37]
let newCollection = mappedCloseStars.mapValues { $0 + 1 }  // MAPVALUES
newCollection

let numbersArray = [1, 2, 3, 4]
let flatMapped = numbersArray.flatMap { Array(repeating: $0, count: $0) }  // FLATMAP
print(flatMapped)

let someArray = [[1, 2, 3, 4, 5], [11, 44, 1, 6], [16, 403, 321, 10]]
let filterSomeArray = someArray.flatMap { $0.filter { $0 % 2 == 0 } }  // FLATMAP
print(filterSomeArray)

let stringArray = ["1", "2", "3", "four", "5"]
let intFromStringArray = stringArray.map { Int($0) }
print(intFromStringArray)

let arrayWithoutNil = stringArray.compactMap { Int($0) }  // COMPACTMAP

let numArray = [1, 4, 10, 15]
let even = numArray.filter { $0 % 2 == 0 }  // FILTER

let starDistanceDict = [
    "Wolf 359": 7.78, "Alpha Centauri B": 4.37, "Barnard's Star": 5.96,
]
let closeStars = starDistanceDict.filter { $0.value < 5.0 }  // FILTER
print(closeStars)

let cash = [10, 50, 100, 500]
let total = cash.reduce(210, +)  // REDUCE

let multiTotal = cash.reduce(210, { $0 * $1 })  // REDUCE
print(multiTotal)

let totalThree = cash.reduce(210, { a, b in a - b })  // REDUCE
print(totalThree)

let collectionOne = [1, 2, 3]
let collectionTwo = [4, 5, 6]
let zipSequence = zip(collectionOne, collectionTwo)  // ZIP
Array(zipSequence)
let newDictionary = Dictionary(uniqueKeysWithValues: zipSequence)

func countSidesOfShape(shape: String) -> Int? {
    switch shape {
    case "Треугольник":
        return 3
    case "Квадрат":
        return 4
    case "Прямоугольник":
        return 4
    default: return nil
    }
}

func maybePrintCountSides(shape: String) {
    guard let sides = countSidesOfShape(shape: shape) else {
        print("Неизвестно количество сторон фигуры \(shape)")
        return
    }
    print("Фигура \(shape) имеет \(sides) стороны")
}

countSidesOfShape(shape: "Треугольник")
maybePrintCountSides(shape: "Квадрат")

func someFunction() {
    defer {
        print("action in defer")
    }
    defer {
        print("another action in defer")
    }
    print("action in function")
}

someFunction()
