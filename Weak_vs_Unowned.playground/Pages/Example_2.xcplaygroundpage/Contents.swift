//: [Previous](@previous)

import Foundation

class Caller1 {
    
    var data: Data?
    
    func getData() {
        let url = URL(string: "industrial-binaries.co")!
        // Caller doesn't own `URLSession.shared`. -> [weak self]
        let task = URLSession.shared.dataTask(with: url) { [weak self] (data, _, _) in
            self?.data = data
        }
        task.resume()
    }
}
=============================================================================
class Caller2 {
    
    let engine: MathEngine
    
    init(engine: MathEngine) {
        self.engine = engine
    }
    
    func saveResult(_ result: Int) { }
    
    func computeFactorial() {
        // Caller can't be sure it's the only owner of `engine`. It was created
        // outside of this class and it can have multiple owners.
        // -> [weak self]
        engine.factorial(123456) { [weak self] (result) in
            self?.saveResult(result)
        }
    }
    
    
}
===============================================================================
class Caller3 {
    
    
    let engine: MathEngine = .init()
    
    func saveResult(_ result: Int) { }
    
    func computeFactorial() {
        // Engine was created inside this class. Caller is
        // its only owner. -> [unowned self]
        engine.factorial(123456) { [unowned self] (result) in
            self.saveResult(result)
        }
    }
}

//: [Next](@next)
