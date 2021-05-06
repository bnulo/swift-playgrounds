//: [Previous](@previous)

import Foundation
/*
 Flatmap is used to flatten a collection of collections . But before flattening the collection, we can apply map to each elements.
 Apple docs says: Returns an array containing the concatenated results of calling the given transformation with each element of this sequence.
 
 Read it like : map + (Flat the collection)
 */
print(title: "Flatmap On Array")
let codes = [["abc", "def", "ghi"], ["jkl", "mno"], ["abc"]]
let flatmapCodes = codes.flatMap { $0 }
flatmapCodes
let flatmapCodes3 = codes.flatMap { $0.map {$0.uppercased()} }
flatmapCodes3
let otherCodes = ["abc", "def", "ghi"]
let fmCodes = otherCodes.flatMap { $0.uppercased() }
fmCodes

print(title: "Flatmap On Array of Dictionaries")
let dict = [["k1": 1, "k2": 2, "k3": 3], ["k1": 53, "k4": 4], ["k1": 1]]
let fmDict = dict.flatMap { $0 } // this returns array of tuples
fmDict
type(of: fmDict)
type(of: fmDict[0])
fmDict[0]
fmDict[0].0
fmDict[0].1

print(title: "Flatmap on set")
let numberSet: Set = [Set([1, 1, 1, 2, 3, 4, 5]), Set([2, 7, 8])]
let fms = numberSet.flatMap { $0 }
fms
type(of: fms)

/*
 Advantages of flatMap:
 
 Removing optionals:
 Even more usefully it knows about optionals and will remove them from a collection.
 */
print(title: "Advantages of flatMap")
let people: [String?] = ["joe", nil, "marty", nil, nil, "randy"]

//'flatMap' is deprecated: Please use compactMap(_:) for the case where closure returns an optional value
let valid = people.compactMap { $0 } // removes nil values
valid

// we can use map, filter or reduce in flatMap closure
let collections = [[5, 2, 9], [1, 4], [8, 7, 6]]
let evenFilter = collections.flatMap { $0.filter { $0 % 2 == 0 } }
evenFilter
let sum = collections.compactMap { $0.reduce(0, +)}
sum
let sum2 = collections.flatMap { $0 }.reduce(0, +)
sum2
/*
2. Using FlatMap on an optional:
The closure takes the non-nil value of the optional and returns an optional.
Optional.flatMap<U>(_ transform: (Wrapped) -> U?) -> U?
If the original optional is nil then flatMap returns nil:
*/
let input: Int? = Int("8")
let passMark: Int? = input.flatMap { $0 > 5 ? $0 : nil }
// 8
 
//: [Next](@next)
