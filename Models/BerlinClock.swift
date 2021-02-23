//
//  BerlinClock.swift
//  BerlinClock
//

import Foundation

class BerlinClock{
    
    func convertToBerlinTime(time: String, separator: String) -> String {

        let array = time.components(separatedBy: ":")
        let hours = Int(array[0]) ?? 0
        let minutes =  Int(array[1]) ?? 0
        let secondes = Int(array[2]) ?? 0
        
        return getSeconds(seconds: secondes)
            + separator
            +  getTopHours(hour: hours)
            + separator
            + getBottomHours(hour: hours)
            + separator
            + getTopMinutes(minutes: minutes)
            + separator
            + getBottomMinutes(minutes: minutes)
    }
    
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
    
    func getTopMinutes(minutes: Int) -> String {
        return getOnOff(lamps: 11, onSigns: getTopNumberOfOnSigns(number: minutes), onSign: "Y").replacingOccurrences(of: "YYY", with: "YYR")
    }
    
    func getBottomMinutes(minutes: Int) -> String {
        return getOnOff(lamps: 4, onSigns: getBottomOfOnSigns(number: minutes), onSign: "Y")
    }
}
