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
    
    // Top hours should have 4 lamps
    func testTopHoursShouldHave4Lamps(){
        XCTAssertEqual( 4, berlinClock.getTopHours(hour: 7).count);
    }
    
    // Top hours should light a red lamp for every 5 hours
    func testTopHoursShouldLightRedLampForEvery5Hours(){
        XCTAssertEqual("OOOO", berlinClock.getTopHours(hour: 0))
        XCTAssertEqual("RROO", berlinClock.getTopHours(hour: 13))
        XCTAssertEqual("RRRR", berlinClock.getTopHours(hour: 23))
        XCTAssertEqual("RRRR", berlinClock.getTopHours(hour: 24))
    }
    
    // Botom hours should have 4 lamps
    func testBottomHoursShouldHave4Lamps(){
        XCTAssertEqual( 4, berlinClock.getBottomHours(hour: 5).count);
    }
    
    // Bottom hours should light a red lamp for every hour left from top hours
    func testBottomHoursShouldLightRedLampForEveryHourLeftFromTopHours(){
        XCTAssertEqual("OOOO", berlinClock.getBottomHours(hour: 0))
        XCTAssertEqual("RRRO", berlinClock.getBottomHours(hour: 13))
        XCTAssertEqual("RRRO", berlinClock.getBottomHours(hour: 23))
        XCTAssertEqual("RRRR", berlinClock.getBottomHours(hour: 24))
    }
    
    
    
}
