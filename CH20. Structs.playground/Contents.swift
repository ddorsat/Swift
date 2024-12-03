var playerDmitry = (name: "Dmitry", victories: 5)

struct ChessPlayer {
    var name: String = "Player"
    var victories: UInt = 0
    
    init(name: String) {
        self.name = name
    }
    
    init() {}
    
    init(victories: UInt) {
        self.victories = victories
    }
    
    init(name: String, victories: UInt) {
        self.name = name
        self.victories = victories
    }
    
    func description() {
        print("Player \(name) has \(victories) wins")
    }
    
    mutating func addVictories(count: UInt = 1) {
        victories += count
    }
    
    mutating func changeVictories(count: UInt) {
        victories = count
    }
}

var chessPlayer = ChessPlayer(name: "Dmitry",victories: 50)
chessPlayer.addVictories()
chessPlayer.victories
chessPlayer.addVictories()
chessPlayer.victories
chessPlayer.changeVictories(count: 1)
chessPlayer.victories
chessPlayer.addVictories(count: 5)
chessPlayer.victories
