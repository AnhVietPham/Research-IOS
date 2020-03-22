
struct Student {
  let firstName: String
  let lastName: String
  var grade: Int
}

struct Classroom {
  let subject: String
  var students: [Student]
  
  func getHighestGrade() -> Int? {
    var grades: [Int] = []
    for student in students {
      grades.append(student.grade)
    }
    return grades.max()
  }
}


var classroom = Classroom(
  subject: "Usable Clock Design",
  students: [
    Student(firstName: "Chris", lastName: "Belanger", grade: 70),
    Student(firstName: "Catie", lastName: "Catterwaul", grade: 95),
    Student(firstName: "Salvador", lastName: "Dalí", grade: 2)
  ]
)
classroom.getHighestGrade()
