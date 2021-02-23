//
//  BerlinClock.swift
//  BerlinClock
//

import Foundation

class BerlinClock{
    
    
    func getSeconds(seconds: Int) -> String {
        return seconds % 2 == 0 ? "Y" : "O"
    }
    
    
}
