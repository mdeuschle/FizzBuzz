//
//  ViewController.swift
//  FizzBuzz
//
//  Created by Matt Deuschle on 6/17/18.
//  Copyright © 2018 Matt Deuschle. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scoreButton: UIButton!

    var gameScore: Int? {
        didSet {
            guard let gameScore = gameScore else { return }
            scoreButton.setTitle("\(gameScore)", for: .normal)
        }
    }
    var game: Game?

    override func viewDidLoad() {
        super.viewDidLoad()
        game = Game()
        guard let game = game else { return }
        gameScore = game.score
    }

    func play(move: Move) {
        guard let game = game else { return }
        let response = game.play(move: move)
        gameScore = response.score
    }

    @IBAction func scoreButtonTapped(_ sender: UIButton) {
        play(move: .number)
    }
}

