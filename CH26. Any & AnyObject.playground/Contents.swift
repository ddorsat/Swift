var things: [Any] = []
things.append(0)
things.append(0.0)
things.append("a")
things.append("abc")
things.append((3.0, 5.0))
things.append({(name: String) -> String in "Hello \(name)"})

for thing in things {
    switch thing {
    case let someInt as Int:
        print(someInt)
    case let someDouble as Double:
        print(someDouble)
    case let char as Character:
        print(char)
    case let word as String:
        print(word)
    case let tuple as (Double, Double):
        print(tuple)
    case let closure as (String) -> String:
        print(closure("Meme"))
    default: break
    }
}

class Animal {}
class Dog: Animal {
    var type: String = "dog"
}
class Cat: Animal {}
class Cow: Animal {}

let someObject: [AnyObject] = [Dog()]

//for object in someObject {
//    let animal = object as! Dog
//    print(animal.type)
//}

for object in someObject {
    guard let animal = object as? Dog else {
        continue
    }
    print(animal.type)
}
