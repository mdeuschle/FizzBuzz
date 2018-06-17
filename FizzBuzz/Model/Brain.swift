//
//  Brain.swift
//  FizzBuzz
//
//  Created by Matt Deuschle on 6/17/18.
//  Copyright © 2018 Matt Deuschle. All rights reserved.
//

import Foundation

class Brain {

    func check(_ number: Int) -> String {
        if isDivisibleBy(divisor: 15, number: number) {
            return "FizzBuzz"
        } else if isDivisibleBy(divisor: 5, number: number) {
            return "Buzz"
        } else if isDivisibleBy(divisor: 3, number: number) {
            return "Fizz"
        } else {
            return "\(number)"
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
