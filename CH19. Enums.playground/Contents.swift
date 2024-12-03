enum CurrencyUnit {
    case ruble, euro
}

var rubleCurrency = CurrencyUnit.ruble
var otherCurrency = CurrencyUnit.euro
otherCurrency = .ruble

enum AdvancedCurrencyUnit {
    enum DollarCountries {
        case usa, canada, australia
    }

    case ruble(countries: [String], shortName: String)
    case euro(countries: [String], shortName: String)
    case dollar(nation: DollarCountries, shortName: String)

}

let euroCurrency = AdvancedCurrencyUnit.euro(
    countries: ["Paris", "England", "Germany"], shortName: "EUR")

var dollarCurrency = AdvancedCurrencyUnit.dollar(nation: .usa, shortName: "USD")
let australia: AdvancedCurrencyUnit.DollarCountries = .australia

switch dollarCurrency {
case .ruble:
    print("Ruble")
case .euro(let countries, let shortName):
    print("Country - \(countries), shortname - \(shortName)")
case let .dollar(nation, shortName):
    print("Nation - \(nation), shortname - \(shortName)")
}

enum Smile: String {
    case joy = ";)"
    case laugh = ":D"
    case sorrow = ";("
    case surprise = "o_O"

    var description: String { return self.rawValue }

    func about() {
        print("Enum contains a list of emoji")
    }

    func descriptionValue() -> Smile {
        return self
    }

    func descriptionRawValue() -> String {
        return rawValue
    }
}

enum Planet: Int {
    case mercury = 1
    case venus, earth, mars, jupiter, saturn, uranus, neptune
    case pluto = 999
}

let iAmHappy = Smile.joy

let myPlanet = Planet.init(rawValue: 3)
var anotherPlanet = Planet.init(rawValue: 11)

iAmHappy.description
iAmHappy.about()
iAmHappy.descriptionValue()
iAmHappy.descriptionRawValue()

enum ArithmeticExpression {
    case number(Int)
    indirect case addition(ArithmeticExpression, ArithmeticExpression)
    indirect case substraction(ArithmeticExpression, ArithmeticExpression)

    func evaluate(_ expression: ArithmeticExpression? = nil) -> Int {
        switch expression ?? self {
        case let .number(value):
            return value
        case let .addition(valueLeft, valueRight):
            return evaluate(valueLeft) + evaluate(valueRight)
        case let .substraction(valueLeft, valueRight):
            return evaluate(valueLeft) - evaluate(valueRight)
        }
    }
}

let hardExpr = ArithmeticExpression.addition(.number(20), .substraction(.number(10), .number(34)))
hardExpr.evaluate()
