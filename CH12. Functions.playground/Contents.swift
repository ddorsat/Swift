func myFirstFunc(_ a: Int, _ b: Int) -> Int {
    a + b
}

myFirstFunc(5, 10)

func mySecondFunc(a: Int, b: String) -> String {
    let word = "Swift"
    return String(a) + b + word
}

mySecondFunc(a: 5, b: "Hello")

func returnMessage(code: Int, message: String) -> String {
    var mutableMessage = message
    mutableMessage += String(code)
    return mutableMessage
}

let myMessage = returnMessage(code: 17, message: "RQ")

func changeValues(_ a: inout Int, _ b: inout Int) {
    let tmp = a
    a = b
    b = tmp
}

var x = 150
var y = 45
changeValues(&x, &y)
x
y

func changeName(firstName: inout String, lastName: inout String) -> String {
    firstName = "james"
    lastName = "barnes"
    return firstName + " " + lastName
}

var name = "Dmitry"
var secondName = "Dorsat"

changeName(firstName: &name, lastName: &secondName)
name
secondName

func changeNameAgain(firstName: String, lastName: String) -> String {
    var changedName = firstName
    changedName = "james"
    var changedLastName = lastName
    changedLastName = "barnes"
    return changedName + " " + changedLastName
}

func printRequestString(codes: Int...) {
    var codesString = ""
    for oneCode in codes {
        codesString += String(oneCode) + " "
    }
    print("Received answers - \(codesString)")
}

printRequestString(codes: 600, 800, 1)

func getCodeDescription(code: Int) -> (code: Int, description: String) {
    let description: String
    switch code {
    case 1...100:
        description = "Error"
    case 101...200:
        description = "Correct"
    default:
        description = "Unknown"
    }
    return (code, description)
}

let request = getCodeDescription(code: 90)
request.code
request.description

func returnMessage1(code: Int, message: String = "Code - ") -> String {
    message + String(code)
}

returnMessage1(code: 10)

func printText() {
    print("Func activated")
}

func returnPrintTextFunction() -> () -> Void {
    return printText
}
print("Step 1")
let newFunctionInLet = returnPrintTextFunction()
print("Step 2")
newFunctionInLet()
print("Step 3")

func generateWallet(walletLength: Int) -> [Int] {
    let banknotes = [50, 100, 200, 500, 1000]
    var wallet: [Int] = []
    for _ in 1...walletLength {
        wallet.append(banknotes.randomElement()!)
    }
    return wallet
}

func sumOfBanknotes(banknotes wallet: (Int) -> [Int], walletLength: Int) -> Int?
{
    let banknotesArray = wallet(walletLength)
    var sum: Int = 0
    for i in banknotesArray {
        sum += i
    }
    return sum
}

sumOfBanknotes(banknotes: generateWallet, walletLength: 20)

func oneStep(coordinates: inout (Int, Int), stepType: String) {
    func up(coords: inout (Int, Int)) {
        coords = (coords.0 + 1, coords.1)
    }
    func right(coords: inout (Int, Int)) {
        coords = (coords.0, coords.1 + 1)
    }
    func down(coords: inout (Int, Int)) {
        coords = (coords.0 - 1, coords.1)
    }
    func left(coords: inout (Int, Int)) {
        coords = (coords.0, coords.1 - 1)
    }

    switch stepType {
    case "up":
        up(coords: &coordinates)
    case "down":
        down(coords: &coordinates)
    case "right":
        right(coords: &coordinates)
    case "left":
        left(coords: &coordinates)
    default: break
    }
}

var coordinates = (10, 0)
oneStep(coordinates: &coordinates, stepType: "up")
oneStep(coordinates: &coordinates, stepType: "right")
oneStep(coordinates: &coordinates, stepType: "right")
oneStep(coordinates: &coordinates, stepType: "down")
coordinates

func say() -> String {
    return "hello"
}

func say() -> Int {
    return 10
}

let saying: String = say()
let sayingNumber: Int = say() + 10

func countdown(firstNum num: Int) {
    print(num)
    if num > 0 {
        countdown(firstNum: num - 1)
    }
}

print(countdown(firstNum: 5))
