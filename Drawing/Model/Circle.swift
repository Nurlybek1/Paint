//
//  Circle.swift
//  Drawing
//
//  Created by Nurlybek Saktagan on 19.10.2021.
//

import Foundation
import UIKit

class Circle: Shapes {
    private var radius: CGFloat
    private var circle_center: CGPoint
    private var color: UIColor
    private var stroke_width: CGFloat
    private var isFilled: Bool
    
    init(radius: CGFloat, circle_center: CGPoint, color: UIColor, stroke_width: CGFloat, isFilled: Bool) {
        self.radius = radius
        self.circle_center = circle_center
        self.color = color
        self.stroke_width = stroke_width
        self.isFilled = isFilled
    }
    
    func drawPath() {
        let path = UIBezierPath(
            arcCenter: circle_center,
            radius: radius,
            startAngle: 0,
            endAngle: 2*Double.pi.cg,
            clockwise: true)
        path.lineWidth = stroke_width
        color.set()
        (isFilled) ? path.fill() : path.stroke()
    }
}

extension Double {
    var cg: CGFloat {
        return CGFloat(self)
    }
}
