//
//  RingView.swift
//  BerlinClock
//

import Foundation
import UIKit

public class RingView: GraphicView {
 
    public override func draw(_ rect: CGRect) {
        drawRingFittingInsideView()
    }
    
    func drawRingFittingInsideView() -> () {
        let halfSize:CGFloat = min( bounds.size.width/2, bounds.size.height/2)
        let xHalfSize:CGFloat = bounds.size.width/2 
        let yHalfSize:CGFloat = bounds.size.height/2
        
        let desiredLineWidth:CGFloat = 1
            
        let circlePath = UIBezierPath(
            arcCenter: CGPoint(x:xHalfSize,y:yHalfSize),
            radius: CGFloat( halfSize - (desiredLineWidth/2) ),
            startAngle: CGFloat(0),
            endAngle:CGFloat(Double.pi * 2),
            clockwise: true)

        super.setGraphicPath(cgPath: circlePath.cgPath)
       
     }
    
    
}
