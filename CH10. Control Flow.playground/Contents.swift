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

