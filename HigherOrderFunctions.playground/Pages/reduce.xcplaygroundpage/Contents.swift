//: [Previous](@previous)

import Foundation

/*
 Use reduce to combine all items in a collection to create a single new value.
 
 So, the reduce function takes two arguments:
 -  One is an initial value which is used to store the initial value or the value or result returned by the closure from each iteration.
 -  The other one is a closure which takes two arguments, one is the initial value or the result from the previous execution of the closure and the other one is the next item in the collection.
 */
print(title: "Ex. 1")
let numbers = [1, 2, 3, 4]
let sum = numbers.reduce(0) { $0 + $1 } // initial value = 0, closure: { lastResult, newElement}
sum
/*
 Here the closure is of type (Int,Int)->Int . So, we can pass any function or closure of type (Int,Int)->Int . In this scenario, instead of the closure, we could also pass basic operator functions like +, -, *, / .
 */
print(title: "Ex. 2")
let sum2 = numbers.reduce(0, +)
sum2
print(title: "Ex. 3")
let factorial = numbers.reduce(1,*)
factorial
print(title: "Ex. 4")
let codes = ["abc","def","ghi"]
let concat = codes.reduce("") {$0 + $1}
concat
print(title: "Ex. 5")
let concat2 = codes.reduce("", +)
concat2

print(title: "Reduce on dictionary")
print(title: "Ex. 6")
let bookAmount = ["harrypotter":100.0, "junglebook":1000.0]
let priceSum = bookAmount.reduce(0) { $0 + $1.value }
priceSum
      
print(title: "Ex. 7")
let bookNames = bookAmount.reduce("The books are: ") { $0 + $1.key + ", "}
bookNames

print(title: "Ex. 8")
let names = ["alan","brian","charlie"]
let csv = names.reduce("===") {text, name in "\(text),\(name)"}
csv
//: [Next](@next)
