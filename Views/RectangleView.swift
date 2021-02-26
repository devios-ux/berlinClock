//
//  RingView.swift
//  BerlinClock
//

import Foundation
import UIKit
public class RectangleView: UIView {
    
    var fillColor = UIColor.yellow.cgColor
    
    public override func draw(_ rect: CGRect) {
        drawRingFittingInsideView(rect: rect)
    }
    
    internal func drawRingFittingInsideView(rect: CGRect) -> () {
        let desiredLineWidth:CGFloat = 1 // your desired value
        let rectPath = UIBezierPath(roundedRect: rect, cornerRadius: 2)
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = rectPath.cgPath
            
        shapeLayer.fillColor = self.fillColor
        shapeLayer.strokeColor = UIColor.brown.cgColor
        shapeLayer.lineWidth = desiredLineWidth
        
        if layer.sublayers == nil || layer.sublayers?.count == 0{
            layer.addSublayer(shapeLayer)
        }
        else{
            layer.sublayers?[0] = shapeLayer
        }
        
     }
    
    func setFillColor(color: UIColor){
        self.fillColor = color.cgColor
    }
}
