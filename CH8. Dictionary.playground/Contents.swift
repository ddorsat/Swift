let dict = ["one": "один", "two": "два"]
let dict2 = Dictionary(dictionaryLiteral: (1, "one"), (2, "two"))

let baseCollection = [(2, 5), (3, 6), (1, 4)]
type(of: baseCollection)
let tuple = [(1, 5)]
let dict3 = Dictionary(uniqueKeysWithValues: tuple)

let starNames = ["Proxima Centauri", "Alpha Centauri A", "Alpha Centauri B"]
let starDistances = [4.24, 4.37, 4.37]

let starDistanceDict = Dictionary(
    uniqueKeysWithValues: zip(starNames, starDistances))

var countryDict = [
    "RUS": "Россия", "USA": "США", "Argentina": "Аргентина", "Spain": "Испания",
]

var countryName = countryDict["RUS"]
countryDict["RUS"] = "Российская Федерация"
countryDict
countryDict.updateValue("Арг", forKey: "Argentina")
countryDict["TUR"] = "Турция"
countryDict.removeValue(forKey: "TUR")
countryDict

var emptyDict: [Int: String] = [:]
var anotherEmptyDict = [String: Int]()

var emptyArray = [Int]()
var emptySet: Set<Int> = []

var birthYear = [1998: ["Dmitry", "John"]]
var emptyDict1 = [Int: [String]]()

var someDict = ["One": 1, "Two": 2, "Three": 3]
someDict.count
var emptyDict3 = [Int: String]()
let keys = someDict.keys
type(of: keys)
let values = someDict.values
type(of: values)
keys
values

let values2 = countryDict.values
type(of: values2)

let keysSet = Set(keys)
let valuesArray = Array(values2)
