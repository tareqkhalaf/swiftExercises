/*:
**Assignment:** Based on Sessions 1-7 (specifically Collection Types, Functions, Closures, Enumerations), create a playground that will manage your todos.
>> **You will need to:**
* Print all your Todos (small description)
* Print a single Todo (large description)
* Add a Todo
* Update a Todo
* Delete a Todo
>> **Constraints:**
* Model a Todo
* Create functions to:
* Get all your Todos
* Get a single Todo passing an id as an argument
* Add a Todo
* Update a Todo
* Delete a Todo
*/
import Foundation

public typealias Todo = (
    String,
    String,
    String,
    String
)

public var todos = [Todo]()

public func initTodo() {
    
    addTodo(createTodo("Tareq", subtitle: "Fdsdsadasdad", description: "dsdsadasdasd545445asd."))
    addTodo(createTodo("Gazal", subtitle: "Swfffifdfdf", description: "dfrerer54545454sdfsdfsdfsd"))
}

public func getTodos(closure: (todo: Todo) -> Bool) -> [Todo]? {
    
    return filter(todos, closure: closure)
}

public func getTodo(id: String) -> Todo? {
    
    guard let index = (indexOf(todos) { $0.0 == id }) else {
        return nil
    }
    
    return todos[index]
}

public func createTodo(title: String, subtitle: String, description: String) -> Todo {
    
    return (String(todos.count), title, subtitle, description)
}

public func addTodo(todo: Todo) -> Todo {
    
    todos.append(todo)
    
    return todo
}

public func updateTodo(todo: Todo) -> Todo? {
    
    guard let index = (indexOf(todos) { $0.0 == todo.0 }) else {
        return nil
    }
    
    todos[index] = todo
    return todo
}

public func deleteTodo(id: String) -> Todo? {
    
    guard let index = (indexOf(todos) { $0.0 == id }) else {
        return nil
    }
    
    return todos.removeAtIndex(index)
}

public func description(todo: Todo) -> String {
    
    let (id, title, subtitle, description, status) = todo
    
    return "id: \(id)\n\ttitle: \(title)\n\tsubtitle: \(subtitle)\n\tdescription: \(description)\n"
}


func iterator(todos: [Todo], closure: (todo: Todo) -> Void) {
    
    for var index = 0; index < todos.count; ++index {
        
        closure(todo: todos[index])
    }
}

public func each(todos: [Todo], closure: (todo: Todo, index: Int) -> Void) {
    
    var index = 0;
    
    iterator(todos) { closure(todo: $0, index: index++) }
}

public func pluck(todos: [Todo], closure: (todo: Todo) -> String) -> [String] {
    
    var plucked = [String]()
    
    iterator(todos) { plucked.append(closure(todo: $0)) }
    
    return plucked
}

public func indexOf(todos: [Todo], closure: (todo: Todo) -> Bool) -> Int? {
    
    var index = -1
    var found = false
    
    iterator(todos) { (todo) -> Void in
        
        if !found {
            
            if closure(todo: todo)  {
                found = true
            }
            
            index++
        }
    }
    
    return index == -1 || !found ? nil : index
}

public func filter(todos: [Todo], closure: (todo: Todo) -> Bool) -> [Todo]? {
    
    var filter = [Todo]()
    
    iterator(todos) { (todo) -> Void in
        
        if closure(todo: todo) {
            
            filter.append(todo)
        }
    }
    
    return !filter.isEmpty ? filter : nil
}


func printTodos(todos: [Todo]) {
    
    each(todos) { (todo, index) -> Void in
        
        print("\t\(todo.0): \(todo.1) = \(todo.4)")
    }
}

initTodo()

print("Print all your Todos (small description)")
printTodos(todos)

print("\nPrint a single Todo (large description)")
var study = getTodo("1")!
print("\t\(description(study))\n")

print("Add a Todo")
let Fahed = createTodo("Fahed", subtitle: "Tdsdsfeffrfrfr", description: "dfdfsdfsdfsdfsdfsdfsdfsdfsdf")
addTodo(Fahed)
printTodos(todos)

print("\nUpdate a Todo")
updateTodo((study.0, study.1, study.2, study.3))
study = getTodo("1")!
print("\t\(description(study))")

print("Delete a Todo")
let weed = deleteTodo("0")!
print("\t\(description(weed))\n")

