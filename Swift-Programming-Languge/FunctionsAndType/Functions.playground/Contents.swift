func generateMyName(firstName: String = "Anh Viet ",lastName: String = "Pham") -> String {
    firstName.uppercased() + lastName.uppercased()
}

generateMyName()
generateMyName(firstName: "Hoa Thi ", lastName: "Le")

func myFunctionWithUnderScore(_ param1 : String,_ param2: String,_ param3: String) -> String {
    param1 + param2 + param3
}

myFunctionWithUnderScore("Hello !", "Hallo !", "Lu Lu")

func myFunctionWithNoUnderScore(param1 : String,param2: String,param3: String) -> String {
    param1 + param2 + param3
}

myFunctionWithNoUnderScore(param1: "Hello! ", param2: "Guy Pro", param3: "Support me!")


// Overloads & Parameters

let oneGrade = 50
let twoGrade = 90
let threeGrade = 120
let allGrade = [120, 45, 67, 34]

// Overload using Different Parameter Types

func getStatePass(for grade: Int) -> Bool {
    grade >= oneGrade
}

func getStatePass(for1 grade: Int) -> Bool {
    grade <= oneGrade
}

func getStatePass(for grade: Int, lowestPass: Int) -> Bool{
    grade >= lowestPass
}

func getStatusPass(grades: [Int]) -> Bool{
    var totalGrade = 0
    for grade in grades {
        totalGrade += grade
    }
    
    let avergaGrade = totalGrade / grades.count
    return avergaGrade >= oneGrade
}

getStatePass(for: twoGrade)
getStatePass(for1: twoGrade)
getStatePass(for: oneGrade, lowestPass: twoGrade)

//: Use default values for parameters, instead of overloads.

func getStatePassWithDefaultValue(for grade: Int, lowestPass : Int = twoGrade) -> Bool{
    grade >= oneGrade
}

getStatePassWithDefaultValue(for: oneGrade)
getStatePassWithDefaultValue(for: twoGrade, lowestPass: threeGrade)

// ### Inout Parameter
var count = 0
func incrementAndPrint(value : inout Int){
    value += 1
    print(value)
}

incrementAndPrint(value: &count)
incrementAndPrint(value: &count)
incrementAndPrint(value: &count)

// Function as Parameter. Function can use function as parameter and return type That is call "Higher Order Function"
func add(number1: Int, number2: Int) -> Int {
    number1 + number2
}

var function = add
function(1,2)

func subtract(number1: Int, number2: Int) -> Int {
    number1 - number2
}

function = subtract
function(1,2)

typealias Opera = (Int, Int) -> Int

func printResult(_ opera: Opera, _ number1: Int, _ number2: Int) {
    let result = opera(number1, number2)
    print(result)
}
printResult(add, 5, 10)
printResult(subtract, 5, 10)

/*
 - OVERLOADING RULES
    + Different number of parameters
    + Different parameter types
    + Different argument labels
    + Different return types
 */
