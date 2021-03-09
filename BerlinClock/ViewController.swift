//
//  ViewController.swift
//  BerlinClock
//

import UIKit

class ViewController: UIViewController, BerlinClockDelegate {
    func berlinClockDidChanged(_ clock: String) {
        
        print("trace: \(clock)")
    }
    

    var berlinClockView: BerlinClockView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.berlinClockView = BerlinClockView()
        
        //self.berlinClockView.delegate = self
        
        //self.view.addSubview(self.berlinClockView)
        //, anchors: [.leading(10), .trailing(10), .bottom(10), .top(50)])
        
      
    }
    
    
}




