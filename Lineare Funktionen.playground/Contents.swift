

import UIKit
import PlaygroundSupport

public func sharedFunction() -> String {
    return "Hello, world!"
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