func printValues<T1, T2>(a: T1, b: T2) {
    print("Значение 1 - \(a), значение 2 - \(b)")
}

printValues(a: "book", b: 15)
printValues(a: 20, b: 40)

func getSelf<T>(_ a: T) -> T {
    return a
}

let a = getSelf(15)
a

func sum<T>(a: T, b: T) -> T where T: Numeric {
    return a + b
}
sum(a: 5, b: 10.2)

func search<T: Comparable>(value: T, collection: [T]) -> Bool {
    for item in collection {
        if value == item {
            return true
        }
    }
    return false
}

var array = ["James", "Aaron"]
search(value: "Jame", collection: array)

struct Stack<T: Numeric> {
    var items: [T] = []

    mutating func push(_ item: T) {
        items.insert(contentsOf: [item], at: 0)
    }

    mutating func pop() -> T {
        return items.removeFirst()
    }
}

var intStorage = Stack(items: [1, 2, 3, 4, 5])
intStorage.pop()
intStorage.items
intStorage.push(12)
intStorage.items
var StringStorage = Stack(items: [5, 4, 9, 10, 8, 2])
StringStorage.pop()
StringStorage.items

extension Stack {
    mutating func replaceFirst(_ newValue: T) {
        items[0] = newValue
    }
}

StringStorage.replaceFirst(10)
StringStorage.items

func search2<T1, T2>(value: T1, collection: T2) -> Bool
where T1: Comparable, T2: Collection, T1 == T2.Element {
    for item in collection {
        if item == value {
            return true
        }
    }
    return false
}

struct Stack1<T> {
    var items: [T] = []

    mutating func push(_ item: T) {
        items.insert(contentsOf: [item], at: 0)
    }

    mutating func pop() -> T {
        items.removeFirst()
    }

}

protocol Stack1Protocol {
    associatedtype ItemType

    var items: [ItemType] { get set }
    mutating func push(item: ItemType)
    mutating func pop() -> ItemType
}

struct Stack2<TA>: Stack1Protocol {
    typealias ItemType = TA

    var items: [TA] = []

    mutating func push(item: TA) {
        items.insert(contentsOf: [item], at: 0)
    }

    mutating func pop() -> TA {
        items.removeFirst()
    }
}

var array2 = [5, 6, 1, 2, 4]

var stack2 = Stack2(items: array2)
stack2.push(item: 9)
stack2.pop()
stack2.items

protocol StackProtocol2 {
    associatedtype ItemType

    var items: [ItemType] { get set }

    mutating func push(_ item: ItemType)

    mutating func pop() -> ItemType
}

extension StackProtocol2 {
    mutating func push(_ item: ItemType) {
        items.insert(contentsOf: [item], at: 0)
    }

    mutating func pop() -> ItemType {
        items.removeFirst()
    }
}

struct Stack3<T>: StackProtocol2 {
    typealias ItemType = T
    var items: [T]
}

var stack3 = Stack3(items: array2)

protocol Vehicle {
    associatedtype Identifier
    var uid: Identifier { get set }
}

struct Car: Vehicle {
    var uid: Int
}

struct Truck: Vehicle {
    var uid: String
}

func getCar() -> some Vehicle {
    return Car(uid: 93)
}

let myCar = getCar()


