//
//  ViewController.swift
//  FizzBuzz
//
//  Created by Matt Deuschle on 6/17/18.
//  Copyright © 2018 Matt Deuschle. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var gameScore: Int?
    var game: Game?

    override func viewDidLoad() {
        super.viewDidLoad()
        game = Game()
    }

    func play(move: String) {
        guard let game = game else { return }
        let response = game.play(move: move)
        gameScore = response.score
    }
}

