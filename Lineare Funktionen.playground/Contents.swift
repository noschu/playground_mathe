

import UIKit
import PlaygroundSupport


public func sharedFunction() -> String {
    return "Hello, world!"
}



//// Einleitung Playground
//: In diesem Playground werden lineare und quadratische Funktionen, insbesondere deren Verschiebung besprochen. Dabei nutzen wir die Möglichkeit die mathematischen Begriffe auch im Kontext von gängien Programmiersprachen zu beschreiben.

PlaygroundPage.current.liveView = ViewController()

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
 let point3 = CGPoint(x: 20, y: 20)
 
 //var breite = size.width
 
 // Build our Bezier path
 let path = UIBezierPath()
 path.move(to: point1)
 path.addLine(to: point2)
 path.addLine(to: point3)
 path.close()
 
 let pathview = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 400))
 pathview.backgroundColor = UIColor.blue
 
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
        
        view.addSubview(pathview)
        
        self.view = view
    }
}

PlaygroundPage.current.liveView = ViewController()

func /*#-editable-code*/ <#funcName#> /*#-end-editable-code*/() {
    print("The user will be prompted to edit <#funcName#>")
    print("This yields a compiler warning in Xcode")
}

//#-end-hidden-code
