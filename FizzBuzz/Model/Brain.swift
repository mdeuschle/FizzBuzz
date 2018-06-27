//
//  Brain.swift
//  FizzBuzz
//
//  Created by Matt Deuschle on 6/17/18.
//  Copyright © 2018 Matt Deuschle. All rights reserved.
//

import Foundation

class Brain {

    func check(_ number: Int) -> Move {
        if isDivisibleBy(divisor: 15, number: number) {
            return .fizzBuzz
        } else if isDivisibleBy(divisor: 5, number: number) {
            return .buzz
        } else if isDivisibleBy(divisor: 3, number: number) {
            return .fizz
        } else {
            return .number
        }
    }

    private func isDivisibleBy(divisor: Int, number: Int) -> Bool {
        return number % divisor == 0
    }

    func isDivisibleByThree(_ number: Int) -> Bool {
        return isDivisibleBy(divisor: 3, number: number)
    }

    func isDivisibleByFive(_ number: Int) -> Bool {
        return isDivisibleBy(divisor: 5, number: number)
    }

    func isDivisibleByFifteen(_ number: Int) -> Bool {
        return isDivisibleBy(divisor: 15, number: number)
    }
}
