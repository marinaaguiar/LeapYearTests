//
//  LeapYearTests.swift
//  LeapYearTests
//
//  Created by Marina Aguiar on 4/18/23.
//
@testable import LeapYear
import XCTest

final class LeapYearTests: XCTestCase {
    var leapYear: LeapYear!

    override func setUp() {
        super.setUp()
        leapYear = LeapYear()
    }

    override func tearDown() {
        leapYear = nil
        super.tearDown()
    }

    func testCheckLeapYearIsTrue() {
        let result = leapYear.isLeapYear(year: 2000)

        XCTAssertTrue(result)
    }

    func testCheckLeapYearIsFalse() {
        let result = leapYear.isLeapYear(year: 2100)

        XCTAssertFalse(result)
    }

    func testLeapYears() {
        let leapYears = [2000, 2008, 2012, 2016]

        leapYears.forEach { year in
            let result = leapYear.isLeapYear(year: year)

            XCTAssertTrue(result)
        }
    }

    func testNotLeapYears() {
        let leapYears = [1700, 1800, 1900, 2100, 2017, 2018, 2019]

        leapYears.forEach { year in
            let result = leapYear.isLeapYear(year: year)

            XCTAssertFalse(result)
        }
    }
}
