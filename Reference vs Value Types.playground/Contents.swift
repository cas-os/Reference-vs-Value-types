import UIKit
import Darwin

// Value type

struct MyValueType {
    var name: String
    var assignment: String
    var grade: Int
}

func extraCreditValueType(val: MyValueType, extraCredit: Int) {
    var val = val // must be ! otherwise there will be an error : Left side of mutating operator isn't mutable: 'val' is a 'let' constant
    val.grade += extraCredit
    print(val)
}

var val = MyValueType(name: "Jon", assignment: "Math test 1", grade: 90)
print("Value Type : ",val.name, val.assignment, val.grade)
extraCreditValueType(val: val, extraCredit: 5)
print("Value Type : ",val.name, val.assignment, val.grade)

// Reference type

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

func extraCreditReferenceType(ref: MyReferenceType, extraCredit: Int) {
    ref.grade += extraCredit
    print(ref.name, ref.assignment, ref.grade)
}


var ref = MyReferenceType(name: "Ron", assignment: "Chem test 1", grade: 90)
print("Reference Type : ",ref.name, ref.assignment, ref.grade)
extraCreditReferenceType(ref: ref, extraCredit: 2)
print("Reference Type : ",ref.name, ref.assignment, ref.grade)

// --

func getGradeForAssignment(assignment: MyReferenceType) {
    let num = Int(arc4random_uniform(20) + 80)
    assignment.grade = num
    print("Grade for \(assignment.name) is \(num)")
}

var mathGrades = [MyReferenceType]()
var students = ["Jon","Kim","Kailey","Kara"]
var mathAssignment = MyReferenceType(name: "", assignment: "Math Assignment", grade: 0)

for student in students {
    mathAssignment.name = student
    getGradeForAssignment(assignment: mathAssignment)
    mathGrades.append(mathAssignment)
    
    for assignment_ in mathGrades {
        print("\(assignment_.name) : grade \(assignment_.grade)")
    }
}



