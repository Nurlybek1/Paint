//
//  CustomView.swift
//  Drawing
//
//  Created by Nurlybek Saktagan on 19.10.2021.
//

import UIKit

protocol Shapes {
    func drawPath()
}
class CustomView: UIView {
    var color: UIColor = UIColor.black
    var isFilled: Bool?
    var type = 0
    var point1: CGPoint?
    var point2: CGPoint!
    var stroke_width: CGFloat = 5
    var shapes: [Shapes] = []
    
    func undo() {
        if !shapes.isEmpty {
            shapes.removeLast()
        }
        setNeedsDisplay()
    }
    
    override func draw(_ rect: CGRect) {
        for shape in shapes {
            shape.drawPath()
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            point1 = touch.location(in: self)
        }
    }
    


    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            point2 = touch.location(in: self)
        }
        
        if type == 0 {
            shapes.append(Circle(radius: abs(point2.x - point1!.x), circle_center: point1!, color: color, stroke_width: stroke_width, isFilled: isFilled!))
        } else if type == 1 {
            shapes.append(Rectangle.init(p1: point1!, p2: point2, color: color, stroke_width: stroke_width, isFilled: isFilled!))
        } else if type == 2 {
            shapes.append(Line.init(p1: point1!, p2: point2, color: color, stroke_width: stroke_width))
        } else if type == 3 {
            shapes.append(Triangle.init(p1: point1!, p2: point2, p3: CGPoint(x: point1!.x, y: point2.y), color: color, stroke_width: stroke_width, isFilled: isFilled!))
        }
        
        setNeedsDisplay()
        
    }
}
