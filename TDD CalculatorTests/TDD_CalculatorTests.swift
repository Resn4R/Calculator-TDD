//
//  TDD_CalculatorTests.swift
//  TDD CalculatorTests
//
//  Created by Vito Borghi on 21/10/2023.
//

/* Requirements
 
 1. The method can take up to two numbers, separated by commas, 
 and will return their sum as a result. So the inputs can be:“”, “1”, “1,2”.
 For an empty string, it will return 0.
 */

import XCTest
@testable import TDD_Calculator

final class TDD_CalculatorTests: XCTestCase {

    func testEmptyStringsReturn0() {
        let sample = Calculator(n1: "", n2: "")
        XCTAssertEqual(sample.add(), 0)
    }

}
