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
    
    // Top minutes should have 11 lamps
    func testTopMinutesShouldHave11Lamps(){
        XCTAssertEqual(11, berlinClock.getTopMinutes(minutes: 34).count)
    }
    
    // Top minutes should have 3rd, 6th, 9th lamps in red to indicatefirst quarter, half and last quarter
    func testTopMinutesShouldHave3rd6thAnd9thLampsInRedToIndicateFirstQuarterHalfAndLastQuarter(){
        let minutes = berlinClock.getTopMinutes(minutes: 32)
        XCTAssertEqual("R", minutes[String.Index(utf16Offset: 2, in: minutes)])
        XCTAssertEqual("R", minutes[String.Index(utf16Offset: 5, in: minutes)])
        XCTAssertEqual("O", minutes[String.Index(utf16Offset: 8, in: minutes)])
    }
 
    // Top minutes should light a yellow lamp for every 5 minutes unless it's first quarter, half or last quarter
    func testTopMinutesShouldLightYellowLampForEvery5MinutesUnlessItIsFirstQuarterHalfOrLastQuarter() {
        XCTAssertEqual("OOOOOOOOOOO", berlinClock.getTopMinutes(minutes: 0))
        XCTAssertEqual("YYROOOOOOOO", berlinClock.getTopMinutes(minutes: 17))
        XCTAssertEqual("YYRYYRYYRYY", berlinClock.getTopMinutes(minutes: 59))
        
    }
}
