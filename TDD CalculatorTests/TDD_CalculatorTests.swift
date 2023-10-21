//
//  TDD_CalculatorTests.swift
//  TDD CalculatorTests
//
//  Created by Vito Borghi on 21/10/2023.
//
 


import XCTest
@testable import TDD_Calculator

final class TDD_CalculatorTests: XCTestCase {

    /* 1. The method can take up to two numbers, separated by commas,
           and will return their sum as a result. So the inputs can be:“”, “1”, “1,2”.
           For an empty string, it will return 0.
           */
    func testEmptyStringsReturn0() {
        let sample = Calculator(input: "")
        XCTAssertEqual(sample.add(), 0)
    }
    
    func testReturnSumIfNotEmpty() {
        
    }

}
