/*:
[Exercises](Exercises) | [Previous](@previous) | [Next](@next)
*/
/*:
**Exercise:**
Your a big tipper! When ever you go out to eat you tip 20% of the bill and never tip less than $3. Create a playground that prints the tip amount and the total amount. Within the playground, you should be able to change the bill to see how the tip amount varies.
>> **Example Output:**
* `What is the bill? $x.xx`
* `What is the tip percentage? x`
* `The tip is $x.xx`
* `The total is $x.xx`
>> **Constraints:**
* Don't use the `String(format:, _, _)` initilizer
* Use the remainder operator while creating the string
* Use the ternary conditional operator
*/
import Foundation

let billAmount = 87.56
let tipPercentage = 0.2
let minTipAmount = 3.0

var tipAmount = getTipAmount(billAmount, tipPercentage: tipPercentage, minTipAmount: minTipAmount)
let totalAmount = getTotalAmount(billAmount, tipAmount: tipAmount)

// use string interpolation to get the correct representation of the dollar about

let billAmountStr = getFinalString(billAmount, decimal: decimalPlaceString(decimalPlaceAsInt(billAmount)))
let tipAmountStr = getFinalString(tipAmount, decimal: decimalPlaceString(decimalPlaceAsInt(tipAmount)))
let totalAmountStr = getFinalString(totalAmount, decimal: decimalPlaceString(decimalPlaceAsInt(totalAmount)))

// print the values

print("What is the bill? $\(billAmountStr)")
print("What is the tip percentage? \(Int(tipPercentage * 100))")
print("The tip is $\(tipAmountStr)")
print("The total is $\(totalAmountStr)")
/*:
[Exercises](Exercises) | [Previous](@previous) | [Next](@next)
*/
