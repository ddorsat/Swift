let x1 = Int("12")
type(of: x1)
let x2 = Int(42.2)
type(of: x2)

let x3: Character? = "a"
var x4: Int? = 15
x4 = Int("ASD")
let name = "Dmitry"

var tuple: (code: Int, message: String)? = nil
tuple = (404, "Page not found")

let tupleWithOptElements: (Int?, Int) = (nil, 109)
tupleWithOptElements.1

let a = 5
let b: Int? = 10

let optString: String? = "Dmitry Dorsat"
let unwrappedString = optString!

var wrapInt: Double! = 3.14
wrapInt + 0.12

let optOne: UInt? = nil
let optTwo: UInt? = 32

optOne != nil
optTwo != nil

var fiveMarkCount: Int? = 8
var allCakesCount = 0

if fiveMarkCount != nil {
    let cakeForEachFiveMark = 2
    allCakesCount = cakeForEachFiveMark * fiveMarkCount!
}

let userLogin: String? = "ddorsat"

if let userName = userLogin {
    print("Name: \(userName)")
} else {
    print("No name")
}

var markCount: Int? = 8
markCount = Int("Vosem'")

if let marks = markCount {
    print("Total: \(marks) marks")
}

var pointX: Int? = 10
var pointY: Int? = 3

if let x = pointX, let y = pointY {
    print("All correct")
}

if let x = pointX, x > 5 {
    print("Too far")
}

var coinsInNewChest = "140"
var allCoinsCount = 1301

//if Int(coinsInNewChest) != nil {
//    allCoinsCount += Int(coinsInNewChest)!
//} else {
//    print("Not enough")
//}

if let coins = Int(coinsInNewChest) {
    allCoinsCount += coins
} else {
    print("not enough")
}

var optionalInt: Int? = 20
optionalInt = Int("Twenty")
var musthaveResult = optionalInt ?? 0

func numberLargerThanFive(number: Int) -> Bool {
    guard number > 5, number > 4 else {
        return false
    }
    return true
}

var text: String?

text = "hello, world"
print(type(of: text))
if let value = text {
    print(value)
}

func printAge(age: Int?) {
    guard age != nil else { return }
}

for number in 1...5 {
    guard number <= 3 else { break }
    print(number)
}

var temp: Int? = 25

func checkTemp(temp: Int?) {
    guard let temp = temp else { return }
    print("temp is \(temp)")
}

checkTemp(temp: temp)
