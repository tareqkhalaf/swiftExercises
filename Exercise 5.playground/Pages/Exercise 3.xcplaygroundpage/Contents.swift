/*:
[Exercises](Exercises) | [Previous](@previous) | [Next](@next)
*/
/*:
**Exercise:** You have a secret message to send. Write a playground that can encrypt strings with an alphabetical [caesar cipher](https://en.wikipedia.org/wiki/Caesar_cipher). This cipher can ignore numbers, symbols, and whitespace.
>> **Example Output:**
* Decrypted: Nearly all men can stand adversity, but if you want to test a man's character, give him power
* Encrypted: arneyl nyy zra pna fgnaq nqirefvgl, ohg vs lbh jnag gb grfg n zna'f punenpgre, tvir uvz cbjre
>> **Constraints:**
* The encrypted and decrypted text is case sensitive
* Add a shift variable to indicate how many places to shift
*/
import Foundation

let input = "Nearly all men can stand adversity, but if you want to test a man's character, give him power."
let shiftValue = Int.max

let encrypted = encrypt(input, shiftValue: shiftValue)
let decrypted = decrypt(encrypted, shiftValue: shiftValue)

print("Decrypted: \(decrypted)")
print("Encrypted: \(encrypted)")

let equal = input == decrypted ? "Yes" : "No"

print("Does input == decrypted: \(equal)")
/*:
[Exercises](Exercises) | [Previous](@previous) | [Next](@next)
*/
