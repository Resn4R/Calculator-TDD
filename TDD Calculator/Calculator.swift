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
        guard input.last != "," else {
            print("NO COMMAS ALLOWED AT THE END OF THE STRING")
            return -1
        }
        
        var result = 0
        var separator = input.contains("\n") ? "\n" : ","
        var newInput = input

        if input.starts(with: "//") {
            if let customDelimiter = input.split(separator: "\n").first?.dropFirst(2) {
                separator = String(customDelimiter)
                newInput = String(input.split(separator: "\n").last!)
            }
        }

        result = newInput.split(separator: separator)
             .compactMap({ Int($0) })
             .reduce(0, +)
        
        return result
    }
    
}
