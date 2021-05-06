//: [Previous](@previous)

import Foundation

let collections = [[1, 2, 3], [4, 5]]
// this is the long chaining but it seams that it takes long time because of type-checking!
//let sum = collections.flatMap {$0}.filter { $0 % 2 == 1}.map { $0 * $0 }.reduce(0, +)

var start = CFAbsoluteTimeGetCurrent()
let sum2 = collections.flatMap { $0 }
    .filter { (num: Int) in num % 2 == 1 }
    .map { (num: Int) in num * num }
    .reduce(0) { (res: Int, num: Int) in res + num }

var diff = CFAbsoluteTimeGetCurrent() - start
"Took \(diff) seconds"
sum2

print(title: "")

start = CFAbsoluteTimeGetCurrent()
let v = collections.flatMap {$0}
let v1 = v.filter { $0 % 2 == 1 }
let v2 = v1.map { $0 * $0 }
let v3 = v2.reduce(0, +)
diff = CFAbsoluteTimeGetCurrent() - start
"Took \(diff) seconds"
v3

print(title: "")

start = CFAbsoluteTimeGetCurrent()
let x: [Int] = collections.flatMap {$0}
let x1: [Int] = x.filter { $0 % 2 == 1 }
let x2: [Int] = x1.map { $0 * $0 }
let x3: Int = x2.reduce(0, +)
diff = CFAbsoluteTimeGetCurrent() - start
"Took \(diff) seconds"
x3

//: [Next](@next)
