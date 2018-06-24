//
//  ViewControllerTests.swift
//  FizzBuzzTests
//
//  Created by Matt Deuschle on 6/22/18.
//  Copyright © 2018 Matt Deuschle. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class ViewControllerTests: XCTestCase {

    var viewController: ViewController!

    override func setUp() {
        super.setUp()
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        viewController = storyBoard.instantiateViewController(withIdentifier: "viewController") as? ViewController
        _ = viewController.view
    }

    func testMove1IncrementScore() {
        viewController.play(move: "1")
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 1)
    }

    func testMove2IncrementScore() {
        viewController.play(move: "1")
        viewController.play(move: "2")
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 2)
    }

    func testFizzIncrementScore() {
        viewController.game?.score = 2
        viewController.play(move: "Fizz")
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 3)
    }

    func testBuzzIncrementScore() {
        viewController.game?.score = 4
        viewController.play(move: "Buzz")
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 5)
    }

    func testFizzBuzzIncrementScore() {
        viewController.game?.score = 14
        viewController.play(move: "FizzBuzz")
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 15)
    }

    func testIncorrectMove() {
        viewController.game?.score = 14
        viewController.play(move: "15")
        let newScore = viewController.gameScore
        XCTAssertNotEqual(newScore, 15)
    }

    func testHasGame() {
        XCTAssertNotNil(viewController.game)
    }
    

    
}