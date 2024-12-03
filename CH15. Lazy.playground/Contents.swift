var arrayOfNames = ["Dmitry", "John", "Marcus"]

let nextName = { arrayOfNames.remove(at: 0) }

func nextName2(array: inout [String]) -> [String] {
    array.remove(at: 0)
    return array
}

nextName2(array: &arrayOfNames)
print(arrayOfNames)
nextName2(array: &arrayOfNames)
print(arrayOfNames)
nextName()
print(arrayOfNames)

let baseCollection = [1, 2, 3, 4, 5, 6]
let myLazyCollection = baseCollection.lazy
let collection = myLazyCollection.map { $0 + 1 }
type(of: collection)
let resultCollection = [1, 2, 3, 4, 5, 6].lazy.map { $0 + 1 }.filter {
    $0 % 2 == 0
}
Array(resultCollection)
