//#-hidden-code
import UIKit
import PlaygroundSupport
//#-end-hidden-code

//: Still work to do...
//#-hidden-code

import UIKit
import PlaygroundSupport

print("This code gets executed but isn't visible in the book.")

func createBezierPath() -> UIBezierPath {
    // Create a path
    let path = UIBezierPath()
    
    // Starting point
    path.move(to: CGPoint(x:0,y:0) )
    
    // Ending point
    path.addLine(to: CGPoint(x:0, y:5) )
    
    return path
}

let path = createBezierPath()

class ViewController : UIViewController {
    
    override func loadView() {


let view = UIView()
view.backgroundColor = UIColor.white
        
        self.view = view
    }
}

PlaygroundPage.current.liveView = ViewController()

func /*#-editable-code*/ <#funcName#> /*#-end-editable-code*/() {
    print("The user will be prompted to edit <#funcName#>")
    print("This yields a compiler warning in Xcode")
}

//#-end-hidden-code