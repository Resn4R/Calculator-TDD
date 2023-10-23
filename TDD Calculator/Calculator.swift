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
        input.split(separator: ",")
            .compactMap({ Int($0) })
            .reduce(0, +)
    }
}

//the issue is some values of the array are multi digits (e.g. "1,2")
//recursion? where?
