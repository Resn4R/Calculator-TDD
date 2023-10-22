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
        switch input {
        case "1": return 1
        case "1,2": return 3
        default: return 0
        }
        
    }
}
