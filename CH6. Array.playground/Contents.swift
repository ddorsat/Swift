import Foundation

let newArray = Array(arrayLiteral: 1, 2, 3, 4, 5)
newArray
let array = Array(0...10)
let array2 = Array(repeating: 3, count: 10)
var message = Array(repeating: "Ura", count: 3)
var stringsArray = ["one", "two", "three", "four", "five"]
stringsArray[0...2] = ["not now"]
stringsArray[0]
var numbers = [1, 2, 3, 4, 5]
numbers[0...2] = [10]
numbers

let firstAr = Array(arrayLiteral: "a", "b", "c")
type(of: firstAr)

let secondAr = Array(1..<5)
type(of: secondAr)

var firstArray = [1, 2, 3, 4]
var secondArray = firstArray
firstArray[0] = 5
firstArray
secondArray

let emptyArray: [Int] = []
let anotherEmptyArray = [String]()

let a1 = 1
let a2 = 2
let a3 = 3

var someArray = [1, 2, 3]
someArray == [a1, a2, a3]

let charsOne = ["a", "b", "c"]
let charsTwo = ["d", "e", "f"]
let charsThree = ["g", "h", "i"]
var alphabet = charsOne + charsTwo + charsThree
print(alphabet)

var arrayOfArrays: [[Int]] = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
arrayOfArrays[0][2]

let someArray2 = [1, 2, 3, 4, 5]
someArray2.count
let emptyArray2 = [Int]()
emptyArray2.count
emptyArray2.isEmpty

var numArray = [1, 2, 3, 4, 5]

let sliceOfArray = numArray[3...]
print(sliceOfArray)
let subArray = numArray.suffix(2)
print(subArray)
numArray.first
numArray.last
numArray.append(6)
numArray.insert(7, at: 2)
numArray.remove(at: 3)
let anotherOne = numArray.dropFirst()
let anotherNew = numArray.dropLast()
print(anotherNew)
numArray.max()
numArray.reverse()

var unsortedArray = [5, 1, 2, 8, 7, 3, 22, 9]
unsortedArray.sorted()
unsortedArray
unsortedArray.sort()
unsortedArray
unsortedArray.randomElement()

let slice = unsortedArray.dropFirst()
type(of: slice)
let arrayFromSlice = Array(slice)
type(of: arrayFromSlice)

let newArrays: [Int] = unsortedArray.dropLast()
type(of: newArrays)

let compArray = [1, 2, 3, 4, 5]
let slice1 = compArray.dropFirst()
let slice2 = slice1.dropFirst()
let slice3 = slice2.dropFirst()
compArray[2]
slice2[2]

let slice4 = compArray[2...]
compArray[3]
slice4[3]
print(slice4)
