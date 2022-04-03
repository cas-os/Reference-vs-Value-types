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

func extraCreditValueType(val: MyValueType, extraCredit: Int) {
    var val = val
    val.grade += extraCredit
}

func extraCreditReferenceType(ref: MyReferenceType, extraCredit: Int) {
    ref.grade += extraCredit
}

var val = MyValueType(name: "Jon", assignment: "Math test 1", grade: 90)
var ref = MyReferenceType(name: "Ron", assignment: "Chem test 1", grade: 90)

print(val.name, val.assignment, val.grade)
print(ref.name, ref.assignment, ref.grade)

extraCreditValueType(val: val, extraCredit: 5)
print(val.name, val.assignment, val.grade)

extraCreditReferenceType(ref: ref, extraCredit: 2)
print(ref.name, ref.assignment, ref.grade)


