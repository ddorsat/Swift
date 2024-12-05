class Quadruped {
    var name: String = ""
    var type: String = ""
}

class Dog: Quadruped {

    override init() {
        super.init()
        self.type = "Dog"
    }

    convenience init(text: String) {
        self.init()
        print(text)
    }

    func bark() {
        print("woof")
    }

    func printName() {
        print(self.name)
    }
}

let someDog = Dog(text: "Экземпляр класса дог создан")

class Rectangle {
    var height: Int
    var width: Int

    init?(height h: Int, width w: Int) {
        self.height = h
        self.width = w

        if !(h > 0 && w > 0) {
            return nil
        }
    }
}

var rect = Rectangle(height: 200, width: 400)

enum TemperatureUnit {
    case Kelvin, Celsius, Fahrenheit

    init?(symbol: Character) {
        switch symbol {
        case "K":
            self = .Kelvin
        case "C":
            self = .Celsius
        case "F":
            self = .Fahrenheit
        default: return nil
        }
    }
}

let char = TemperatureUnit(symbol: "K")

enum TemperatureUnit2: Character {
    case Kelvin = "K", Celsius = "C", Fahrenheit = "F"
}

let char2 = TemperatureUnit2(rawValue: "J")?.hashValue ?? 0

class SuperClass {
    init?(isNil: Bool) {
        if isNil == true {
            return nil
        } else {
            print("Экземпляр создан")
        }
    }
    deinit {
        print("Деинициализатор суперкласса")
    }
}

class SubClass: SuperClass {
    deinit {
        print("Deinit subclass")
    }
}

var obj = SuperClass(isNil: false)
var obj2 = SubClass(isNil: false)
obj = nil
obj2 = nil
