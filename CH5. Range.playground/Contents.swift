let myRange = 1..<100
let someRange: Range<Int> = 1..<5
type(of: someRange)

let rangeString = "a"..<"z"
type(of: rangeString)

let rangeChar: Range<Character> = "a"..<"z"
type(of: rangeChar)

let rangeDouble: Range<Double> = 1.0..<10.0
type(of: rangeDouble)

let firstElement = 10
let lastElement = 20
let rangeElements = firstElement..<lastElement

let oneSideRange = ..<5
type(of: oneSideRange)

let fullRange = 1...10
type(of: fullRange)

let infRange = 2...
type(of: infRange)
let collection = [1, 6, 70, 93, 152]
print(collection[infRange])

let myRightRange = ...2
print(collection[myRightRange])
myRange.count

let floatR: ClosedRange<Float> = 1.0...8.0
floatR.contains(6.0)
floatR.isEmpty

let emptyR = 0..<0
emptyR.count
emptyR.isEmpty

let notEmptyR = 0...0
notEmptyR.count
notEmptyR.isEmpty

let range = UInt8(1)...

let range2 = 1...10
let range3 = 1...10
range2 == range3

let array = Array(1...5)
type(of: array)
let array2 = Array(1...10)
let array3: [Int] = Array(1...20)
type(of: array3)
print(array3[..<5])
