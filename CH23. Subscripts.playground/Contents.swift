class Chessman {
    let type: ChessmanType
    let color: ChessmanColor
    var coordinates: (String, Int)? = nil
    let figureSymbol: Character

    init(type: ChessmanType, color: ChessmanColor, figure: Character) {
        self.type = type
        self.color = color
        figureSymbol = figure
    }

    func setCoordinates(char n: String, num s: Int) {
        coordinates = (n, s)
    }

    enum ChessmanType {
        case bishop, king, queen, pawn
    }

    enum ChessmanColor {
        case white, black
    }
}

class GameDesk {
    var desk: [Int: [String: Chessman]] = [:]

    init() {
        for i in 1...8 {
            desk[i] = [:]
        }
    }

    subscript(alpha: String, number: Int) -> Chessman? {
        get {
            return self.desk[number]![alpha]
        }
        set {
            if let chessman = newValue {
                self.setChessman(chess: chessman, coordinates: (alpha, number))
            } else {
                self.desk[number]![alpha] = nil
            }
        }
    }

    func setChessman(chess: Chessman, coordinates: (String, Int)) {
        let rowRange = 1...8
        let colRange = "A"..."Z"
        if rowRange.contains(coordinates.1) && colRange.contains(coordinates.0)
        {
            self.desk[coordinates.1]![coordinates.0] = chess
            chess.setCoordinates(char: coordinates.0, num: coordinates.1)
        } else {
            print("Coordinates out of range")
        }
    }
}

var game = GameDesk()
var queenBlack = Chessman(type: .queen, color: .black, figure: "\u{265b}")
queenBlack.setCoordinates(char: ("A"), num: 6)
game.setChessman(chess: queenBlack, coordinates: ("B", 2))
queenBlack.coordinates
game.setChessman(chess: queenBlack, coordinates: ("A", 5))
queenBlack.coordinates
game["B", 2]?.coordinates
game["B", 2] = queenBlack
game["B", 2] = nil
game["B", 2]
