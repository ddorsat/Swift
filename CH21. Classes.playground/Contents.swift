struct Person {
    var firstName: String
    var lastName: String
    var fullName: String {
        return firstName + " " + lastName
    }

    mutating func changeName(firstName: String, lastName: String) -> String {
        self.firstName = firstName
        self.lastName = lastName
        var fullName = self.firstName + " " + self.lastName
        return fullName
    }
}

var person = Person(firstName: "Dmitry", lastName: "Dorsat")
person.changeName(firstName: "John", lastName: "Dowes")
person.fullName

class Chessman {
    enum ChessmanColor {
        case black, white
    }
    
    enum ChessmanType {
        case knight, bishop, queen, castle, king, pawn
    }
    
    let color: ChessmanColor
    let type: ChessmanType
    let figureSymbol: Character
    var coordinates: (String, Int)? = nil
    
    init(color: ChessmanColor, type: ChessmanType, figure: Character) {
        self.color = color
        self.type = type
        figureSymbol = figure
    }

    init(
        color: ChessmanColor, type: ChessmanType, figure: Character,
        coordinates: (String, Int)
    ) {
        self.type = type
        self.color = color
        figureSymbol = figure
        setCoordinates(char: coordinates.0, num: coordinates.1)
    }

    func setCoordinates(char c: String, num n: Int) {
        coordinates = (c, n)
    }

    func kill() {
        coordinates = nil
    }

    func position() {
        if coordinates == nil {
            print("I'm not on a board")
        } else {
            print("My position is \(coordinates!)")
        }
    }
}

let kingWhite = Chessman(color: .white, type: .king, figure: "\u{2654}")
kingWhite.setCoordinates(char: "E", num: 5)

var queenBlack = Chessman(
    color: .black, type: .queen, figure: "\u{2655}", coordinates: ("A", 6))
queenBlack

let linkToEnumValue = Chessman.ChessmanColor.black
