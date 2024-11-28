let name = "Dmitry"
name.count
let c: Character = "\u{1f44d}\u{1f3fd}"

let cafeSimple = "caf\u{E9}"
let cafeCombine = "cafe\u{301}"
let index = cafeSimple.startIndex
cafeSimple.unicodeScalars.count

let abc = "abcdefghijklmnopqrstuvwxyz"
let firstChar = abc.startIndex
let fourthChar = abc.index(firstChar, offsetBy: 3)
let subAbc = abc[firstChar...fourthChar]
subAbc
type(of:subAbc)

let subAbcs = abc[fourthChar...]

