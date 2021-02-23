//
//  BerlinClockTests.swift
//  BerlinClockTests
//
//

import XCTest
@testable import BerlinClock

class BerlinClockTests: XCTestCase {

    var berlinClock = BerlinClock()

    // Yellow lamp should blink on/off every two seconds
    func testYellowLampShouldBlinkOnOffEveryTwoSeconds() throws {
        XCTAssertEqual("Y", berlinClock.getSeconds(seconds: 0))
        XCTAssertEqual("O", berlinClock.getSeconds(seconds: 1))
        XCTAssertEqual("O", berlinClock.getSeconds(seconds: 59))
        XCTAssertEqual("Y", berlinClock.getSeconds(seconds: 58))
    }
    
    
    
}
