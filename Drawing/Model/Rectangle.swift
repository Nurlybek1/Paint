//
//  Rectangle.swift
//  Drawing
//
//  Created by Nurlybek Saktagan on 20.10.2021.
//

import Foundation
import UIKit

class Rectangle: Shapes {
    private var p1: CGPoint
    private var p2: CGPoint
    private var color: UIColor
    private var stroke_width: CGFloat
    private var isFilled: Bool
    
    init(p1: CGPoint, p2: CGPoint, color: UIColor, stroke_width: CGFloat, isFilled: Bool) {
        self.p1 = p1
        self.p2 = p2
        self.color = color
        self.stroke_width = stroke_width
        self.isFilled = isFilled
    }
    
    func drawPath() {
        let rect = CGRect(origin: p1, size: CGSize(width: abs(p2.x - p1.x), height: abs(p2.y - p1.y)))
        let path = UIBezierPath(rect: rect)
        path.lineWidth = stroke_width
        color.set()
        (isFilled) ? path.fill() : path.stroke()
    }
}
