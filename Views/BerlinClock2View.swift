//
//  BerlinClockView.swift
//  BerlinClock
//
//

import Foundation
import UIKit


public class BerlinClock2View : UIView {
    

    var circle: RingView!
    var rect11: GraphicView!
    var rect12: GraphicView!
    var rect13: GraphicView!
    var rect14: GraphicView!
    
    var rect21: GraphicView!
    var rect22: GraphicView!
    var rect23: GraphicView!
    var rect24: GraphicView!
   
    var rect31: GraphicView!
    var rect32: GraphicView!
    var rect33: GraphicView!
    var rect34: GraphicView!
    var rect35: GraphicView!
    var rect36: GraphicView!
    var rect37: GraphicView!
    var rect38: GraphicView!
    var rect39: GraphicView!
    var rect310: GraphicView!
    var rect311: GraphicView!
  
    
    var rect41: GraphicView!
    var rect42: GraphicView!
    var rect43: GraphicView!
    var rect44: GraphicView!
    
    var delegate: BerlinClockDelegate?

    override init(frame: CGRect) {
        super.init(frame: frame)
        createSubViewAutoLayout()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        createSubViewAutoLayout()
    }
    
    func createSubViewAutoLayout(){
        
        var circle = RingView()
        circle.backgroundColor = UIColor.red
        circle.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(circle)
        
        circle.topAnchor.constraint(equalTo: self.topAnchor, constant: 20).isActive = true
        circle.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        circle.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.25, constant: -30).isActive = true
        circle.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.20, constant: -30).isActive = true
        
        
        rect11 = GraphicView()
        rect11.backgroundColor = UIColor.red
        rect11.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(rect11)

        rect11.topAnchor.constraint(equalTo: circle.bottomAnchor,
                                   constant: 20).isActive = true
        rect11.leadingAnchor.constraint(equalTo: self.leadingAnchor,
                                       constant: 20).isActive = true
        
        rect11.widthAnchor.constraint(equalTo: self.widthAnchor,
                                     multiplier: 0.25, constant: -30).isActive = true
        rect11.heightAnchor.constraint(equalTo: self.heightAnchor,
                                      multiplier: 0.20, constant: -30).isActive = true
        
        rect12 = GraphicView() //RectangleView()
        rect12.backgroundColor = UIColor.blue
        rect12.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(rect12)
        
        rect12.centerYAnchor.constraint(equalTo: rect11.centerYAnchor).isActive = true
        rect12.leadingAnchor.constraint(equalTo: rect11.trailingAnchor,
                                       constant: 20).isActive = true
        rect12.widthAnchor.constraint(equalTo: self.widthAnchor,
                                       multiplier: 0.25, constant: -30).isActive = true
        rect12.heightAnchor.constraint(equalTo: self.heightAnchor,
                                        multiplier: 0.20, constant: -30).isActive = true
    
        rect13 = GraphicView() //RectangleView()
        rect13.backgroundColor = UIColor.blue
        rect13.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(rect13)
        
        rect13.centerYAnchor.constraint(equalTo: rect12.centerYAnchor).isActive = true
        //rect113.leadingAnchor.constraint(equalTo: rect112.trailingAnchor,constant: 20).isActive = true
        
        rect13.widthAnchor.constraint(equalTo: rect12.widthAnchor).isActive = true
        rect13.heightAnchor.constraint(equalTo: rect12.heightAnchor).isActive = true
        
        rect14 = GraphicView() //RectangleView()
        rect14.backgroundColor = UIColor.blue
        rect14.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(rect14)
        
        rect14.centerYAnchor.constraint(equalTo: rect13.centerYAnchor).isActive = true
        rect14.leadingAnchor.constraint(equalTo: rect13.trailingAnchor,
                                       constant: 20).isActive = true
        rect14.widthAnchor.constraint(equalTo: rect13.widthAnchor).isActive = true
        
        rect14.heightAnchor.constraint(equalTo: rect13.heightAnchor).isActive = true
        rect14.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20).isActive = true
        
        rect13.trailingAnchor.constraint(equalTo: rect14.leadingAnchor, constant: -20)
        
        // bottom hour
        rect21 = GraphicView()
        rect21.backgroundColor = UIColor.red
        rect21.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(rect21)

        rect21.topAnchor.constraint(equalTo: rect11.bottomAnchor,
                                   constant: 20).isActive = true
        rect21.leadingAnchor.constraint(equalTo: self.leadingAnchor,
                                       constant: 20).isActive = true
        
        rect21.widthAnchor.constraint(equalTo: self.widthAnchor,
                                     multiplier: 0.25, constant: -30).isActive = true
        rect21.heightAnchor.constraint(equalTo: self.heightAnchor,
                                      multiplier: 0.20, constant: -30).isActive = true

        
        rect22 = GraphicView() //RectangleView()
        rect22.backgroundColor = UIColor.blue
        rect22.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(rect22)
        
        rect22.centerYAnchor.constraint(equalTo: rect21.centerYAnchor).isActive = true
        //rect212.topAnchor.constraint(equalTo: rect211.topAnchor).isActive = true
        rect22.leadingAnchor.constraint(equalTo: rect21.trailingAnchor,
                                       constant: 20).isActive = true
        rect22.widthAnchor.constraint(equalTo: self.widthAnchor,
                                       multiplier: 0.25, constant: -30).isActive = true
        rect22.heightAnchor.constraint(equalTo: self.heightAnchor,
                                        multiplier: 0.20, constant: -30).isActive = true
    
        rect23 = GraphicView() //RectangleView()
        rect23.backgroundColor = UIColor.blue
        rect23.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(rect23)
        
        rect23.centerYAnchor.constraint(equalTo: rect22.centerYAnchor).isActive = true
        rect23.leadingAnchor.constraint(equalTo: rect22.trailingAnchor,
                                       constant: 20).isActive = true
        rect23.widthAnchor.constraint(equalTo: rect22.widthAnchor).isActive = true
        rect23.heightAnchor.constraint(equalTo: rect22.heightAnchor).isActive = true
        
        rect24 = GraphicView() //RectangleView()
        rect24.backgroundColor = UIColor.blue
        rect24.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(rect24)
        
        rect24.centerYAnchor.constraint(equalTo: rect23.centerYAnchor).isActive = true
        rect24.leadingAnchor.constraint(equalTo: rect23.trailingAnchor,constant: 20).isActive = true
        rect24.widthAnchor.constraint(equalTo: rect23.widthAnchor).isActive = true
        rect24.heightAnchor.constraint(equalTo: rect23.heightAnchor).isActive = true
        rect24.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20).isActive = true
        
        rect23.trailingAnchor.constraint(equalTo: rect24.leadingAnchor, constant: -20).isActive = true
        
        // second part
        let constantWith = CGFloat(-20/*-30*/)
        let multiplier11 = CGFloat(0.1)//(0.1)
        let leadingspace = CGFloat( 10 /*20*/)
        let trailingspace = CGFloat(-10)
        let trailingspaceParent = CGFloat(-20)
        
        rect311 = GraphicView()
        rect311.backgroundColor = UIColor.red
        rect311.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(rect311)

        rect311.topAnchor.constraint(equalTo: rect21.bottomAnchor,
                                   constant: 20).isActive = true
        rect311.leadingAnchor.constraint(equalTo: self.leadingAnchor,
                                       constant: 20).isActive = true
        
        
        rect311.widthAnchor.constraint(equalTo: self.widthAnchor,
                                       multiplier: multiplier11, constant: constantWith).isActive = true
        rect311.heightAnchor.constraint(equalTo: self.heightAnchor,
                                      multiplier: 0.20, constant: -30).isActive = true
  
        rect32 = GraphicView() //RectangleView()
        rect32.backgroundColor = UIColor.blue
        rect32.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(rect32)
        
        rect32.centerYAnchor.constraint(equalTo: rect311.centerYAnchor).isActive = true
        rect32.leadingAnchor.constraint(equalTo: rect311.trailingAnchor,
                                       constant: leadingspace).isActive = true
        rect32.widthAnchor.constraint(equalTo: self.widthAnchor,
                                       multiplier: multiplier11, constant: constantWith).isActive = true
        rect32.heightAnchor.constraint(equalTo: self.heightAnchor,
                                        multiplier: 0.20, constant: -30).isActive = true
        
        rect33 = GraphicView() //RectangleView()
        rect33.backgroundColor = UIColor.blue
        rect33.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(rect33)
        
        rect33.centerYAnchor.constraint(equalTo: rect32.centerYAnchor).isActive = true
        //rect212.topAnchor.constraint(equalTo: rect211.topAnchor).isActive = true
        rect33.leadingAnchor.constraint(equalTo: rect32.trailingAnchor,
                                       constant: leadingspace).isActive = true
        rect33.widthAnchor.constraint(equalTo: self.widthAnchor,
                                       multiplier: multiplier11, constant: constantWith).isActive = true
        rect33.heightAnchor.constraint(equalTo: self.heightAnchor,
                                        multiplier: 0.20, constant: -30).isActive = true
        
        
        rect34 = GraphicView() //RectangleView()
        rect34.backgroundColor = UIColor.blue
        rect34.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(rect34)
        
        rect34.centerYAnchor.constraint(equalTo: rect33.centerYAnchor).isActive = true
        rect34.leadingAnchor.constraint(equalTo: rect33.trailingAnchor,
                                       constant: leadingspace).isActive = true
        rect34.widthAnchor.constraint(equalTo: self.widthAnchor,
                                       multiplier: multiplier11, constant: constantWith).isActive = true
        rect34.heightAnchor.constraint(equalTo: self.heightAnchor,
                                        multiplier: 0.20, constant: -30).isActive = true
        
        
        rect35 = GraphicView() //RectangleView()
        rect35.backgroundColor = UIColor.blue
        rect35.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(rect35)
        
        rect35.centerYAnchor.constraint(equalTo: rect34.centerYAnchor).isActive = true
        rect35.leadingAnchor.constraint(equalTo: rect34.trailingAnchor,
                                       constant: leadingspace).isActive = true
        rect35.widthAnchor.constraint(equalTo: self.widthAnchor,
                                       multiplier: multiplier11, constant: constantWith).isActive = true
        rect35.heightAnchor.constraint(equalTo: self.heightAnchor,
                                        multiplier: 0.20, constant: -30).isActive = true
        
        
        
        rect36 = GraphicView() //RectangleView()
        rect36.backgroundColor = UIColor.blue
        rect36.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(rect36)
        
        rect36.centerYAnchor.constraint(equalTo: rect35.centerYAnchor).isActive = true
        rect36.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        
        //rect316.leadingAnchor.constraint(equalTo: rect35.trailingAnchor,constant: 20).isActive = true
        rect36.widthAnchor.constraint(equalTo: self.widthAnchor,multiplier: multiplier11, constant: constantWith).isActive = true
        rect36.heightAnchor.constraint(equalTo: self.heightAnchor,multiplier: 0.20, constant: -30).isActive = true
        
        
        rect37 = GraphicView() //RectangleView()
        rect37.backgroundColor = UIColor.blue
        rect37.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(rect37)
        
        rect37.centerYAnchor.constraint(equalTo: rect36.centerYAnchor).isActive = true
        //rect37.leadingAnchor.constraint(equalTo: rect316.trailingAnchor,constant: 20).isActive = true
        rect37.widthAnchor.constraint(equalTo: self.widthAnchor,
                                       multiplier: multiplier11, constant: constantWith).isActive = true
        rect37.heightAnchor.constraint(equalTo: self.heightAnchor,
                                        multiplier: 0.20, constant: -30).isActive = true
        
        
        rect38 = GraphicView() //RectangleView()
        rect38.backgroundColor = UIColor.blue
        rect38.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(rect38)
        
        rect38.centerYAnchor.constraint(equalTo: rect37.centerYAnchor).isActive = true
        //rect38.leadingAnchor.constraint(equalTo: rect37.trailingAnchor,constant: 20).isActive = true
        rect38.widthAnchor.constraint(equalTo: self.widthAnchor,
                                       multiplier: multiplier11, constant: constantWith).isActive = true
        rect38.heightAnchor.constraint(equalTo: self.heightAnchor,
                                        multiplier: 0.20, constant: -30).isActive = true
        rect37.trailingAnchor.constraint(equalTo: rect38.leadingAnchor, constant: trailingspace).isActive = true
       
        
        rect39 = GraphicView() //RectangleView()
        rect39.backgroundColor = UIColor.blue
        rect39.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(rect39)
        
        rect39.centerYAnchor.constraint(equalTo: rect38.centerYAnchor).isActive = true
        //rect39.leadingAnchor.constraint(equalTo: rect38.trailingAnchor,constant: 20).isActive = true
        rect39.widthAnchor.constraint(equalTo: self.widthAnchor,multiplier: multiplier11, constant: constantWith).isActive = true
        rect39.heightAnchor.constraint(equalTo: self.heightAnchor,multiplier: 0.20, constant: -30).isActive = true
        rect38.trailingAnchor.constraint(equalTo: rect39.leadingAnchor, constant: trailingspace).isActive = true

        
        rect310 = GraphicView() //RectangleView()
        rect310.backgroundColor = UIColor.blue
        rect310.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(rect310)
        
        rect310.centerYAnchor.constraint(equalTo: rect39.centerYAnchor).isActive = true
        //rect310.leadingAnchor.constraint(equalTo: rect39.trailingAnchor,constant: 20).isActive = true
        rect310.widthAnchor.constraint(equalTo: self.widthAnchor,
                                       multiplier: multiplier11, constant: constantWith).isActive = true
        rect310.heightAnchor.constraint(equalTo: self.heightAnchor,
                                        multiplier: 0.20, constant: -30).isActive = true
        
        rect39.trailingAnchor.constraint(equalTo: rect310.leadingAnchor, constant: trailingspace).isActive = true
        
        var rect311 = GraphicView() //RectangleView()
        rect311.backgroundColor = UIColor.blue
        rect311.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(rect311)
        
        rect311.centerYAnchor.constraint(equalTo: rect310.centerYAnchor).isActive = true
        //rect12.topAnchor.constraint(equalTo: rect211.topAnchor).isActive = true
        rect311.leadingAnchor.constraint(equalTo: rect310.trailingAnchor,
                                       constant: 20).isActive = true
        rect311.widthAnchor.constraint(equalTo: rect310.widthAnchor).isActive = true
        rect311.heightAnchor.constraint(equalTo: rect310.heightAnchor).isActive = true
        rect311.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: trailingspaceParent).isActive = true
        rect310.trailingAnchor.constraint(equalTo: rect311.leadingAnchor, constant: trailingspace).isActive = true
        
        rect41 = GraphicView()
        rect41.backgroundColor = UIColor.red
        rect41.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(rect41)

        rect41.topAnchor.constraint(equalTo: rect311.bottomAnchor,
                                   constant: 20).isActive = true
        rect41.leadingAnchor.constraint(equalTo: self.leadingAnchor,
                                       constant: 20).isActive = true
        
        rect41.widthAnchor.constraint(equalTo: self.widthAnchor,
                                     multiplier: 0.25, constant: -30).isActive = true
        rect41.heightAnchor.constraint(equalTo: self.heightAnchor,
                                      multiplier: 0.20, constant: -30).isActive = true

        
        rect42 = GraphicView() //RectangleView()
        rect42.backgroundColor = UIColor.blue
        rect42.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(rect42)
        
        rect42.centerYAnchor.constraint(equalTo: rect41.centerYAnchor).isActive = true
        //rect212.topAnchor.constraint(equalTo: rect211.topAnchor).isActive = true
        rect42.leadingAnchor.constraint(equalTo: rect41.trailingAnchor,
                                       constant: 20).isActive = true
        rect42.widthAnchor.constraint(equalTo: self.widthAnchor,
                                       multiplier: 0.25, constant: -30).isActive = true
        rect42.heightAnchor.constraint(equalTo: self.heightAnchor,
                                        multiplier: 0.20, constant: -30).isActive = true
    
        rect43 = GraphicView() //RectangleView()
        rect43.backgroundColor = UIColor.blue
        rect43.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(rect43)
        
        rect43.centerYAnchor.constraint(equalTo: rect42.centerYAnchor).isActive = true
        rect43.leadingAnchor.constraint(equalTo: rect42.trailingAnchor,
                                       constant: 20).isActive = true
        rect43.widthAnchor.constraint(equalTo: rect42.widthAnchor).isActive = true
        rect43.heightAnchor.constraint(equalTo: rect42.heightAnchor).isActive = true
        
        rect44 = GraphicView() //RectangleView()
        rect44.backgroundColor = UIColor.blue
        rect44.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(rect44)
        
        rect44.centerYAnchor.constraint(equalTo: rect43.centerYAnchor).isActive = true
        rect44.leadingAnchor.constraint(equalTo: rect43.trailingAnchor,
                                       constant: 20).isActive = true
        rect44.widthAnchor.constraint(equalTo: rect43.widthAnchor).isActive = true
        rect44.heightAnchor.constraint(equalTo: rect43.heightAnchor).isActive = true
        
        rect44.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20).isActive = true
        rect43.trailingAnchor.constraint(equalTo: rect44.leadingAnchor, constant: -20).isActive = true
        
    }
    
    
    
   func createSubviews() {
    
        let x = 150
        let widthCircle = Int(self.frame.width) - 2 * x
        
        let paddingTop = 10
    
        circle = RingView(frame: CGRect(x: x, y: 0 + paddingTop, width: widthCircle, height: widthCircle))
        
        
        var yRect = paddingTop + Int(self.circle.frame.height) + 10
        
        rect11 = RectangleView(frame: CGRect(x: 0, y:yRect, width: Int(self.frame.width) / 4 , height: 100))
        rect12 = RectangleView(frame: CGRect(x: 1 * Int(rect11.frame.width), y:yRect, width: Int(self.frame.width) / 4, height: 100))
        rect13 = RectangleView(frame: CGRect(x: 2 * Int(rect11.frame.width), y:yRect, width: Int(self.frame.width) / 4, height: 100))
        rect14 = RectangleView(frame: CGRect(x: 3 * Int(rect11.frame.width), y:yRect, width: Int(self.frame.width) / 4, height: 100))
        
        
        yRect = yRect + Int(self.rect11.frame.height) + 10
        
        rect21 = RectangleView(frame: CGRect(x: 0, y: yRect, width: Int(self.frame.width) / 4, height: 100))
        rect22 = RectangleView(frame: CGRect(x: 1 * Int(rect11.frame.width), y: yRect, width: Int(self.frame.width) / 4, height: 100))
        rect23 = RectangleView(frame: CGRect(x: 2 * Int(rect11.frame.width), y: yRect, width: Int(self.frame.width) / 4, height: 100))
        rect24 = RectangleView(frame: CGRect(x: 3 * Int(rect11.frame.width), y: yRect, width: Int(self.frame.width) / 4, height: 100))

        yRect = yRect + Int(rect11.frame.height) + 10
        
        rect31 = RectangleView(frame: CGRect(x: 0, y: yRect, width: Int(self.frame.width) / 11, height: 100))
        rect32 = RectangleView(frame: CGRect(x: 1 * Int(rect31.frame.width), y: yRect, width: Int(self.frame.width) / 11, height: 100))
        rect33 = RectangleView(frame: CGRect(x: 2 * Int(rect31.frame.width), y: yRect, width: Int(self.frame.width) / 11, height: 100))
        rect34 = RectangleView(frame: CGRect(x: 3 * Int(rect31.frame.width), y: yRect, width: Int(self.frame.width) / 11, height: 100))
        rect35 = RectangleView(frame: CGRect(x: 4 * Int(rect31.frame.width), y: yRect, width: Int(self.frame.width) / 11, height: 100))
        rect36 = RectangleView(frame: CGRect(x: 5 * Int(rect31.frame.width), y: yRect, width: Int(self.frame.width) / 11, height: 100))
        rect37 = RectangleView(frame: CGRect(x: 6 * Int(rect31.frame.width), y: yRect, width: Int(self.frame.width) / 11, height: 100))
        rect38 = RectangleView(frame: CGRect(x: 7 * Int(rect31.frame.width), y: yRect, width: Int(self.frame.width) / 11, height: 100))
        rect39 = RectangleView(frame: CGRect(x: 8 * Int(rect31.frame.width), y: yRect, width: Int(self.frame.width) / 11, height: 100))
        rect310 = RectangleView(frame: CGRect(x: 9 * Int(rect31.frame.width), y: yRect, width: Int(self.frame.width) / 11, height: 100))
        rect311 = RectangleView(frame: CGRect(x: 10 * Int(rect31.frame.width), y: yRect, width: Int(self.frame.width) / 11, height: 100))
       
        yRect = yRect + Int(rect11.frame.height) + 10
        
        rect41 = RectangleView(frame: CGRect(x: 0, y: yRect, width: Int(self.frame.width) / 4, height: 100))
        rect42 = RectangleView(frame: CGRect(x: 1 * Int(rect11.frame.width), y: yRect, width: Int(self.frame.width) / 4, height: 100))
        rect43 = RectangleView(frame: CGRect(x: 2 * Int(rect11.frame.width), y: yRect, width: Int(self.frame.width) / 4, height: 100))
        rect44 = RectangleView(frame: CGRect(x: 3 * Int(rect11.frame.width), y: yRect, width: Int(self.frame.width) / 4, height: 100))

        
        self.addSubview(circle)
        self.addSubview(rect11)
        self.addSubview(rect12)
        self.addSubview(rect13)
        self.addSubview(rect14)
        
        self.addSubview(rect21)
        self.addSubview(rect22)
        self.addSubview(rect23)
        self.addSubview(rect24)
        
        self.addSubview(rect31)
        self.addSubview(rect32)
        self.addSubview(rect33)
        self.addSubview(rect34)
        self.addSubview(rect35)
        self.addSubview(rect36)
        self.addSubview(rect37)
        self.addSubview(rect38)
        self.addSubview(rect39)
        self.addSubview(rect310)
        self.addSubview(rect311)

        self.addSubview(rect41)
        self.addSubview(rect42)
        self.addSubview(rect43)
        self.addSubview(rect44)
      
        // Change UIView background colour
        self.backgroundColor=UIColor.lightGray
        self.layer.borderColor = UIColor.red.cgColor
    
    // update control every secondes
    Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
        let hour = Calendar.current.component(.hour, from: Date())
        let minute = Calendar.current.component(.minute, from: Date())
        let second = Calendar.current.component(.second, from: Date())
        
        let berlin = BerlinClock()
                    
        let string = berlin.getSeconds(seconds: second)
        let topHourString = berlin.getTopHours(hour: hour)
        let bottomHourString = berlin.getBottomHours(hour: hour)
        let bottomMinutesString = berlin.getBottomMinutes(minutes: minute)
        let topMinutesString = berlin.getTopMinutes(minutes: minute)
        
        let topHourcolors = BerlinHourOuput(representation: topHourString).getColors()
        let bottomHoursColors = BerlinHourOuput(representation: bottomHourString).getColors()
        let bottomMinutesColors = BerlinBottomMinuteOuput(representation: bottomMinutesString).getColors()
        let topMinutesColors = BerlinTopMinuteOuput(representation: topMinutesString).getColors()
        
        DispatchQueue.main.async {
            
            self.circle.fillColor = string == "Y" ? UIColor.yellow.cgColor : UIColor.red.cgColor
        
            self.circle.setNeedsDisplay()
            
            self.setTopHoursColors(colors: topHourcolors)
            
            self.setBottomHoursColors(colors: bottomHoursColors)
            self.setBottomMinuteColors(colors: bottomMinutesColors)
            self.setTopMinuteColors(colors: topMinutesColors)
            
            let stringRespresentation = "\(topHourString) \(bottomHourString) \(topMinutesString) \(bottomMinutesString)"
            
            self.delegate?.berlinClockDidChanged(stringRespresentation)
            
        }
    }

   }
    
    func setTopHoursColors(colors: [UIColor]){
        rect11.fillColor = colors[0].cgColor
        rect12.fillColor = colors[1].cgColor
        rect13.fillColor = colors[2].cgColor
        rect14.fillColor = colors[3].cgColor
        
        rect11.setNeedsDisplay()
        rect12.setNeedsDisplay()
        rect13.setNeedsDisplay()
        rect14.setNeedsDisplay()
        
    }
    
    func setBottomHoursColors(colors: [UIColor]){
        rect21.fillColor = colors[0].cgColor
        rect22.fillColor = colors[1].cgColor
        rect23.fillColor = colors[2].cgColor
        rect24.fillColor = colors[3].cgColor
        
        rect21.setNeedsDisplay()
        rect22.setNeedsDisplay()
        rect23.setNeedsDisplay()
        rect24.setNeedsDisplay()
        
    }
    
    
    func setBottomMinuteColors(colors: [UIColor]){
        rect41.fillColor = colors[0].cgColor
        rect42.fillColor = colors[1].cgColor
        rect43.fillColor = colors[2].cgColor
        rect44.fillColor = colors[3].cgColor
        
        rect41.setNeedsDisplay()
        rect42.setNeedsDisplay()
        rect43.setNeedsDisplay()
        rect44.setNeedsDisplay()
    }
    
    func setTopMinuteColors(colors: [UIColor]){
        rect31.fillColor = colors[0].cgColor
        rect32.fillColor = colors[1].cgColor
        rect33.fillColor = colors[2].cgColor
        rect34.fillColor = colors[3].cgColor
        rect35.fillColor = colors[4].cgColor
        rect36.fillColor = colors[5].cgColor
        rect37.fillColor = colors[6].cgColor
        rect38.fillColor = colors[7].cgColor
        rect39.fillColor = colors[8].cgColor
        rect310.fillColor = colors[9].cgColor
        rect311.fillColor = colors[10].cgColor
        
        rect31.setNeedsDisplay()
        rect32.setNeedsDisplay()
        rect33.setNeedsDisplay()
        rect34.setNeedsDisplay()
        rect35.setNeedsDisplay()
        rect36.setNeedsDisplay()
        rect37.setNeedsDisplay()
        rect38.setNeedsDisplay()
        rect39.setNeedsDisplay()
        rect310.setNeedsDisplay()
        rect311.setNeedsDisplay()
        
   }
 
}

