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

 /*let path = UIBezierPath()
 path.move(to: point1)
 path.addLine(to: point2)
 path.addLine(to: point3)

path.move(to: CGPoint(x:0 , y:100))
path.addLine(to: point3)
path.lineWidth = 2*/
Int(UIScreen.main.bounds.width)

let sheetwidth = Int(UIScreen.main.bounds.width/2)
let sheetheight = Int(UIScreen.main.bounds.height)

 let gridview = UIView(frame: CGRect(x: 0, y: 0, width: sheetwidth, height: sheetheight))

 let axisview = UIView(frame: CGRect(x: 0, y: 0, width: sheetwidth, height: sheetheight))





 //let xGrid = CGRect(x: 432/46, y: 0, width: 1, height: 768)

//xGrid.bounds = xGrid
//xGrid.position = view.center

func kästchen () -> UIView {
let gridsize = 12

let grid = UIBezierPath()

let countwidth = sheetwidth/gridsize

let countheight = sheetheight/gridsize

for i in 1...countwidth {
    grid.append(UIBezierPath(rect: CGRect(x: i*sheetwidth/countwidth, y: 0, width: 1, height: sheetheight)))
}

for i in 1...countheight {
    grid.append(UIBezierPath(rect: CGRect(x: 0, y: i*gridsize, width: sheetwidth, height: 1)))
}
    
    let shapeLayer = CAShapeLayer()
    shapeLayer.path = grid.cgPath
    //shapeLayer.fillColor = UIColor.white.cgColor
    //shapeLayer.fillRule = kCAFillRuleEvenOdd
    gridview.layer.mask = shapeLayer
    //gridview
    
    return gridview

}

func xachse () -> UIView {

let axis = UIBezierPath()
    
let xaxis = UIBezierPath()
let yaxis = UIBezierPath()
    
xaxis.move(to: CGPoint(x: 0, y: sheetheight/2))
xaxis.addLine(to: CGPoint(x: sheetwidth, y: sheetheight/2))

yaxis.move(to: CGPoint(x: sheetwidth/2, y: 0))
yaxis.addLine(to: CGPoint(x: sheetwidth/2, y: sheetheight))
    
//xaxis.lineWidth = 2
//bezierPathX.stroke()
 
axis.append(xaxis)
axis.append(yaxis)
    
    let shapeLayer = CAShapeLayer()
    shapeLayer.path = axis.cgPath
    shapeLayer.strokeColor = UIColor.black.cgColor
    //shapeLayer.fillColor = UIColor.white.cgColor
    //shapeLayer.fillRule = kCAFillRuleEvenOdd
    axisview.layer.mask = shapeLayer
    //gridview
    
    return axisview

}



//drawLine(p1: CGPoint(x:0, y:0), p2: CGPoint(x:0, y:100))

 gridview.backgroundColor = UIColor(red: 224/255, green: 224/255, blue: 224/255, alpha: 1)

axisview.backgroundColor = UIColor.black

print("This code gets executed but isn't visible in the book.")

class ViewController: UIViewController {
    
    override func loadView() {
        
        let view = UIView()
        view.backgroundColor = UIColor.white
        view.frame.width
        
        kästchen()
        xachse()
        view.addSubview(gridview)
        view.addSubview(axisview)
        
        UIScreen.main.bounds.width/2
        UIScreen.main.bounds.height/2
        
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