//
//  Calculator.swift
//  TDD Calculator
//
//  Created by Vito Borghi on 21/10/2023.
//

import Foundation

struct Calculator {
    var input: String
    
    func add() -> Int {
        if input.isEmpty {
            return 0
        } else if input == "1"{
            return 1
        }
        return 0
    }
}
