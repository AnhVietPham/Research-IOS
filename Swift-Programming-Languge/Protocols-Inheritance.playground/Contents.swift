protocol Identifiable{
    var id: String {get set}
}

struct User: Identifiable {
    var id: String
}

func displayIO(thing: Identifiable){
    print("My ID is \(thing.id)")
}

var user = User(id: "abc12314124")
displayIO(thing: user)

protocol Payable {
    func calculateWages() -> Int
}

protocol NeedsTraining{
    func study()
}

protocol HasVacation{
    func takeVacation(days: Int)
}

protocol Employee: Payable, NeedsTraining, HasVacation{
    var name: String { get set}
    var wages: Int {get set}
    var vacationDay: Int {get set}
}

struct Engineer : Employee{
    var vacationDay: Int
    
    var name: String
    
    var wages: Int
    
    var programmingLanguage: String
    
    
    func calculateWages() -> Int {
        return wages * 30
    }
    
    func study() {
        print("Studying \(programmingLanguage)")
    }
    
    func takeVacation(days: Int) {
        print("An Engineer will have \(vacationDay + days)")
    }
    
}

var engineerA = Engineer(vacationDay: 15, name: "Anh Viet", wages: 90000000000, programmingLanguage: "Swift, java, kotlin, javascript")
engineerA.programmingLanguage
engineerA.calculateWages()
engineerA.study()
engineerA.takeVacation(days: 10)

// ============== Extensions ===============
extension Int {
    func squared() -> Int {
        return self * self
    }
}

let number = 10
number.squared()

//  1. Protocols describe what methods and properties a conforming type must have, but don’t provide the implementations of those methods.

//  2. Extensions let you add methods and computed properties to specific types such as Int, Double, String

//  3. Protocol extensions let you add methods and computed properties to protocols as Collection.

//  4. Protocol-oriented programming is the practice of designing your app architecture as a series of protocols, then using protocol extensions to provide default method implementations
