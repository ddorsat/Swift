import Foundation

class TVShow {}

protocol DisplayShow {
    func getShowsList()
    func changeShowTo(show: TVShow)
    var currentShow: TVShow { get }
}

protocol ChangeVolume {
    var currentVolume: UInt8 { get set }
    func increase(by: UInt8)
    func decrease(by: UInt8)
}

struct TV: DisplayShow, ChangeVolume {
    func getShowsList() {}

    func changeShowTo(show: TVShow) {}

    var currentShow: TVShow
    var currentVolume: UInt8

    func increase(by: UInt8) {}

    func decrease(by: UInt8) {}
}

struct DVDPlayer: ChangeVolume {
    var currentVolume: UInt8

    func increase(by: UInt8) {}

    func decrease(by: UInt8) {}
}

struct UniversalManager {
    var currentDevice: ChangeVolume

    func increaseVolume(by: UInt8) {
        self.currentDevice.increase(by: by)
    }
}

var manager = UniversalManager(currentDevice: DVDPlayer(currentVolume: 8))
manager.increaseVolume(by: 10)

protocol Walking {}
protocol Flying {}
protocol Swimming {}

struct Duck: Walking, Flying, Swimming {}

struct Penguin: Swimming, Walking {}

class UserClass {
    var name: String
    init(name: String) {
        self.name = name
    }
}

struct UserStruct {
    var name: String
}

var userByClass = UserClass(name: "Dmitry")
var userByStruct = UserStruct(name: "Dmitry")

var newUserByClass = userByClass
var newUserByStruct = userByStruct

class ValueClass {
    var value: Int = 0
}

struct ValueStruct {
    var value: Int = 0
}

