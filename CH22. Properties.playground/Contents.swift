class Person {
    var firstName: String = "FirstName"
    var lastName: String = "LastName"
    lazy var wholeName: () -> String = { "\(self.firstName) \(self.lastName)" }
    var fullName: String {
        return firstName + " " + lastName
    }

    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}

var otherMan = Person(firstName: "james", lastName: "bond")
otherMan.wholeName()
otherMan.fullName

struct Circle {
    var coordinates: (x: Int, y: Int)
    var radius: Float {
        willSet {
            print("Instead of \(radius) i'll set \(newValue)")
        }
        didSet {
            print("Parameter \(oldValue) is changed to \(radius)")
        }
    }
    var perimeter: Float {
        get {
            return 2.0 * 3.14 * radius
        }
        set {
            radius = newValue / (2 * 3.14)
        }
    }
}

var myNewCircle = Circle(coordinates: (0,0), radius: 10)
myNewCircle.perimeter
myNewCircle.radius
myNewCircle.perimeter = 35.1
myNewCircle.radius

struct AudioChannel {
    static var maxVolume = 5
    var volume: Int {
        didSet {
            if volume > AudioChannel.maxVolume {
                volume = AudioChannel.maxVolume
            }
        }
    }
}

var LeftChannel = AudioChannel(volume: 2)
var RightChannel = AudioChannel(volume: 3)
RightChannel.volume = 6
RightChannel.volume
AudioChannel.maxVolume = 10
RightChannel.volume = 9
RightChannel.volume

