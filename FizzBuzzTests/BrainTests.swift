//
//  BrainTests.swift
//  FizzBuzzTests
//
//  Created by Matt Deuschle on 6/17/18.
//  Copyright © 2018 Matt Deuschle. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class BrainTests: XCTestCase {

    let brain = Brain()
    
    override func setUp() {
        super.setUp()
    }

    func testIsDivisibleByThree() {
        let result = brain.isDivisibleByThree(3)
        XCTAssertTrue(result)
    }

    func testIsNotDivisibleByThree() {
        let result = brain.isDivisibleByThree(1)
        XCTAssertFalse(result)
    }

    func testIsDivisibleByFive() {
        let result = brain.isDivisibleByFive(5)
        XCTAssertTrue(result)
    }

    func testIsNotDivisibleByFive() {
        let result = brain.isDivisibleByFive(1)
        XCTAssertFalse(result)
    }

    func testIsDivisibleByFifteen() {
        let result = brain.isDivisibleByFifteen(15)
        XCTAssertTrue(result)
    }

    func testIsNotDivisibleByFifteen() {
        let result = brain.isDivisibleByFifteen(1)
        XCTAssertFalse(result)
    }

    func testSayFizz() {
        let result = brain.check(3)
        XCTAssertEqual(result, Move.fizz)
    }

    func testSayBuzz() {
        let result = brain.check(5)
        XCTAssertEqual(result, Move.buzz)
    }

    func testSayFizzBuzz() {
        let result = brain.check(15)
        XCTAssertEqual(result, Move.fizzBuzz)
    }

    func textSayNumber() {
        let result = brain.check(1)
        XCTAssertEqual(result, Move.number)
    }
}










