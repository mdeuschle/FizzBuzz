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
        let _ = game.play(move: .number)
        XCTAssertTrue(game.score == 1)
    }

    func testOnPlayScoreTwiceIncremented() {
        game.score = 1
        let _ = game.play(move: .number)
        XCTAssertTrue(game.score == 2)
    }

    func testIfFizzMoveIsRight() {
        game.score = 2
        let result = game.play(move: .fizz)
        XCTAssertTrue(result.right)
    }

    func testIfFizzMoveIsWrong() {
        game.score = 1
        let result = game.play(move: .fizz)
        XCTAssertFalse(result.right)
    }

    func testIfBuzzMoveIsRight() {
        game.score = 4
        let result = game.play(move: .buzz)
        XCTAssertTrue(result.right)
    }

    func testIfBuzzMoveIsWrong() {
        game.score = 5
        let result = game.play(move: .buzz)
        XCTAssertFalse(result.right)
    }

    func testIfFizzBuzzMoveIsRight() {
        game.score = 14
        let result = game.play(move: .fizzBuzz)
        XCTAssertTrue(result.right)
    }

    func testIfFizzBuzzMoveIsWrong() {
        game.score = 15
        let result = game.play(move: .fizzBuzz)
        XCTAssertFalse(result.right)
    }

    func testIfNumberMoveIsRight() {
        game.score = 13
        let result = game.play(move: .number)
        XCTAssertTrue(result.right)
    }

    func testIfNumberMoveIsWrong() {
        game.score = 14
        let result = game.play(move: .number)
        XCTAssertFalse(result.right)
    }

    func testPlayShouldReturnIfMoveRight() {
        let result = game.play(move: .number)
        XCTAssertNotNil(result.right)
    }

    func testPlayShouldReturnNewScore() {
        let result = game.play(move: .number)
        XCTAssertNotNil(result.score)
    }
}


