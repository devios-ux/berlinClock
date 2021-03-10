//
//  File.swift
//  BerlinClock
//
//  Created by bob on 08/03/2021.
//

import Foundation
import UIKit

public class GraphicView  : UIView{
    
    let shapeLayer = CAShapeLayer()
    let desiredLineWidth:CGFloat = 1
    var fillColor = UIColor.white.cgColor


    override init(frame: CGRect) {
        super.init(frame: frame)
        initLayer()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initLayer()
    }
    
    public override func draw(_ rect: CGRect) {
        
    }

    public func setGraphicPath(cgPath : CGPath){
        shapeLayer.path = cgPath
        shapeLayer.fillColor = self.fillColor
    }
    
    func setFillColor(color: UIColor){
        shapeLayer.fillColor = color.cgColor
    }
    
    func initLayer(){
        
        shapeLayer.strokeColor = UIColor.black.cgColor
        shapeLayer.fillColor = fillColor
        shapeLayer.lineWidth = desiredLineWidth
        
        self.layer.borderColor = UIColor.black.cgColor
        self.layer.borderWidth = 1
        self.layer.addSublayer(shapeLayer)
    }
    
    
}
