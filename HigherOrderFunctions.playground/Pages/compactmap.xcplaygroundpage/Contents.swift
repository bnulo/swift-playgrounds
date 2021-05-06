//: [Previous](@previous)

import Foundation

/*
 CompactMap
 
 Returns an array containing the non-nil results of calling the given transformation with each element of this sequence.
 */
let array = ["joe", nil, "marty", nil, nil]
print(array.compactMap { $0 })

/*
 If you do compactmap a collection containing optional values, it will only consider the non-nil values. This doesn’t do anything on sets and dictionaries as Sets cannot have nil values and for dictionary, the compactmap will give an array of tuples with key and value.


 Note: In swift 5, compactMapValues() is introduced which adds functionality to dictionary as well. Will update the article soon.

 */
let dict = ["a": 1, "b": nil]
let td = dict.compactMap { $0 }
print(td, type(of: td))

//'flatMap' is deprecated: Please use compactMap(_:) for the case where closure returns an optional value
let valid = people.compactMap { $0 } // removes nil values
valid

// we can use map, filter or reduce in flatMap closure
let collections = [[5, 2, 9], [1, 4], [8, 7, 6]]
let evenFilter = collections.flatMap { $0.filter { $0 % 2 == 0 } }
evenFilter
let sum = collections.compactMap { $0.reduce(0, +)}
sum

/*
3. Using CompactMap on a sequence with a closure that returns an optional:
Sequence.compactMap<U>(_ transform: (Element) -> U?) -> U?
Note that this use of flatMap was renamed to compactMap in Swift 4.1 (Xcode 9.3). It
provides a convenient way to strip nil values from an array:
*/
let keys: [String?] = ["Tom", nil, "Peter", nil, "Harry"]
let validNames = keys.compactMap { $0 }
validNames
// ["Tom", "Peter", "Harry"]

let counts = keys.compactMap { $0?.count }
counts
// [3, 5, 5]

//: [Next](@next)
