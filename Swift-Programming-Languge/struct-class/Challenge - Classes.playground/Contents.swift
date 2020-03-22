
//struct Student {
//  let name: String
//  var grade: Int
//  var pet: String?
//
//  func getPassStatus(lowestPass: Int = 50) -> Bool {
//    grade >= lowestPass
//  }
//
//  mutating func earnExtraCredit() {
//    grade += 10
//  }
//}
//
//var chris = Student(name: "Chris", grade: 49, pet: "Mango")
//chris.getPassStatus()
//chris.earnExtraCredit()
//chris.getPassStatus()

class Student {
  let name: String
  var grade: Int
  var pet: String?
  
  init(name: String, grade: Int, pet: String? = nil) {
    self.name = name
    self.grade = grade
    self.pet = pet
  }
  
  func getPassStatus(lowestPass: Int = 50) -> Bool {
    grade >= lowestPass
  }
  
  func earnExtraCredit() {
    grade += 10
  }
}

let chris = Student(name: "Chris", grade: 49, pet: "Mango")
chris.getPassStatus()
chris.earnExtraCredit()
chris.getPassStatus()
