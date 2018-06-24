//
//  Game.swift
//  FizzBuzz
//
//  Created by Matt Deuschle on 6/17/18.
//  Copyright © 2018 Matt Deuschle. All rights reserved.
//

import Foundation

class Game {

    let brain = Brain()

    var score: Int

    init() {
        score = 0
    }

    func play(move: String) -> (right: Bool, score: Int) {
        let result = brain.check(score + 1)
        if move == result {
            score += 1
            return (true, score)
        } else {
            return (false, score)
        }
    }
}
