class Person {
    private let password: Int
    init(password: Int) {
        self.password = password
    }
    func showInfo() {
        print(password)
    }
}

let person = Person(password: 123)
person.showInfo()
