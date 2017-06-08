import UIKit
import PlaygroundSupport


public func sharedFunction() -> String {
    return "Hello, world!"
}

public extension UIView {
    
    func bindFrameToSuperviewBounds() {
        guard let superview = self.superview else {
            print("Error! `superview` was nil – call `addSubview(view: UIView)` before calling `bindFrameToSuperviewBounds()` to fix this.")
            return
        }
        
        self.translatesAutoresizingMaskIntoConstraints = false
        superview.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-0-[subview]-0-|", options: .directionLeadingToTrailing, metrics: nil, views: ["subview": self]))
        superview.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-0-[subview]-0-|", options: .directionLeadingToTrailing, metrics: nil, views: ["subview": self]))
    }
    
}




//// Einleitung Playground
//: In diesem Playground werden lineare und quadratische Funktionen, insbesondere deren Verschiebung besprochen. Dabei nutzen wir die Möglichkeit die mathematischen Begriffe auch im Kontext von gängien Programmiersprachen zu beschreiben.

//// Koordinatensystem
//: Zunächst brauchen wir ein Koordinatensystem. Normalerweise zeichnen wir dieses als erstes in unser Heft. Diesmal wollen wir das iPad diese Aufgabe zuweisen. Mit den Befehl ... kannst Du die x-Achse zeichnen. Wie könnte der Befehl für die y-Achse lauten? Probier es mal aus!
//// Gleichung einer linearen Funktion
//: Nun haben wir ein Koordinatensystem. Aus dem Unterricht sollte schon bekannt sein, dass lineare Funktionen die Struktur y = m* x + n haben. Doch was heißt das eigentlich? Die Buchstaben x und y sind Variablen und so wollen wir sie auch behandeln. Wohingegen m und n feste Zahlen, sog. Konstanten, sind.
//// Steigung und y-Achsenabschnitt
//: Wir haben nun unsere lineare Gleichung. Was passiert wenn wir die Werte für m und n ändern?

//// Fünfte Seite
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

let sheetwidth = 432
let sheetheight = 768

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

let bezierPathX = UIBezierPath()
bezierPathX.move(to: CGPoint(x: 0, y: sheetheight/2))
bezierPathX.addLine(to: CGPoint(x: sheetwidth, y: sheetheight/2))
bezierPathX.lineWidth = 2
//bezierPathX.stroke()
    
    let shapeLayer = CAShapeLayer()
    shapeLayer.path = bezierPathX.cgPath
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
