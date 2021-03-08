//
//  RingView.swift
//  BerlinClock
//

import Foundation
import UIKit
public class RectangleView: GraphicView {
   
    public override func draw(_ rect: CGRect) {
        drawInsideView(rect: rect)
    }
    
    public func drawInsideView(rect: CGRect) -> () {
        let rectPath = UIBezierPath(roundedRect: rect, cornerRadius: 2)
        super.setGraphicPath(cgPath: rectPath.cgPath)
     }
}
