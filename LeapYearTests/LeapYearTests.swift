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

    func test_isLeapYear_divisibleBy400() {
        XCTAssertTrue(leapYear.isLeapYear(year: 2000))
    }

    func test_isLeapYear_shouldReturnFalse_forYearsNotDivisibleBy400ButDivisibleBy100() {
        XCTAssertFalse(leapYear.isLeapYear(year: 1800))
    }

    func test_isLeapYear_isDivisibleBy4ButNotDivisibleBy100() {
        XCTAssertTrue(leapYear.isLeapYear(year: 2008))
    }

    func test_isLeapYear_shouldReturnFalse_forYearsNotDivisibleBy4() {
        XCTAssertFalse(leapYear.isLeapYear(year: 2019))
    }
}
