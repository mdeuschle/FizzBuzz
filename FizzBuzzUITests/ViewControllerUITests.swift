//
//  ViewControllerUITests.swift
//  FizzBuzzUITests
//
//  Created by Matt Deuschle on 6/24/18.
//  Copyright © 2018 Matt Deuschle. All rights reserved.
//

import XCTest

class ViewControllerUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        XCUIApplication().launch()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testButtonScore1() {
        let scoreButton = XCUIApplication().buttons["scoreButton"]
        scoreButton.tap()
        let newScore = scoreButton.label
        XCTAssertEqual(newScore, "1")
    }

    func testButtonScore2() {
        let scoreButton = XCUIApplication().buttons["scoreButton"]
        scoreButton.tap()
        scoreButton.tap()
        let newScore = scoreButton.label
        XCTAssertEqual(newScore, "2")
    }
    
}
