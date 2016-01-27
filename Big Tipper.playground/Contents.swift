/*:
**Exercise:**
Your a big tipper! When ever you go out to eat you tip 20% of the bill and never tip less than $3. Create a playground that prints the tip amount and the total amount. Within the playground, you should be able to change the bill to see how the tip amount varies.
>> **Example Output:**
* `What is the bill? $x.xx`
* `What is the tip percentage? x`
* `The tip is $x.xx`
* `The total is $x.xx`
*/

import UIKit

var bill = (amount: 97.34, tipPercent: 20.0, tipMin: 3.0,total:0.0)

let tipPercentDec = bill.tipPercent / 100.0
var tipAmount = bill.amount * tipPercentDec

if tipAmount < bill.tipMin{
    tipAmount = bill.tipMin
}

bill.total = bill.amount + tipAmount

print (String(format: "What is the bill? $%.2f",bill.amount))
print (String(format: "What is the tip percentage? $%.0f",bill.tipPercent))
print (String(format: "The tip is $%.2f",tipAmount))
print (String(format: "The total is $%.2f",bill.total))

