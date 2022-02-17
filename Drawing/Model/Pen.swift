//
//  Pen.swift
//  Drawing
//
//  Created by Nurlybek Saktagan on 20.10.2021.
//

import Foundation
import UIKit

class Pen: Shapes {
    private var p: CGPoint
    private var color: UIColor
    private var stroke_width: CGFloat
    private var lines = [[CGPoint]]()
    
    init(p: CGPoint, color: UIColor, stroke_width: CGFloat) {
        self.p = p
        self.color = color
        self.stroke_width = stroke_width
    }
    
    func drawPath() {
        let path = UIBezierPath()
        path.lineWidth = stroke_width
        color.set()
        
        lines.forEach { (line) in
            for (i, p) in line.enumerated() {
                if i == 0 {
                    path.move(to: p)
                } else {
                    path.addLine(to: p)
                }
            }
        }
        
        path.stroke()
    }
}
