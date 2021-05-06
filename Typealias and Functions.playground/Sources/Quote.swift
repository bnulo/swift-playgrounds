import Foundation

public struct Quote: Codable {
    public let quoteText: String
    public let author: String
    
    public init(quoteText: String, author: String) {
        self.quoteText = quoteText
        self.author = author
    }
}

public func print(title: String) {
    let maxCharCount = 69
    let dashCount = maxCharCount - title.count
    var printString = "\n📕 \(title):"
    for _ in 0...dashCount { printString += "-" }
    print(printString)
}

public func measuringExecutionSpeed(closure: () -> Void) {
    let start = CFAbsoluteTimeGetCurrent()
    closure() // run your work
    let diff = CFAbsoluteTimeGetCurrent() - start
    print("Took \(diff) seconds")
}

