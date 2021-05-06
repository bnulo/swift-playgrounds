//: [Previous](@previous)


import Foundation

/*
 Map on array:
 
 Use map to loop over a collection and apply the same operation to each element in the collection. The map function returns an array containing the results of applying a mapping or transform function to each item.
 
 Working of map: The map function has a single argument which is a closure (a function) that it calls as it loops over the collection. This closure takes the element from the collection as an argument and returns a result. The map function returns these results in an array.
 */
let arrayOfInt = [1, 2, 3, 4, 5, 6, 7, 8, 9]
let new = arrayOfInt.map { $0 * 10 }
print(new)

/*
 Map on Dictionary:
 
 Here, for the above dictionary, as we iterate over the collection our closure has arguments that are a String and a Double from the types of the key and value that make up each element of the dictionary. The return type can be an array of uppercased keys, values array with discounts or even an array of tuples. It’s all upto you.
 */

let bookAmount = ["harrypotter":100.0, "junglebook":100.0]
let keyArray = bookAmount.map { "keyString: " + $0.key.uppercased()}
print(keyArray, type(of: keyArray))


let valueArray = bookAmount.map { $0.value * 3 }
print(valueArray, type(of: valueArray))

let tuples = bookAmount.map { ("keyString: " + $0.key, $0.value * 3) }
print(tuples, type(of: tuples))

let milesToPoint = ["point1":120.0,"point2":50.0,"point3":70.0]
let kmToPoint = milesToPoint.map { name,miles in miles * 1.6093 }
print(kmToPoint)
/*
 Map on Set:
 
 */

let lengthInMeters: Set = [4.0, 6.2, 8.9]
let lengthInFeet = lengthInMeters.map { $0 * 3.2808 }
print(lengthInFeet, type(of: lengthInFeet))

/*
 What if you want to know the index of the collection while applying map to it??
 Answer is simple. You will have to enumerate it before mapping.
 
 */
let names = ["joe", "steve", "randy"]
let indexAndNum = names.enumerated().map { ($0, $1) }
print(indexAndNum, type(of: indexAndNum))

/*
 Tip
 
 The output of map became a collection of optional int ([Int?]) only because the array had nil — value in it. Otherwise it would have been an Int array.
 */
let optionalVals = [1, nil, 3, 4, nil]
let mp = optionalVals.map { $0 }
print(mp, type(of: mp))

let nonOptionalVals = [1, 3, 4]
let nmp = nonOptionalVals.map { $0 }
print(nmp, type(of: nmp))

let scores = [0,28,124]
let words = scores.map { NumberFormatter.localizedString(from: $0 as NSNumber, number: .spellOut) }
print(words)

//: We can use map for unwrap an optional

let date: Date? = Bool.random() ? Date() : nil
let dateFormatter = DateFormatter()
dateFormatter.timeStyle = .short
//: 1- we can unwrap like before
if let safeDate = date { print(dateFormatter.string(from: safeDate)) }
//: 2- or we can use map. map is called on collections. think of Bool like it can be true or false.
date.map { print(dateFormatter.string(from: $0)) }

//: [Next](@next)
