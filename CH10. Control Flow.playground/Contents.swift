let strName = "Dragon"
let strYoung = "Young"
let strOld = "Old"
let strEmpty = " "

var dragonAge = 225
assert(dragonAge <= 235, "Error")
assert(dragonAge >= 225, "Error")
print("All good")

let name = "Dmitry"
assert(name.count >= 6)

let first = false
let second = false

if first || second {
    if first && second {
        print("both true")
    } else {
        print("Only 1 is true")
    }
} else {
    print("none of them")
}

if first && second {
    print("Both are true")
} else {
    if first || second {
        print("True just one")
    } else {
        print("None of them true")
    }
}

let userName = "Dmitry"

if userName == "Dmitry" {
    print("It's the boss")
} else if userName == "Aldar" {
    print("Idk who it is")
} else {
    print("Nobody")
}

if first || second {
    print("One of is true")
} else if first && second {
    print("Both are true")
} else {
    print("None of them")
}

var renters = 9
var rentPrice = 0

//if renters < 5 {
//    rentPrice = 1000
//} else if renters >= 5 && renters <= 7 {
//    rentPrice = 800
//} else {
//    rentPrice = 500
//}

if (..<5).contains(renters) {
    rentPrice = 1000
} else if (5...7).contains(renters) {
    rentPrice = 800
} else {
    rentPrice = 500
}

let totalMoney = renters * rentPrice

let a = 3
let b = 2
a <= b ? print("A is lesser or equal to B") : print("A is bigger than B")

var height = 180
var isHeader = true
let rowHeight = height + (isHeader ? 20 : 10)

let a1 = Int.random(in: 1...100)
let b1 = Int.random(in: 1...100)

if a1 > 50 && b1 > 50 {
    print("a and b > 50")
}

if a1 > 50, b1 > 50 {
    print("a and b > 50")
}

if let a = Int("43"), let b = Int("45"), a1 > 5 {
    print("a < b")
}

//SWITCH

let userMark = 4

switch userMark {
case 1, 2:
    print("Not good")
case 3:
    print("So so")
case 4, 5:
    print("Good!")
default:
    print("Not correct mark")
}

let anotherUserMark = 3
let message: String

switch anotherUserMark {
case 1..<3:
    print("Not passed")
case 3:
    print("So so")
case 4...5:
    print("Good")
default: assert(false, "Not correct mark")
}

if (1..<3).contains(anotherUserMark) {
    print("not passed")
} else if (4...5).contains(anotherUserMark) {
    print("Good!!!!")
} else {
    print("smh")
}

let answer: (code: Int, message: String) = (
    code: 300, message: "Page not found"
)

switch answer {
case (100..<400, _):
    print(answer.code)
case (400..<500, _):
    assert(false, answer.message)
default: break
}

let dragonCharacteristics: (color: String, weight: Int) = ("red", 1)
let dragonsCount = 4

switch dragonCharacteristics {
case ("green", 0..<2):
    print("number 1")
case ("red", 0..<2):
    print("number 2")
case let (color, weight)
where (color == "green" || color == "red") && weight % 2 == 0
    && dragonsCount < 5:
    print("number 3, weight is \(weight)")
default: break
}

let someInt = 1

switch someInt {
case 1...:
    print("Greater than 0")
case ..<0:
    print("Less than 0")
default: break
}

let level: Character = "А"

switch level {
case "А":
    print("Выключить все электрические приборы")
    fallthrough
case "Б":
    print("Закрыть входные двери и окна")
    fallthrough
case "В":
    print("Соблюдать спокойствие")
default: break
}

var i = 1

while i < 10 {
    i += 1
}

var y = 1
var result = 0

repeat {
    result += y
    y += 1
} while y < 10

var x = 0
var sum = 0

while x < 10 {
    x += 1
    print(x)
    if x % 2 == 1 {
        continue
    }
    sum += x
}

var lastNum = 54
var currentNum = 1
var sumOfInts = 0

while currentNum <= lastNum {
    sumOfInts += currentNum
    if sumOfInts > 450 {
        print("it's full \(currentNum)")
        break
    }
    currentNum += 1
}

let numArray: [Int] = [1, 2, 3, 4, 5]
var result1 = 0

for i in numArray {
    result1 += i
}

var myChar: Character = "a"
let myString = "Swift"
for myChar in myString {
    let myString = "Char is"
    print("\(myString) \(myChar)")
}

myChar
myString

var contriesAndBlocks = ["Russia": "CIS", "France": "ES"]

for (country, region) in contriesAndBlocks {
    print("\(country) is in \(region)")
}

for (country, _) in contriesAndBlocks {
    print("\(country)")
}

for countryName in contriesAndBlocks.keys {
    print(countryName)
}

for region in contriesAndBlocks.values {
    print(region)
}

print("Few facts about me: ")
let myMusicStyles = ["Rock", "Pop", "Hip-Hop"]
for (index, musicType) in myMusicStyles.enumerated() {
    print("\(index + 1) is \(musicType)")
}

var result2 = 0

for i in stride(from: 1, through: 50, by: 10) {
    result2 += i
}

result2

var result3 = 0

for i in 1...10 where i % 2 == 0 {
    result3 += i
    print(result3)
}

var isRun = true

if isRun {
    for i in 1...10 {

    }
}

for i in 1...10 where isRun {

}

let resultsOfGames = [
    "Red Wings": ["2:1", "2:3"],
    "Capitals": ["3:6", "5:5"],
    "Penguins": ["3:3", "1:2"],
]

print("\n")

for (teamName, results) in resultsOfGames {
    for result in results {
        print("Igra s \(teamName) - \(result)")
    }
}

for i in 1...10 {
    if i % 2 == 0 {
        continue
    } else {
        print(i)
    }
}

import Foundation

for i in 1... {
    let randNum = Int(arc4random_uniform(100))
    if randNum == 5 {
        print("Iteration number \(i)")
        break
    }
}

for i in 1... {
    let randNum = Array<Int>(0...100).randomElement()
    if randNum == 5 {
        print("Iteration number \(i)")
        break
    }
}

print("\n")

mainLoop: for i in 1...5 {
    for y in i...5 {
        if y == 4 && i == 2 {
            break mainLoop
        }
        print("\(i) - \(y)")
    }
}

var currentLevel = 1
let finalLevel = 5
//while currentLevel <= finalLevel {
//    currentLevel += 1
//    print(currentLevel)
//}

repeat {
    print(currentLevel)
    currentLevel += 1
} while currentLevel <= finalLevel

