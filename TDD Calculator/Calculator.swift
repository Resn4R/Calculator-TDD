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
        
        if input.contains("\n"){
            result = input.split(separator: "\n")
                 .compactMap({ Int($0) })
                 .reduce(0, +)
        } else {
           result = input.split(separator: ",")
                .compactMap({ Int($0) })
                .reduce(0, +)
        }
        
        return result
    }
    
}
