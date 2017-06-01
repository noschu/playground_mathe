//#-hidden-code
import UIKit
import PlaygroundSupport
//#-end-hidden-code

//: Still work to do...
//#-hidden-code


 var arrowLength: CGFloat = 20.0
 
 var transposedFrame = CGRect.zero
 
 // We need 7 points for our Bezier path
 let midX = transposedFrame.midX
 let midY = transposedFrame.midY
 let point1 = CGPoint(x: 0, y: 0)
 let point2 = CGPoint(x: 200, y: 0)
 let point3 = CGPoint(x: 432, y: 628)
 
 //var breite = size.width
 
 // Build our Bezier path
 let path = UIBezierPath()
 path.move(to: point1)
 path.addLine(to: point2)
 path.addLine(to: point3)
 path.close()
 
 let pathview = UIView(frame: CGRect(x: 0, y: 0, width: 432, height: 628))
 pathview.backgroundColor = UIColor.lightGray
 
 let shapeLayer = CAShapeLayer()
 shapeLayer.path = path.cgPath
 shapeLayer.fillColor = UIColor.white.cgColor
 shapeLayer.fillRule = kCAFillRuleEvenOdd
 pathview.layer.mask = shapeLayer
 pathview

print("This code gets executed but isn't visible in the book.")

class ViewController: UIViewController {
    
    override func loadView() {
        
        let view = UIView()
        view.backgroundColor = UIColor.white
        view.frame.width
        view.addSubview(pathview)
        
        UIScreen.main.bounds.width
        UIScreen.main.bounds.height
        
        
        self.view = view
        view.frame
    }
}

PlaygroundPage.current.liveView = ViewController()

/*func /*#-editable-code*/ <#funcName#> /*#-end-editable-code*/() {
    print("The user will be prompted to edit <#funcName#>")
    print("This yields a compiler warning in Xcode")
}*/
//#-end-hidden-code