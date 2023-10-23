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
    
    func testReturnValueIfSingleValue() {
        let sample = Calculator(input: "1")
        XCTAssertEqual(sample.add(), 1)
    }
    
    func testReturnSumIfMultiValue() {
        let sample = Calculator(input: "1,2")
        XCTAssertEqual(sample.add(), 3)
    }
    
// 2. Allow the add method to handle an unknown number of arguments
    func testReturnSumWithUnknownArguments() {
        let sample = Calculator(input: "1,2,3")
        XCTAssertEqual(sample.add(), 6)
        
        let sample2 = Calculator(input: "0,2,4,6,8")
        XCTAssertEqual(sample2.add(), 20)
        
        let sample3 = Calculator(input: "4,4,4,7,8")
        XCTAssertEqual(sample3.add(), 27)
    }

// 3. Allow the add method to handle newlines as separators, instead of commas
    func testReturnSumWithNewLineSeparator() {
        let sample = Calculator(input: "1\n2")
        XCTAssertEqual(sample.add(), 3)
    }
}
