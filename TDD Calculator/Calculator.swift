//
//  Calculator.swift
//  TDD Calculator
//
//  Created by Vito Borghi on 21/10/2023.
//

import Foundation

struct Calculator {
    var n1: String
    var n2: String
    
    func add() -> Int {
        if n1 == "" {
            if n2 == "" {
                return 0
            }
        }
        return 0
    }
}
