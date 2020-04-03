//+----------------+-------------+----+
//| Closures       VS      Functions  |
//+----------------+-------------+----+
//| No         | Names?   |    Yes    |
//+----------------+------------------|
//| No         | Argument |     Yes   |
//|            |  Labels? |           |
//+----------------+------------------|
//| No         | Default Paremeter|Yes|
//|            |      Values?     |   |
//+----------------+------------------|
//| Yes        | Write Inline |  No   |
//+-------------+-------------+-------|


// Unwrapping optionals
//========= If let ========
var name: String? = "Anh Viet Pham"

if name != nil {
    print("\(String(describing: name?.count)) letters")
}

if let unWrapname = name {
    print("\(unWrapname.count) letters")
}
//========= Guard let ========
print("\(name?.count ?? 7) letter")

func countName(_ name: String?){
    guard let unWrapping = name else {
        return
    }
    print("\(unWrapping.count) letters")
}

// The major difference between if let and guard let is that your unwrapped optional
// remains usable after the guard code.

// ===================================

typealias Operate = (Int, Int) -> Int

func add(_ a: Int,_ b: Int) -> Int {
    a + b
}

func printResult(_ operate: Operate,_ a: Int,_ b: Int){
    print(operate(a, b))
}

// --------------------------------

var operatr = add
var addClosure =  { (a: Int, b: Int) -> Int in
    a + b
}

add(5, 10)
addClosure(5, 10)

printResult(addClosure, 3, 6)
printResult(add, 3, 6)
printResult(operatr, 3, 6)
printResult(+, 3, 6)

// Closure Syntax
// ----------------------------
let longClosure = { (a: Int, b: Int) -> Int in
    a + b
}

let noParameterTypes: Operate = { (a, b) -> Int in
    a + b
}

let noReturnType: Operate = { (a, b) in
    a + b
}

let shortClosure: Operate = { $0 + $1}

longClosure(5,6)
noParameterTypes(5,6)
noReturnType(5,6)
shortClosure(5,6)

// ======== forEach =========
var prices = [1.13, 1.34, 5.54, 3.42, 9.67]

for price in prices {
    print(price)
}

prices.forEach {
    print($0)
}

// ========= map ============
var arraySalePrice: [Double] = []
for price in prices{
    arraySalePrice.append(price * 100)
}
arraySalePrice

let salePrices = prices.map { $0 * 100 }
salePrices
let priceLabels = salePrices.map { (price) -> String in
    "\(price)%"
}
priceLabels

let arrayOfIntegers = [1, 2, nil, 4]
let arrayOfStringsUsingMap = arrayOfIntegers.map{ String(describing: $0) }
print(arrayOfStringsUsingMap)

// ========= CompactMap ==========
let userInput = ["456","AnhVietPham","HuyHoangPham","VanCuongPham", "ThanhPham","200"]

var arrayValidInput : [Int] = []
for input in userInput {
    guard let input = Int(input) else {
        continue
    }
    arrayValidInput.append(input)
}
arrayValidInput

let validInput = userInput.compactMap{ (input) in
    Int(input)
}
validInput

let arrayOfStringUsingCompactMap = arrayOfIntegers.compactMap{ optionalInteger -> String? in
    guard let integer = optionalInteger else {
        return nil
    }
    return String(integer)
}

// ========= FlatMap ============

let arrayOfIntegersFlatMap = [[2,4,3,5,nil],[2,nil,6]]

let flatMapOfIntegers = arrayOfIntegersFlatMap.flatMap{ $0 }.compactMap{$0}
print(flatMapOfIntegers)
