//
//  GameTests.swift
//  FizzBuzzTests
//
//  Created by Matt Deuschle on 6/17/18.
//  Copyright © 2018 Matt Deuschle. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class GameTests: XCTestCase {

    let game = Game()

    func testGameStartsAtZero() {
        XCTAssertTrue(game.score == 0)
    }

    func testGameScoreIncremented() {
        let _ = game.play(move: "1")
        XCTAssertTrue(game.score == 1)
    }

    func testOnPlayScoreTwiceIncremented() {
        game.score = 1
        let _ = game.play(move: "2")
        XCTAssertTrue(game.score == 2)
    }

    func testIfFizzMoveIsRight() {
        game.score = 2
        let result = game.play(move: "Fizz")
        XCTAssertTrue(result.right)
    }

    func testIfFizzMoveIsWrong() {
        game.score = 1
        let result = game.play(move: "Fizz")
        XCTAssertFalse(result.right)
    }

    func testIfBuzzMoveIsRight() {
        game.score = 4
        let result = game.play(move: "Buzz")
        XCTAssertTrue(result.right)
    }

    func testIfBuzzMoveIsWrong() {
        game.score = 5
        let result = game.play(move: "Buzz")
        XCTAssertFalse(result.right)
    }

    func testIfFizzBuzzMoveIsRight() {
        game.score = 14
        let result = game.play(move: "FizzBuzz")
        XCTAssertTrue(result.right)
    }

    func testIfFizzBuzzMoveIsWrong() {
        game.score = 15
        let result = game.play(move: "FizzBuzz")
        XCTAssertFalse(result.right)
    }

    func testIfNumberMoveIsRight() {
        game.score = 13
        let result = game.play(move: "14")
        XCTAssertTrue(result.right)
    }

    func testIfNumberMoveIsWrong() {
        game.score = 14
        let result = game.play(move: "15")
        XCTAssertFalse(result.right)
    }

    func testPlayShouldReturnIfMoveRight() {
        let result = game.play(move: "1")
        XCTAssertNotNil(result.right)
    }

    func testPlayShouldReturnNewScore() {
        let result = game.play(move: "1")
        XCTAssertNotNil(result.score)
    }
}


