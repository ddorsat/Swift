struct Vector2D {
    var x = 0.0
    var y = 0.0
}

func + (left: Vector2D, right: Vector2D) -> Vector2D {
    return Vector2D(x: left.x + right.y, y: left.y + right.y)
}

let vector = Vector2D(x: 3.0, y: 1.0)
let anotherVector = Vector2D(x: 2.0, y: 4.0)
let combinedVector = vector + anotherVector
combinedVector

prefix func - (vector: Vector2D) -> Vector2D {
    return Vector2D(x: -vector.x, y: -vector.y)
}

let positive = Vector2D(x: 3.0, y: 4.0)
let negative = -positive

func += (left: inout Vector2D, right: inout Vector2D) {
    left = left + right
}

var original = Vector2D(x: 1.0, y: 2.0)
var vectorToAdd = Vector2D(x: 3.0, y: 5.0)
original += vectorToAdd
original

func == (left: Vector2D, right: Vector2D) -> Bool {
    return (left.x == right.x) && (left.y == right.y)
}

func != (left: Vector2D, right: Vector2D) -> Bool {
    return !(left == right)
}

let twoThree = Vector2D(x: 2.0, y: 3)
let anotherTwoThree = Vector2D(x: 2.0, y: 3.0)
twoThree == anotherTwoThree ? print("equal") : print("not equal")

prefix operator +++
