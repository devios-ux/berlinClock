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
        
        let lamps = 4
        var temp = ""
        let onSigns = hour / 5
        let onSign = "R"    

        for _ in stride(from: 0, to: onSigns, by: 1) {
            temp.append(onSign)
        }
        
        let rest = lamps - onSigns
        for _ in stride(from: 0, to: rest, by: 1) {
            temp.append("O")
        }
        return temp
    }
    
}
