typealias numberType = Int
let numbersType: (Int, Int, numberType, numberType) = (5, 1, 9, 10)
print(numbersType)

let myProgramStatus = (200, "In Work", true)
let (statusCode, statusText, statusConnect) = myProgramStatus
print("Kod otveta - \(statusCode)")
print("Text otveta - \(statusText)")
print("Svyaz s serverom - \(statusConnect)")

let (myName, myAge) = ("Dmitry", 25)
print("my name is \(myName) and i'm \(myAge) years old")
let (myStatusCode, _, _) = myProgramStatus
print(myStatusCode)

print("\nKod otveta - \(myProgramStatus.0)")
print("Text otveta - \(myProgramStatus.1)")
print("Svyaz s serverom - \(myProgramStatus.2)")

let statusTuple = (statusCode: 200, statusText: "In Work", statusConnect: true)
let statusTuple2: (statusCode: Int, statusText: String, statusConnect: Bool) = (
    200, statusText: "In Work", true
)

print("\n\nKod otveta - \(statusTuple.statusCode)")
print("Text otveta - \(statusTuple.statusText)")
print("Svyaz s serverom - \(statusTuple2.statusConnect)")

var myFirstTuple: (Int, String) = (0, "0")
let mySecondTuple = (100, "100")
myFirstTuple = mySecondTuple

var someTuple = (200, true)
someTuple.0 = 300
someTuple.1 = false

(1, "alpha") < (2, "beta")
(4, "beta") < (4, "gamma")
(3.14, "pi") == (3.14, "pi")
(1, 2, 3, 4, 5, 6) == (1, 2, 3, 4, 5, 6)

