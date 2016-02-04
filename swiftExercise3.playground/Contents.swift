/*:
**Exercise:** You have a secret message to send. Write a playground that can encrypt strings with an alphabetical [caesar cipher](https://en.wikipedia.org/wiki/Caesar_cipher). This cipher can ignore numbers, symbols, and whitespace. Add a shift variable to indicate how many places to shift.
>> **Example Output:**
* Decrypted: Nearly all men can stand adversity, but if you want to test a man's character, give him power
* Encrypted: arneyl nyy zra pna fgnaq nqirefvgl, ohg vs lbh jnag gb grfg n zna'f punenpgre, tvir uvz cbjre
>> **Constraints:**
* Use a `switch` statment
* Use a loop statement
*/
var textDecrypted = "Nearly all men can stand adversity, but if you want to test a man's character, give him power"
var textEncrypted = ""

var shiftValue = 13

var index = 0

for scalar in textDecrypted.unicodeScalars {
    let value = scalar.value
    switch value{
    case 65...90:
        let encrypted = scalar.value + 4
        if 65...90 ~= encrypted
        {
            let u = UnicodeScalar(encrypted)
            let char = Character(u)
            textEncrypted += String(char)
        }
        else
        {
        textEncrypted += String("T")
        }
       
    case 97...122:
        let encrypted = scalar.value + 4
        if 97...122 ~= encrypted
        {
            let u = UnicodeScalar(encrypted)
            let char = Character(u)
            textEncrypted += String(char)
        }
        else
        {
            textEncrypted += String("t")
        }

    default:
    textEncrypted += String(scalar)
    }
}

print(textDecrypted)
print(textEncrypted)

//for  char in textDecrypted.characters
//{
//    var unicode =  String(char).unicodeScalars
//    if (unicode.value >= 65 && unicode.value <= 90) || (unicode.value >= 97 && unicode.value <= 122) {++letterCounter}
//    {
//    print(char)
//    }
//    index++
//}

//case