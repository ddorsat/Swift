//struct Application {
//    var name: String
//}
//
//func loadResources(forApp: Application) {
//    let appPath = "./bin/\(forApp.name)"
//}
//
//func main(testMode: Bool) {
//    let app = Application(name: "Calculator")
//    loadResources(forApp: app)
//}
//
//main(testMode: true)

class ApplicationClass {
    var name: String

    init(name: String) {
        self.name = name
    }

    deinit {
        print("деинициализация экземпляра класса")
    }
}

func loadResourcesForClass(forApp: ApplicationClass) {
    print("начало функции loadResourcesForClass")
    let appPath = "./bin/\(forApp.name)/"
    print("завершение функции loadResourcesForClass")
}

func mainClass(testMode: Bool) {
    print("начало функции mainClass")
    let app = ApplicationClass(name: "Calculator")
    loadResourcesForClass(forApp: app)
    print("завершение функции main")
}

mainClass(testMode: true)

class Human {
    var name: String
    var houses: [House] = []
    
    func add(house: House) {
        self.houses.append(house)
    }
    
    init(name: String) {
        print("Владелец \(name) создан")
        self.name = name
        return
    }

    deinit {
        print("Владелец \(name) уничтожен")
    }
}

class House {
    var title: String
    unowned var owner: Human

    init(title: String, owner: Human) {
        print("Дом \(title) создан")
        self.title = title
        self.owner = owner
        return
    }

    deinit {
        print("Дом \(title) уничтожен")
    }
}

if true {
    let houseOwner = Human(name: "John")
    
    if true {
        let house = House(title: "Частный дом", owner: houseOwner)
        houseOwner.add(house: house)
    }
    
    let secondHouse = House(title: "Квартира", owner: houseOwner)
    houseOwner.add(house: secondHouse)
}

var a = 2
let f = {print (a)}
f()
a = 3
f()

class Man {
    var name = "Human"
    
    deinit {
        print("Deinit")
    }
}

var closure: (() -> Void)?

if true {
    let man = Man()
    
    closure = { [unowned man] in
        print(man.name)
    }
    
    closure!()
}

print("Over")
