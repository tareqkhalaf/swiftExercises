/*:
**Exercise:** Leveraging the `each` and `iterator` functions above, and using the students constant below, create the following functions passing in a closure to satisfy the function requirement.
*/
/*:
**Functions:**
* each = Iterate over each element in the array
* all = Returns true if all of the elements is not false
* any = Returns true if at least one of the elements is not false
* contains = Returns true if the element is present
* indexOf = Returns the index at which element can be found
* filter = Returns an array of all the elements that pass a truth test
* reject = Returns the elements in the array without the elements that pass a truth test
* pluck = Returns an array of a specific value from all the elements
>> **Constraints:**
Use the above functions to query your students.
>>
>> **Example Output:**
* Last names of math and sciense students where age > 25 and age < 80
* ["Kenobi", "Windu", "Solo", "Bacca"]
*/
import Foundation


func iterator(students: [[String:String]], closure: (student:[String:String]) -> Void) {
    for var index = 0; index < students.count; ++index
    {
        closure(student: students[index])
    }
}
public func each(students: [[String:String]], closure: (student: [String:String], index: Int) -> Void) {
    var index = 0;
    iterator(students) { closure(student: $0, index: index++) }
}
public func all(students: [[String:String]], closure: (student: [String:String]) -> Bool) -> Bool {
    var allStudents = true
    iterator(students) { (student) -> Void in
        if allStudents && !closure(student: student)
        {
            allStudents = false
        }
    }
    return allStudents
}

public func any(students: [[String:String]], closure: (student: [String:String]) -> Bool) -> Bool {
    var anyStudent = false
    iterator(students) { (student) -> Void in
            if !anyStudent && closure(student: student) {
            anyStudent = true}
    }
    return anyStudent
}

public func indexOf(students: [[String:String]], closure: (student: [String:String]) -> Bool) -> Int? {
    var index = -1
    var found = false
    iterator(students) { (student) -> Void in
        if !found {
            if closure(student: student)  {
                found = true
            }
            index++
        }
    }
    return index == -1 || !found ? nil : index
}

public func contains(students: [[String:String]], closure: (student: [String:String]) -> Bool) -> Bool {
    var found = false
    iterator(students) { (student) -> Void in
        if !found && closure(student: student) {
            found = true
        }
    }
    return found
}

public func filter(students: [[String:String]], closure: (student: [String:String]) -> Bool) -> [[String:String]]? {
    var filter = [[String:String]]()
    iterator(students) { (student) -> Void in
        if closure(student: student) {
            filter.append(student)
        }
    }
    return !filter.isEmpty ? filter : nil
}

public func reject(students: [[String:String]], closure: (student: [String:String]) -> Bool) -> [[String:String]]? {
    var keep = [[String:String]]()
    iterator(students) { (student) -> Void in
        if !closure(student: student) {
            
            keep.append(student)
        }
    }
    return !keep.isEmpty ? keep : nil
}


let students = [
    ["fullname" : "Amer Awwad ", "age" : "34", "class" : "Science"],
    ["fullname" : "Tareq Khalaf", "age" : "31", "class" : "Math"],
    ["fullname" : "Gazzal Almashal", "age" : "24", "class" : "English"],
    ["fullname" : "Wafa Khalaf", "age" : "17", "class" : "History"],
    ["fullname" : "Amin Samour ", "age" : "29", "class" : "Science"],
    ["fullname" : "Fade Abdulhameed ", "age" : "25", "class" : "Math"],
    ["fullname" : "Jacob Shawareb ", "age" : "68", "class" : "History"],
    ["fullname" : "Moe Khalaf",	"age" : "21", "class" : "Math"],
    ["fullname" : "Farah Almashal", "age" : "35", "class" : "Science"],
    ["fullname" : "Hanz Deeb", "age" : "21", "class" : "English"],
    ["fullname" : "Maher Stana ", "age" : "33", "class" : "Science"],
    ["fullname" : "John Smith ", "age" : "32", "class" : "History"],
    ["fullname" : "Lara clark",	"age" : "15", "class" : "English"],
    ["fullname" : "Bruce Wayne",	"age" : "21", "class" : "Math"],
]

print("all = \(all(students) { Int($0["age"]!) < 88 })")
print("any = \(any(students) { Int($0["age"]!) <= 16 })")
print("indexOf = \(students[indexOf(students) { $0["fullname"] == "Tareq Khalaf" }!])")
print("contains = \(contains(students) { $0["fullname"] == "Amer Awwad" })")
print("filter: \n\t\(filter(students) { $0["class"]! == "English" }!)")
print("reject: \n\t\(reject(students) { Int($0["age"]!) >= 21 }!)")





