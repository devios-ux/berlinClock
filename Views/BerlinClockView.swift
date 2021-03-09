//
//  BerlinClockView.swift
//  BerlinClock
//
//

import Foundation
import UIKit

protocol BerlinClockDelegate : AnyObject {
    func berlinClockDidChanged(_ berlinClockString: String)
}

public class BerlinClockView : UIView {
    

    var circle: RingView!
    var rect11: RectangleView!
    var rect12: RectangleView!
    var rect13: RectangleView!
    var rect14: RectangleView!
    
    var rect21: RectangleView!
    var rect22: RectangleView!
    var rect23: RectangleView!
    var rect24: RectangleView!
   
    var rect31: RectangleView!
    var rect32: RectangleView!
    var rect33: RectangleView!
    var rect34: RectangleView!
    var rect35: RectangleView!
    var rect36: RectangleView!
    var rect37: RectangleView!
    var rect38: RectangleView!
    var rect39: RectangleView!
    var rect310: RectangleView!
    var rect311: RectangleView!
  
    
    var rect41: RectangleView!
    var rect42: RectangleView!
    var rect43: RectangleView!
    var rect44: RectangleView!
    
    var delegate: BerlinClockDelegate?

    override init(frame: CGRect) {
        super.init(frame: frame)
        //createSubViewAutoLayout()
        createSubviews()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        //createSubViewAutoLayout()
        createSubviews()
    }
    
    convenience init(){
        let screenSize: CGRect = UIScreen.main.bounds
        // get screen width.
        let screenWidth =  screenSize.width
        // get screen height.
        let screenHeight = screenSize.height
         
        // the rectangle top left point x axis position.
        let xPos = 10
         
        // the rectangle top left point y axis position.
        let yPos = 50

        // the rectangle width.
        let rectWidth = Int(screenWidth) - 2 * xPos
        // the rectangle height.
        let rectHeight = Int(screenHeight) - 2 * yPos

        self.init(frame: CGRect(x: xPos, y: yPos, width: rectWidth, height: rectHeight))
        
    }
    
    /*
    func createSubViewAutoLayout(){
        
        var rect111 = UIView()
        rect111.backgroundColor = UIColor.red
        rect111.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(rect111)

        rect111.topAnchor.constraint(equalTo: self.topAnchor,
                                   constant: 20).isActive = true
        rect111.leadingAnchor.constraint(equalTo: self.leadingAnchor,
                                       constant: 20).isActive = true
        
        rect111.widthAnchor.constraint(equalTo: self.widthAnchor,
                                     multiplier: 0.25, constant: -30).isActive = true
        rect111.heightAnchor.constraint(equalTo: self.heightAnchor,
                                      multiplier: 0.20, constant: -30).isActive = true
        
        var rect112 = UIView() //RectangleView()
        rect112.backgroundColor = UIColor.blue
        rect112.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(rect112)
        
        rect112.centerYAnchor.constraint(equalTo: rect111.centerYAnchor).isActive = true
        rect112.leadingAnchor.constraint(equalTo: rect111.trailingAnchor,
                                       constant: 20).isActive = true
        rect112.widthAnchor.constraint(equalTo: self.widthAnchor,
                                       multiplier: 0.25, constant: -30).isActive = true
        rect112.heightAnchor.constraint(equalTo: self.heightAnchor,
                                        multiplier: 0.20, constant: -30).isActive = true
    
        var rect113 = UIView() //RectangleView()
        rect113.backgroundColor = UIColor.blue
        rect113.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(rect113)
        
        rect113.centerYAnchor.constraint(equalTo: rect112.centerYAnchor).isActive = true
        rect113.leadingAnchor.constraint(equalTo: rect112.trailingAnchor,
                                       constant: 20).isActive = true
        rect113.widthAnchor.constraint(equalTo: rect112.widthAnchor).isActive = true
        rect113.heightAnchor.constraint(equalTo: rect112.heightAnchor).isActive = true
        
        var rect114 = UIView() //RectangleView()
        rect114.backgroundColor = UIColor.blue
        rect114.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(rect114)
        
        rect114.centerYAnchor.constraint(equalTo: rect113.centerYAnchor).isActive = true
        rect114.leadingAnchor.constraint(equalTo: rect113.trailingAnchor,
                                       constant: 20).isActive = true
        rect114.widthAnchor.constraint(equalTo: rect113.widthAnchor).isActive = true
        rect114.heightAnchor.constraint(equalTo: rect113.heightAnchor).isActive = true
        
        
        // bottom hour
        var rect211 = UIView()
        rect211.backgroundColor = UIColor.red
        rect211.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(rect211)

        rect211.topAnchor.constraint(equalTo: rect111.bottomAnchor,
                                   constant: 20).isActive = true
        rect211.leadingAnchor.constraint(equalTo: self.leadingAnchor,
                                       constant: 20).isActive = true
        
        rect211.widthAnchor.constraint(equalTo: self.widthAnchor,
                                     multiplier: 0.25, constant: -30).isActive = true
        rect211.heightAnchor.constraint(equalTo: self.heightAnchor,
                                      multiplier: 0.20, constant: -30).isActive = true

        
        var rect212 = UIView() //RectangleView()
        rect212.backgroundColor = UIColor.blue
        rect212.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(rect212)
        
        rect212.centerYAnchor.constraint(equalTo: rect211.centerYAnchor).isActive = true
        //rect212.topAnchor.constraint(equalTo: rect211.topAnchor).isActive = true
        rect212.leadingAnchor.constraint(equalTo: rect211.trailingAnchor,
                                       constant: 20).isActive = true
        rect212.widthAnchor.constraint(equalTo: self.widthAnchor,
                                       multiplier: 0.25, constant: -30).isActive = true
        rect212.heightAnchor.constraint(equalTo: self.heightAnchor,
                                        multiplier: 0.20, constant: -30).isActive = true
    
        var rect213 = UIView() //RectangleView()
        rect213.backgroundColor = UIColor.blue
        rect213.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(rect213)
        
        rect213.centerYAnchor.constraint(equalTo: rect212.centerYAnchor).isActive = true
        rect213.leadingAnchor.constraint(equalTo: rect212.trailingAnchor,
                                       constant: 20).isActive = true
        rect213.widthAnchor.constraint(equalTo: rect212.widthAnchor).isActive = true
        rect213.heightAnchor.constraint(equalTo: rect212.heightAnchor).isActive = true
        
        var rect214 = UIView() //RectangleView()
        rect214.backgroundColor = UIColor.blue
        rect214.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(rect214)
        
        rect214.centerYAnchor.constraint(equalTo: rect213.centerYAnchor).isActive = true
        rect214.leadingAnchor.constraint(equalTo: rect213.trailingAnchor,
                                       constant: 20).isActive = true
        rect214.widthAnchor.constraint(equalTo: rect213.widthAnchor).isActive = true
        rect214.heightAnchor.constraint(equalTo: rect213.heightAnchor).isActive = true
        
        // second part
        
        var rect311 = UIView()
        rect311.backgroundColor = UIColor.red
        rect311.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(rect311)

        rect311.topAnchor.constraint(equalTo: rect211.bottomAnchor,
                                   constant: 20).isActive = true
        rect311.leadingAnchor.constraint(equalTo: self.leadingAnchor,
                                       constant: 20).isActive = true
        
        rect311.widthAnchor.constraint(equalTo: self.widthAnchor,
                                       multiplier: 0.1, constant: -30).isActive = true
        rect311.heightAnchor.constraint(equalTo: self.heightAnchor,
                                      multiplier: 0.20, constant: -30).isActive = true
  
        
        
        
    }
    
    */
    
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

