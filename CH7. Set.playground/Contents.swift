let mySet: Set<Int> = [1, 1, 3, 5, 5, 9]
var emptySet = Set<Int>()
var setWithValues: Set = ["хлеб", "овощи"]
setWithValues = []

emptySet.insert(9)
emptySet.remove(9)

var music: Set<String> = []
music.insert("Jazz")
music.insert("Pop")
music.insert("Rock")
music.isEmpty
music.remove("Pop")
music
music.removeAll()
music.insert("Jazz")
music.insert("Rap")
music.insert("Rock")
music.insert("Hip-Hop")
music.contains("Hip-Hop")
music.count

let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let differentDigits: Set = [3, 4, 7, 8]
let inter = differentDigits.intersection(oddDigits)
let symmetric = differentDigits.symmetricDifference(oddDigits)
let union = differentDigits.union(oddDigits)
let subtract = differentDigits.subtracting(evenDigits)

let aSet: Set = [1, 2, 3, 4, 5]
let bSet: Set = [1, 3]
let cSet: Set = [5, 6, 7, 8]

let copyOfBSet = bSet
bSet == copyOfBSet
bSet.isSubset(of: aSet)
aSet.isSuperset(of: bSet)
aSet.isDisjoint(with: cSet)
aSet.isStrictSuperset(of: bSet)
aSet.sorted()
let unsortedSet: Set = [5, 2, 9, 6, 8, 10, 3, 25]
let sortedSet = unsortedSet.sorted()
sortedSet
type(of: sortedSet)
