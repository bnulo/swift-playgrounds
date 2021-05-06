//: [Previous](@previous)

import Foundation
/*
 Use filter to loop over a collection and return an Array containing only those elements that match an include condition.
 
 Filter on array:
 
 The swift autocomplete shows the following if we try to use filter method for an Int array.
 
 As you can see, the filter function calls a closure called isIncluded which takes one int as argument and returns a Bool . So, the isIncluded closure will return a bool value for each collection item and based on this result a new filtered array will be generated.
 */

print(title: "Filter on Array")

let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]
let evenArray = numbers.filter { $0 % 2 == 0 } // { $0 % 2 == 0 } is the closure we pass to filter
evenArray
type(of: evenArray)

/*
 Filter on dictionary:
 */
print(title: "Filter on Dictionary")
let bookAmount = ["harrypotter":100.0, "junglebook":1000.0, "nonduality":80.0]
let harry = bookAmount.filter { $0.key == "harrypotter" }
(harry, type(of: harry))
("\n🔥$1 and $0.value are the Same:")
let nuder100 = bookAmount.filter { $1 <= 100.0}
(nuder100, type(of: nuder100))
let nuder100Also = bookAmount.filter { $0.value <= 100.0}
(nuder100Also, type(of: nuder100Also))

/*
 Filter on set:
 */
print(title: "Filter on Set")
let lengthInMeters: Set = [4.0, 6.2, 8.9]
let greaterThan5 = lengthInMeters.filter { $0 > 5.0 }
(greaterThan5, type(of: greaterThan5))

//: [Next](@next)
