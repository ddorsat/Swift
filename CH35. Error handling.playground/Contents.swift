enum FileError: Error {
    case notExists
    case noRights
}

enum VendingMachineError: Error {
    case invalidSelection, outOfStock
    case insufficientFunds(coinsNeeded: Int)
}

struct Item {
    var price, count: Int
}

class VendingMachine {
    var inventory = [
        "Candy Bar": Item(price: 12, count: 7),
        "Chips": Item(price: 10, count: 4),
        "Pretzels": Item(price: 7, count: 11),
    ]

    var coinsDeposited = 0

    func dispenseSnack(snack: String) {
        print("Dispensing \(snack)")
    }

    func vend(itemNamed name: String) throws {
        guard var item = inventory[name] else {
            throw VendingMachineError.invalidSelection
        }

        guard item.count > 0 else {
            throw VendingMachineError.outOfStock
        }

        guard item.price <= coinsDeposited else {
            throw VendingMachineError.insufficientFunds(
                coinsNeeded: item.price - coinsDeposited)
        }

        coinsDeposited -= item.price
        item.count -= 1
        inventory[name] = item
        dispenseSnack(snack: name)
    }
}

let favoriteSnacks = ["Alice": "Chips", "John": "Licorice", "Eve": "Pretzels"]

func buyFavoriteSnack(person: String, vendingMachine: VendingMachine) throws {
    let snackName = favoriteSnacks[person] ?? "Candy Bar"
    try vendingMachine.vend(itemNamed: snackName)
}

var vendingMachine = VendingMachine()
vendingMachine.coinsDeposited = 3

do {
    try buyFavoriteSnack(person: "Alice", vendingMachine: vendingMachine)
} catch VendingMachineError.invalidSelection {
    print("InvalidSelection")
} catch VendingMachineError.outOfStock {
    print("out of stock")
} catch VendingMachineError.insufficientFunds(let coinsNeeded) {
    print("\(coinsNeeded) more coins")
}

func someThrowingFunc() throws -> Int { return 3 }

let x = try? someThrowingFunc()

struct NetworkError: Error {
    var code: Int
    
    func description() -> String {
        return "it is network error with code \(code)"
    }
}

do {
    throw NetworkError(code: 404)
} catch let error as NetworkError {
    print(error.description())
}
