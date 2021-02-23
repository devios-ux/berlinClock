//
//  BerlinClock.swift
//  BerlinClock
//

import Foundation

class BerlinClock{
    
    func getSeconds(seconds: Int) -> String {
        return seconds % 2 == 0 ? "Y" : "O"
    }
    
    func getTopHours(hour: Int) -> String {
        return getOnOff(lamps: 4, onSigns: getTopNumberOfOnSigns(number: hour), onSign: "R")
    }
    
    func getBottomHours(hour: Int) -> String {
        return getOnOff(lamps: 4, onSigns: getBottomOfOnSigns(number: hour), onSign: "R")
    }
    
    func getOnOff(lamps: Int, onSigns: Int, onSign: String) -> String {
        
        var temp = ""
        for _ in 0..<onSigns {
            temp.append(onSign)
        }
        
        let rest = lamps - onSigns
        for _ in 0..<rest {
            temp.append("O")
        }
        return temp
    }
    
    func getTopNumberOfOnSigns(number: Int) -> Int {
        return number / 5
    }
    
    func getBottomOfOnSigns(number: Int) -> Int {
        return number % 5
    }
}
