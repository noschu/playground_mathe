import UIKit
import PlaygroundSupport


public func sharedFunction() -> String {
    return "Hello, world!"
}

public let sheetwidth = Int(UIScreen.main.bounds.width/2)

public let sheetheight = Int(UIScreen.main.bounds.height)

public let gridview = UIView(frame: CGRect(x: 0, y: 0, width: sheetwidth, height: sheetheight))

public let axisview = UIView(frame: CGRect(x: 0, y: 0, width: sheetwidth, height: sheetheight))

public class ViewController: UIViewController {
    
    override public func loadView() {
        
        let view = UIView()
        view.backgroundColor = UIColor.white
        view.frame.width
        
        UIScreen.main.bounds.width/2
        UIScreen.main.bounds.height/2
        
        view.addSubview(gridview)
        view.addSubview(axisview)
        
        self.view = view
        //view.frame
    }
    
    override public var shouldAutorotate: Bool {
        return false
    }
    
    override public func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }
    
    override public var prefersStatusBarHidden: Bool {
        return true
    }
}

public func kästchenpapier () -> UIView {
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
    gridview.backgroundColor = UIColor(red: 224/255, green: 224/255, blue: 224/255, alpha: 1)
    
    return gridview
    
}

public func zeichneachse () -> UIView {
    
    let axis = UIBezierPath()
    
    let xaxis = UIBezierPath()
    let yaxis = UIBezierPath()
    
    xaxis.move(to: CGPoint(x: 0, y: sheetheight/2))
    xaxis.addLine(to: CGPoint(x: sheetwidth, y: sheetheight/2))
    xaxis.move(to: CGPoint(x: sheetwidth, y: sheetheight/2))
    xaxis.addLine(to: CGPoint(x: sheetwidth-9, y: sheetheight/2-3))
    xaxis.move(to: CGPoint(x: sheetwidth, y: sheetheight/2))
    xaxis.addLine(to: CGPoint(x: sheetwidth-9, y: sheetheight/2+3))
    
    yaxis.move(to: CGPoint(x: sheetwidth/2, y: 0))
    yaxis.addLine(to: CGPoint(x: sheetwidth/2, y: sheetheight))
    yaxis.move(to: CGPoint(x: sheetwidth/2, y: 0))
    yaxis.addLine(to: CGPoint(x: sheetwidth/2-3, y: 9))
    yaxis.move(to: CGPoint(x: sheetwidth/2, y: 0))
    yaxis.addLine(to: CGPoint(x: sheetwidth/2+3, y: 9))
    
    axis.append(xaxis)
    axis.append(yaxis)
    
    let shapeLayer = CAShapeLayer()
    shapeLayer.path = axis.cgPath
    shapeLayer.strokeColor = UIColor.black.cgColor
    //shapeLayer.fillColor = UIColor.white.cgColor
    //shapeLayer.fillRule = kCAFillRuleEvenOdd
    axisview.layer.mask = shapeLayer
    //axisview
    axisview.backgroundColor = UIColor.black
    
    return axisview
    
}

public func _setup() {
    
    let view = ViewController()
    PlaygroundPage.current.liveView = view
}

//// Einleitung Playground

//: In diesem Playground werden lineare und quadratische Funktionen, insbesondere deren Verschiebung besprochen. Dabei nutzen wir die Möglichkeit die mathematischen Begriffe auch im Kontext von gängigen Programmiersprachen zu beschreiben. AUf der nächsten Seite geht es weiter.

//// Die Grundlage

//#-hidden-code

_setup()

//#-end-hidden-code

//: Um eine Arbeitsgrundlage zu haben, benötigen wir wie immer im Mathematikunterricht Kästchenpapier. Du kannst es mit dem Befehl kästchenpapier() erzeugen. Versuche es mal!

//#-editable-code Hier kannst Du deinen Code eingeben.
//#-end-editable-code
//#-code-completion(everything, hide)
//#-code-completion(identifier, show, kästchenpapier())

//// Koordinatensystem

//#-hidden-code

_setup()

//#-end-hidden-code

//: Dann brauchen wir ein Koordinatensystem. Normalerweise zeichnen wir dieses als erstes in unser Heft. Diesmal wollen wir das iPad diese Aufgabe zuweisen. Mit den Befehl ... kannst Du die x-Achse zeichnen. Wie könnte der Befehl für die y-Achse lauten?

//#-editable-code Hier kannst Du deinen Code eingeben.
//#-end-editable-code
//#-code-completion(everything, hide)
//#-code-completion(identifier, show, kästchenpapier(), zeichneachse())

//// Gleichung einer linearen Funktion
//: Nun haben wir ein Koordinatensystem. Aus dem Unterricht sollte schon bekannt sein, dass lineare Funktionen die Struktur y = m* x + n haben. Doch was heißt das eigentlich? Die Buchstaben x und y sind Variablen und so wollen wir sie auch behandeln. Wohingegen m und n feste Zahlen, sog. Konstanten, sind.
//// Steigung und y-Achsenabschnitt
//: Wir haben nun unsere lineare Gleichung. Was passiert wenn wir die Werte für m und n ändern?

//// Fünfte Seite
//: Still work to do...

//#-hidden-code

print("This code gets executed but isn't visible in the book.")


//#-end-hidden-code
