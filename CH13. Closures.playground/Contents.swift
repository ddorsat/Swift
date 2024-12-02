let functionInLet = { return true }
functionInLet()

var wallet = [10, 50, 100, 100, 5000, 1000, 100, 50, 500, 100, 1000]

func handle100(wallet: [Int]) -> [Int] {
    var returnWallet: [Int] = []
    for banknote in wallet {
        if banknote == 100 {
            returnWallet.append(banknote)
        }
    }
    return returnWallet
}

handle100(wallet: wallet)

func handle1000(wallet: [Int]) -> [Int] {
    var returnWallet: [Int] = []
    for banknote in wallet {
        if banknote >= 1000 {
            returnWallet.append(banknote)
        }
    }
    return returnWallet
}

handle1000(wallet: wallet)

func handle(wallet: [Int], closure: (Int) -> Bool) -> [Int] {
    var returnWallet: [Int] = []
    for banknote in wallet {
        if closure(banknote) {
            returnWallet.append(banknote)
        }
    }
    return returnWallet
}

func compare100(banknote: Int) -> Bool {
    return banknote == 100
}

func compare1000(banknote: Int) -> Bool {
    return banknote >= 1000
}

let resultWalletOne = handle(wallet: wallet, closure: compare100)
let resuntWalletTwo = handle(wallet: wallet, closure: compare1000)

handle(
    wallet: wallet,
    closure: { (banknote: Int) -> Bool in
        return banknote >= 1000
    })

handle(
    wallet: wallet,
    closure: { (banknote: Int) -> Bool in return banknote == 100 })

handle(wallet: wallet, closure: { banknote in return banknote == 50 })

handle(wallet: wallet, closure: { banknote in banknote >= 1000 })

handle(wallet: wallet, closure: { $0 >= 1000 })

handle(wallet: wallet) { $0 >= 50 }

handle(wallet: wallet) { banknote in
    for number in [100, 500] {
        if number == banknote {
            return true
        }
    }
    return false
}

let successBanknotes = handle(wallet: wallet) { [100, 500].contains($0) }

func networkQuery(url: String, success: (String) -> Void, error: (Int) -> Void)
{}

networkQuery(
    url: "https://weather.com", success: { data in }, error: { errorCode in })

networkQuery(url: "https://weather.com") { data in
} error: { errorCode in
}

let closure: () -> Void = {
    print("Closure")
}

closure()

let closurePrint: (String) -> Void = { text in
    print(text)
}

closurePrint("asd")

var sum: (_ numOne: Int, _ numTwo: Int) -> Int = {
    $0 + $1
}

sum(5, 10)

let array = [1, 44, 81, 55, 98, 12, 15, 100]

var sortedArray = array.sorted(by: { (first: Int, second: Int) -> Bool in
    first < second
})

sortedArray

sortedArray = array.sorted(by: { $0 < $1 })
sortedArray = array.sorted(by: <)

var a = 1
var b = 2

let closureSum: () -> Int = {
    a + b
}
closureSum()
b = 10
a = 50
closureSum()
let anotherOne = closureSum
anotherOne()

func makeIncrement(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    func increment() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return increment
}

var incrementByTen = makeIncrement(forIncrement: 10)
incrementByTen()
incrementByTen()

var incrementByFive = makeIncrement(forIncrement: 5)
var copyIncrementByFive = incrementByFive
copyIncrementByFive()
copyIncrementByFive()
incrementByFive()
incrementByFive()
copyIncrementByFive()

var arrayOfNames = ["Helga", "Bazil", "Alex"]
func printName(nextName: String) {
    print(nextName)
}

printName(nextName: arrayOfNames.remove(at: 0))

func printNames(nextName: () -> String) {
    print(nextName())
}

printNames(nextName: { arrayOfNames.remove(at: 0) })

func printNamez(nextName: @autoclosure () -> String) {
    print(nextName())
}

printNamez(nextName: arrayOfNames.remove(at: 0))

var arrayOfClosures: [() -> Int] = []

