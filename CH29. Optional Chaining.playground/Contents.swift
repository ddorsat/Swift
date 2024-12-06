struct Room {
    let square: Int
}

class Residence {
    var rooms: [Room]?
    
    func roomsCount() -> Int {
        if let rooms = self.rooms {
            return rooms.count
        } else {
            return 1
        }
    }
}

class Person {
    var residence: Residence?
}

let room = Room(square: 10)
var residence = Residence()
residence.rooms = [room]
var man = Person()
man.residence = residence

if let rooms = man.residence?.rooms {
    //
}

let room1 = Room(square: 15)
let room2 = Room(square: 25)
man.residence?.rooms = [room1, room2]
man.residence?.roomsCount()

let firstRoom = man.residence?.rooms?[0]

man.residence?.rooms?[0] = Room(square: 35)
man.residence?.rooms?[0]
