import UIKit
import PlaygroundSupport


public func sharedFunction() -> String {
    return "Hello, world!"
}

public let sheetwidth = Int(UIScreen.main.bounds.width/2)

public let sheetheight = Int(UIScreen.main.bounds.height)

public let gridview = UIView(frame: CGRect(x: 0, y: 0, width: sheetwidth, height: sheetheight))

public let axisview = UIView(frame: CGRect(x: 0, y: 0, width: sheetwidth, height: sheetheight))

public let funktionview = UIView(frame: CGRect(x: 0, y: 0, width: sheetwidth, height: sheetheight))

public class ViewController: UIViewController {
    
    override public func loadView() {
        
        let view = UIView()
        view.backgroundColor = UIColor.white
        view.frame.width
        
        UIScreen.main.bounds.width/2
        UIScreen.main.bounds.height/2
        
        view.addSubview(gridview)
        view.addSubview(axisview)
        view.addSubview(funktionview)
        
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

var gridsize = 12

let countwidth = sheetwidth/gridsize

let countheight = sheetheight/gridsize

public func kästchenpapier () -> UIView {
    //let gridsize = 12
    
    let grid = UIBezierPath()
    
    for i in 1...countwidth {
        grid.append(UIBezierPath(rect: CGRect(x: i*gridsize, y: 0, width: 1, height: sheetheight)))
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

public func zeichne(achse: String) -> UIView {

    if achse == "x" {
        print("x-Achse")
    }
    
    if achse == "y" {
        print("y-Achse")
    }
    
    return axisview

}

public func zeichneachse () -> UIView {
    
    let axis = UIBezierPath()
    
    let xaxis = UIBezierPath()
    let yaxis = UIBezierPath()
    
    let xmid = countwidth/2*gridsize
    _ = countheight/2*gridsize
    
    xaxis.move(to: CGPoint(x: 0, y: sheetheight/2))
    xaxis.addLine(to: CGPoint(x: sheetwidth, y: sheetheight/2))
    xaxis.move(to: CGPoint(x: sheetwidth, y: sheetheight/2))
    xaxis.addLine(to: CGPoint(x: sheetwidth-9, y: sheetheight/2-3))
    xaxis.move(to: CGPoint(x: sheetwidth, y: sheetheight/2))
    xaxis.addLine(to: CGPoint(x: sheetwidth-9, y: sheetheight/2+3))
    
    for i in 1...countwidth/2 {
        xaxis.move(to: CGPoint(x: i*gridsize*2-gridsize, y: sheetheight/2-3))
        xaxis.addLine(to: CGPoint(x: i*gridsize*2-gridsize, y: sheetheight/2+3))
    }
    
    yaxis.move(to: CGPoint(x: xmid, y: 0))
    yaxis.addLine(to: CGPoint(x: xmid, y: sheetheight))
    yaxis.move(to: CGPoint(x: xmid, y: 0))
    yaxis.addLine(to: CGPoint(x: xmid-3, y: 9))
    yaxis.move(to: CGPoint(x: xmid, y: 0))
    yaxis.addLine(to: CGPoint(x: xmid+3, y: 9))
    
    for i in 2...countheight/2 {
        yaxis.move(to: CGPoint(x: xmid-3, y: (i-1)*gridsize*2))
        yaxis.addLine(to: CGPoint(x: xmid+3, y: (i-1)*gridsize*2))
    }
    
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

public func lineareFunktion (steigung: Int, yAchsenabschnitt: Int) -> UIView {

    //let funktionview = UIView()
    
    let funktionpath = UIBezierPath()
    
    let nsheetwidth = countwidth*gridsize
    let nsheetheight = countheight*gridsize
    
    let trafoyachsenabschnitt = (nsheetheight/2-gridsize*2*yAchsenabschnitt)
    
    funktionpath.move(to: CGPoint(x: 0, y:nsheetwidth/2*steigung+trafoyachsenabschnitt))
    funktionpath.addLine(to: CGPoint(x:nsheetwidth, y:-nsheetwidth/2*steigung+trafoyachsenabschnitt))
    
    let shapeLayer = CAShapeLayer()
    shapeLayer.path = funktionpath.cgPath
    shapeLayer.strokeColor = UIColor.black.cgColor
    //shapeLayer.fillColor = UIColor.white.cgColor
    //shapeLayer.fillRule = kCAFillRuleEvenOdd
    funktionview.layer.mask = shapeLayer
    //axisview
    funktionview.backgroundColor = UIColor.blue
    
    return funktionview
}

public func _setup() {
    
    let view = ViewController()
    PlaygroundPage.current.liveView = view
}