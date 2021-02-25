//
//  RingView.swift
//  BerlinClock
//

import Foundation
import UIKit
class RectangleView: UIView {
    
    var fillColor = UIColor.yellow.cgColor
    
    override func draw(_ rect: CGRect) {
        drawRingFittingInsideView(rect: rect)
    }
    
    internal func drawRingFittingInsideView(rect: CGRect) -> () {
        let halfSize:CGFloat = min( bounds.size.width/2, bounds.size.height/2)
        let desiredLineWidth:CGFloat = 1 // your desired value
    
       
        let rectPath = UIBezierPath(roundedRect: rect, cornerRadius: 2)
        
        
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = rectPath.cgPath
            
        shapeLayer.fillColor = self.fillColor
        shapeLayer.strokeColor = UIColor.brown.cgColor
        shapeLayer.lineWidth = desiredLineWidth
    
         layer.addSublayer(shapeLayer)
     }
    
    func setFillColor(color: UIColor){
        self.fillColor = color.cgColor
    }
}
