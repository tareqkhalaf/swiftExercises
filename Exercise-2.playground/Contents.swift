/*:
**Exercise:** Get Acquainted. Get a few properties of each person in your class... name and email are good. Use the `String` and `Character` as well as the data types and operators in [Basics | Data Types | Operators](Basics%20|%20Data%20Types%20|%20Operators) to complete this exercise.
>> **Example Output:**
* `My name is Mathew Sheets, my email is swift.dude@gmail.com.`
* `Other students in my class are Annie, Sam, Jack, Hudson, Oliver.`
* `Oliver dropped this class.` (**use the second string to pull out the last persons name.**)
* `Other students in my class are Annie, Sam, Jack, Hudson and CARSON was added.`  (**use the second string and append another person.**)
* `Jack and Hudson are in the class.` (**use the second string to pull out third and fourth person.**)
*/
var myString = "My name is Tareq Khalaf, my email is tareqkhalaf.85@gmail.com"
var otherString: String = "Other students in my class are Duane, Scott, Chidi, George, Jorge, Peter"

print(myString)
print(otherString)

let commaChar : Character = ","

if let commaIndex = otherString.characters.indexOf(commaChar){
    otherString.characters.indexOf(commaChar)
    otherString.characters.indexOf(commaChar)
    let commaPos = otherString.startIndex.distanceTo(commaIndex)
    let range = commaIndex..<otherString.endIndex
    otherString.removeRange(range)
print(commaIndex)
}

//print(otherString.endIndex.)
//
//let range: Range<String.Index> = comma.rangeOfString("b")!
//
//
//let range = otherString.endIndex.advancedBy(-7)..<otherString.endIndex
//otherString.removeRange(range)
//
print(otherString)
