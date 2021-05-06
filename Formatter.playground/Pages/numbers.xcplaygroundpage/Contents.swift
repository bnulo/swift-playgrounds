//: [Previous](@previous)

import Foundation

// Numbers
let formatter = NumberFormatter()
formatter.numberStyle = .decimal
formatter.string(from: 32.768)

formatter.numberStyle = .percent
formatter.string(from: 0.71)


//: [Next](@next)
