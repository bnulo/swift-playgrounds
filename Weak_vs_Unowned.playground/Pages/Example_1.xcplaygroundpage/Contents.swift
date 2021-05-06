//: [Previous](@previous)

import UIKit
import PlaygroundSupport


protocol Service {
    func call(_ completionHandler: @escaping (Int) -> Void)
}
protocol ViewControllerDelegate: AnyObject {}

class ViewController: UIViewController {
    var service: Service?
    let label = UILabel()
    
    // ❇️ weak and unowned can be use on any property
    // for example delegate should never make retain cycle so we define it as weak and
    // it has the same meaning and semantic as in the closure
    // it means as soon as the object that it references is going out of memory, this property is
    // going to be set to nil automatically
    // so we have to define a weak var as optional because it can be nil
    weak var delegate: ViewControllerDelegate? = nil
    
    func format(_ rawData: Int) -> String {
        "\(rawData)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // ❇️ we have self in closure here and it can lead to retain cycle
        service?.call({ (response) in
            self.label.text = self.format(response)
        })
        
        // ❇️ we can use weak self, we suppose that self may be nil and in order to
        // preventing the closure causing crash the app, we use keyword weak to tell swift that
        // self me be nil, so in order to use the self we use optional self means self?
        service?.call({ [weak self] (response) in
            self?.label.text = self?.format(response) ?? ""
        })
        
        // ❇️ we can use weak self and unwrap it before using it
        service?.call({ [weak self] (response) in
            guard let self = self else { return }
            self.label.text = self.format(response)
        })
        
        // ❇️ we can use unowned, it means we suppose self wont be nil and this
        // can may lead to crash the app if self is nil and this closure fire
        // so we have to be sure that it is impossible for self to be nil
        service?.call({ [unowned self] (response) in
            self.label.text = self.format(response)
        })
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = ViewController()

//: [Next](@next)
