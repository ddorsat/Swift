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

