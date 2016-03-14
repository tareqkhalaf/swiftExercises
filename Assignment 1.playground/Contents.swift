/*:
**Assignment:** Based on Sessions 1 - 3 (Basics | DataTypes | Operators, Strings & Characters, Control Flow), create a playground that will manage your todos.
>> **You will need to:**
* Print all your Todos (small description)
* Print a single Todo (large description)
* Add a Todo
* Update a Todo
* Delete a Todo
>> **Constraints:**
* Use a tuple to model each Todo
* Use a single tuple to group all your Todos
* Investigate what a `Mirror` is and how it can be leveraged
*/
import Foundation

let todos = (
    (id: 1, title: "First", date: "03-13-16", desc: "first todo item", assigned: (first: "Tareq", last: "Khalaf")),
    (id: 2, title: "Second", date: "03-13-16", desc: "second todo item", assigned: (first: "Gazzal", last: "Almashal"))
)
var todo1 = (0, "", "", "", ("", ""))
var todo2 = (0, "", "", "", ("", ""))

print("Print all your todos (small description)")
var todosMirror = Mirror(reflecting: todos)
for case let (label?, todo) in todosMirror.children {
    let todoMirror = Mirror(reflecting: todo)
    for case let (label?, value) in todoMirror.children {
        if label == ".1" {
            print("\t\(value)")
        }
    }
}

print("Print a single todo (large description)")
todosMirror = Mirror(reflecting: todos)
for case let (label?, todo) in todosMirror.children {
    if label == ".0" {
        let todoMirror = Mirror(reflecting: todo)
        var output = ""
        for case let (label?, value) in todoMirror.children {
            switch label {
            case ".0":
                output += "id: \(value), "
            case ".2":
                output += "date: \(value), "
            case ".3":
                output += "description: \(value)"
            default:
                break
            }
        }
        print("\t\(output)")
    }
}

print("Add a todo")
var todo3 = (id: 3, title: "Fourth", date: "03-14-16", desc: "fourth todo item", assigned: (first: "Hazim", last: "Fayyad"))
todosMirror = Mirror(reflecting: todos)
for case let (label?, todo) in todosMirror.children {
    var tuple = todo as! (Int, String, String, String, (String, String))
    switch label {
    case ".0":
        todo1 = tuple
    case ".1":
        todo2 = tuple
    default:
        break
    }
}


print("Update a todo")
todosMirror = Mirror(reflecting: todos)
for case let (label?, todo) in todosMirror.children {
    if label == ".0" {
        var tuple = todo as! (Int, String, String, String, (String, String))
        tuple.1 = "First Todo"
        print("\t\(tuple)")
    }
}



