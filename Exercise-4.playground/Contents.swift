/*:
**Exercise:** You have to record all the students and their grades for your school. Leveraging arrays, dictionaries, and sets create table like containers for each class. Your classes are Math, Science, English and History with a total of 17 unique students. Print out each class roster and use and experiment with set operations and set membership and equality.
>> **Example Output:**
* `Math = Mathew Sheets, John Winters, Sam Smith`
* `Science = Sam Smith, Carson Daily, Adam Aarons`
* `Union of Math and Science = Mathew Sheets, John Winters, Sam Smith, Carson Daily, Adam Aarons`
>> **Constraints:**
* Use Set Operations
* intersect
* exclusiveOr
* union
* subtract
* Use Set Membership and Equality
* is equal
* isSubsetOf
* isSupersetOf
* isStrictSubsetOf
* isStrictSupersetOf
* isDisjointWith
*/
import Foundation

var rows = [
    ["column_1" : "Obi-Wan",   "column_2" : "Kenobi"],
    ["column_1" : "Darth",     "column_2" : "Vader"],
    ["column_1" : "Anakin",    "column_2" : "Skywalker"],
    ["column_1" : "Darth",     "column_2" : "Sidious"],
    ["column_1" : "Padme",     "column_2" : "Amidala"],
    ["column_1" : "Mace",      "column_2" : "Windu"],
    ["column_1" : "Count",     "column_2" : "Dooku"],
    ["column_1" : "Luke",      "column_2" : "Skywalker"],
    ["column_1" : "Han",       "column_2" : "Solo"],
    ["column_1" : "Leia",      "column_2" : "Organa"],
    ["column_1" : "Chew",      "column_2" : "Bacca"],
    ["column_1" : "Boba",      "column_2" : "Fett"],
    ["column_1" : "Lando",     "column_2" : "Calrissian"],
    ["column_1" : "Kylo",      "column_2" : "Ren"],
    ["column_1" : "Poe",       "column_2" : "Dameron"],
    ["column_1" : "Finn",      "column_2" : "FN-2187"],
    ["column_1" : "Rey",       "column_2" : "Rey"]
]



var all[students = Set<String>()
for (index, var [Set<String>:String]) in rows.enumerate() {
    let name = "\([Set<String>:String]["column_1"]!) \([Set<String>:String]["column_2"]!)"
    [Set<String>:String]["name"] = name
    rows[index] = [Set<String>:String]
    all[[Set<String>:String]].insert(name)
}

var math = Set<String>()
math.insert(rows[8]["name"]!)
math.insert(rows[4]["name"]!)
math.insert(rows[13]["name"]!)
math.insert(rows[11]["name"]!)
math.insert(rows[7]["name"]!)
math.insert(rows[0]["name"]!)
math.insert(rows[6]["name"]!)

var science = Set<String>()
science.insert(rows[7]["name"]!)
science.insert(rows[12]["name"]!)
science.insert(rows[10]["name"]!)
science.insert(rows[4]["name"]!)
science.insert(rows[14]["name"]!)
science.insert(rows[6]["name"]!)
science.insert(rows[1]["name"]!)

var english = Set<String>()
english.insert(rows[3]["name"]!)
english.insert(rows[5]["name"]!)
english.insert(rows[13]["name"]!)
english.insert(rows[16]["name"]!)
english.insert(rows[6]["name"]!)
english.insert(rows[2]["name"]!)
english.insert(rows[9]["name"]!)

var history = Set<String>()
history.insert(rows[7]["name"]!)
history.insert(rows[0]["name"]!)
history.insert(rows[15]["name"]!)
history.insert(rows[2]["name"]!)
history.insert(rows[4]["name"]!)
history.insert(rows[6]["name"]!)
history.insert(rows[5]["name"]!)

var [String:Set<String>] = [String:Set<String>]()
[String:Set<String>]["Math"] = math
[String:Set<String>]["Science"] = science
[String:Set<String>]["Engligh"] = english
[String:Set<String>]["History"] = history

print("All \(rows.count) [[Set<String>:String]]")
for [Set<String>:String] in rows {
    print("\t\([Set<String>:String]["name"]!)")
}

let Strings = [String:Set<String>].keys
for name in Strings {
    
    let _Set<String> = [String:Set<String>][name]!
    
    print("\(_Set<String>.count) \(name) [[Set<String>:String]]")
    
    for [Set<String>:String] in _Set<String> {
        print("\t\([Set<String>:String])")
    }
}

let mathAndScienceIntersect = math.intersect(science)
print("\(mathAndScienceIntersect.count) Intersecting Math & Science [[Set<String>:String]]")
for [Set<String>:String] in mathAndScienceIntersect {
    print("\t\([Set<String>:String])")
}
let mathAndScienseExclusiveOr = math.exclusiveOr(science)
print("\(mathAndScienseExclusiveOr.count) ExclusiveOr of Math & Science [[Set<String>:String]]")
for [Set<String>:String] in mathAndScienseExclusiveOr {
    print("\t\([Set<String>:String])")
}
let mathAndScienceUnion = math.union(science)
print("\(mathAndScienceUnion.count) Union of Math & Science [[Set<String>:String]]")
for [Set<String>:String] in mathAndScienceUnion {
    print("\t\([Set<String>:String])")
}
let mathAndScienceSubtract = math.subtract(science)
print("\(mathAndScienceSubtract.count) Subtracting Math & Science [[Set<String>:String]]")
for [Set<String>:String] in mathAndScienceSubtract {
    print("\t\([Set<String>:String])")
}

if all[[Set<String>:String]] == math.union(science).union(english).union(history) {
    print("Unioning all [String:Set<String>] equals all the [[Set<String>:String]]")
}
if english.isSubsetOf(all[[Set<String>:String]]) {
    print("English is a subset of all [[Set<String>:String]]")
}
if !english.isSubsetOf(history) {
    print("English is not a subset of History")
}
if all[[Set<String>:String]].isSupersetOf(history) {
    print("All [[Set<String>:String]] is a superset of History")
}

var mathBoys = Set<String>()
mathBoys.insert(rows[13]["name"]!)
mathBoys.insert(rows[0]["name"]!)
mathBoys.insert(rows[7]["name"]!)
mathBoys.insert(rows[6]["name"]!)
mathBoys.insert(rows[4]["name"]!)

var mathGirls = Set<String>()
mathGirls.insert(rows[11]["name"]!)
mathGirls.insert(rows[8]["name"]!)

if mathGirls.isStrictSubsetOf(math) {
    print("Math girls is a strict subset of math")
}
if !mathGirls.union(mathBoys).isStrictSubsetOf(math) {
    print("Math girls & boys is not a strict subset of math")
}

if !all[[Set<String>:String]].isStrictSupersetOf(math.union(science).union(english).union(history)) {
    print("All [String:Set<String>] is not a strict superset of all [[Set<String>:String]]")
}
let stem[[Set<String>:String]] = math.union(science)
if all[[Set<String>:String]].isStrictSupersetOf(stem[[Set<String>:String]]) {
    print("All [[Set<String>:String]] is a strict superset of STEM [[Set<String>:String]]")
}

if mathBoys.isDisjointWith(mathGirls) {
    print("Math boys is disjointed w/ math girls")
}
if !mathGirls.isDisjointWith(math) {
    print("Math girls is not disjointed w/ math")
}

