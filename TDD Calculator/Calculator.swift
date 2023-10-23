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
        var result = 0
        let separator = input.contains("\n") ? "\n" : ","

        
        result = input.split(separator: separator)
             .compactMap({ Int($0) })
             .reduce(0, +)
        
        return result
    }
    
}
