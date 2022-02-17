//
//  Line.swift
//  Drawing
//
//  Created by Nurlybek Saktagan on 20.10.2021.
//

import Foundation
import UIKit

class Line: Shapes {
    private var p1: CGPoint
    private var p2: CGPoint
    private var color: UIColor
    private var stroke_width: CGFloat
    
    init(p1: CGPoint, p2: CGPoint, color: UIColor, stroke_width: CGFloat) {
        self.p1 = p1
        self.p2 = p2
        self.color = color
        self.stroke_width = stroke_width
    }
    
    func drawPath() {
        let path = UIBezierPath()
        path.move(to: p1)
        path.addLine(to: p2)
        path.close()
        color.set()
        path.lineWidth = stroke_width
        path.stroke()
    }
}
