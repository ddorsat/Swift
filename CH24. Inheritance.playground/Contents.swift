class Quadruped {
    var type = ""
    var name = ""

    func walk() {
        print("walk")
    }
}

class Dog: Quadruped {

    override init() {
        super.init()
        self.type = "Dog"
    }

    func bark() {
        print("woof")
    }

    func printName() {
        print(self.name)
    }
}

var dog = Dog()
dog.walk()
dog.bark()
dog.printName()

class NoisyDog: Dog {
    override func bark() {
        for _ in 1...3 {
            super.bark()
        }
    }
}

let noisyDog = NoisyDog()
noisyDog.bark()

var animalsArray: [Quadruped] = []
var someAnimal = Quadruped()
var myDog = Dog()
var sadDog = NoisyDog()
animalsArray.append(someAnimal)
animalsArray.append(myDog)
animalsArray.append(sadDog)
animalsArray

for item in animalsArray {
    if item is Dog {
        print("yap")
    }
}

for item in animalsArray {
    if let animal = item as? NoisyDog {
        animal.bark()
    } else if let animal = item as? Dog {
        animal.bark()
    } else {
        item.walk()
    }
}

let text: String = "Hello"

class NameList {
    private var names = ["Alice", "Bob", "Charlie"]

    subscript(index: Int) -> String {
        get {
            return names[index]
        }
        set {
            names[index] = newValue
        }
    }
}

let list = NameList()
list[1]
list[1] = "james"
list[1]

let array = ["a", "b", "c"]
array[0]
array[1]
array[2]

struct Family {
    var father = "Father"
    var mother = "Mother"
    var kids = ["kid1", "kid2", "kid3"]

    var count: Int {
        return 2 + kids.count
    }

    subscript(index: Int = 1) -> String? {
        get {

            switch index {
            case 1: return father
            case 2: return mother
            case 3..<(3 + kids.count): return kids[index - 3]
            default: return nil

            }
        }
        set {
            let value = newValue ?? ""

            switch index {
            case 1: father = value
            case 2: mother = value
            case 3..<(3 + kids.count): kids[index - 3] = value
            default: break

            }
        }
    }

    subscript(index: Int, suffix: String) -> String? {
        var name = self[index] ?? ""
        name += " " + suffix
        return name
    }
}
var family = Family()
family.father
family.mother
family.kids[0]
family.count

family[1]
family[4] = "James"
family[4]
family[3]
family[1] = "Dad"
family.father
family.kids[0] = "Kiddy"
family[3, "the greatest"]!

struct Field {
    var dict: [String: String] = [:]

    func keyForColumn(_ column: String, _ row: Int) -> String {
        return column + String(row)
    }

    subscript(column: String, row: Int) -> String? {
        get {
            return dict[keyForColumn(column, row)]
        }
        set {
            dict[keyForColumn(column, row)] = newValue
        }
    }
}

var field = Field()

field["a", 5]
field["a", 5] = "X"
field["a", 6]


