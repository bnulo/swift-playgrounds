import Foundation

func print(title: String) {
    let maxCharCount = 69
    let dashCount = maxCharCount - title.count
    var printString = "\nš \(title):"
    for _ in 0...dashCount { printString += "-" }
    print(printString)
}
