import UIKit

var greeting = "Bonsoir Elliot!"

print(greeting)


struct MyValueType {
    var name: String
    var assignment: String
    var grade: Int
}

class MyReferenceType {
    var name: String
    var assignment: String
    var grade: Int
    
    init(name: String, assignment: String, grade: Int) {
        self.name = name
        self.assignment = assignment
        self.grade = grade
    }
}


var val = MyValueType(name: "Jon", assignment: "Math test 1", grade: 92)
var ref = MyReferenceType(name: "Jon", assignment: "Math test 1", grade: 91)

print(val.name, val.assignment, val.grade)
print(ref.name, ref.assignment, ref.grade)


