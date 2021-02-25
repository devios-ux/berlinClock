//
//  BerlinClockUI.swift
//  BerlinClock
//
//  Created by bob on 24/02/2021.
//

import Foundation
import UIKit


class BerlinBase {
    let associationLetterColor:[Character: UIColor] = ["R": UIColor.red, "Y": UIColor.yellow, "O": UIColor.white]

    var representation: String = ""
    init(representation: String) {
        self.representation = representation
    }
}   


class BerlinHourOuput  : BerlinBase {
    var colors: [UIColor] = [UIColor](repeating: .white, count: 4)
    
    func getColors() -> [UIColor] {
        let characters = Array(self.representation)
        for (index, char) in characters.enumerated() {
            colors[index] = associationLetterColor[char] ?? .white
        }
        return colors
    }
}


class BerlinTopMinuteOuput  : BerlinBase {
    var colors: [UIColor] = [UIColor](repeating: .white, count: 11)

    func getColors() -> [UIColor] {
        let characters = Array(self.representation)
        for (index, char) in characters.enumerated() {
            colors[index] = associationLetterColor[char] ?? .white
        }
        return colors
    }
}

class BerlinBottomMinuteOuput  : BerlinBase {
    var colors: [UIColor] = [UIColor](repeating: .white, count: 4)

    func getColors() -> [UIColor] {
        let characters = Array(self.representation)
        for (index, char) in characters.enumerated() {
            colors[index] = associationLetterColor[char] ?? .white
        }
        return colors
    }
}


class BerlinClockUI : BerlinClock{
    
    func getTopHours(hour: Int) -> BerlinHourOuput {
        let result = super.getTopHours(hour: hour)
        return BerlinHourOuput(representation: result)
    }
    
    func getTopMinutes(minutes: Int) -> BerlinTopMinuteOuput {
        let result = super.getTopMinutes(minutes: minutes)
        return BerlinTopMinuteOuput(representation: result)
    }
    
}
