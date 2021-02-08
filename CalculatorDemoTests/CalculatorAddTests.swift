//
//  CalculatorAddTests.swift
//  CalculatorDemoTests
//
//  Created by Soka on 6/24/19.
//  Copyright © 2020 Soka. All rights reserved.
//

import XCTest
@testable import CalculatorDemo

class CalculatorAddTests: XCTestCase {
  
  var calculator: Calculator!
  
  override func setUp() {
    calculator = Calculator()
  }
  
  override func tearDown() {
    calculator = nil
  }
  
  func testAdd() {
    let result = calculator.add(1, 2)
    XCTAssertEqual(result, 3, "Expected 3, but got \(result)")
    XCTAssertLessThan(result, 10)
  }
  
  //  func testAddAsync() {
  //    calculator.addAsync(3, 4)
  //    XCTAssertEqual(calculator?.currentValue, 7)
  //  }
  
  func testAddAsync2() {
    let expect = expectation(description: "completion block was called")
    calculator.addAsync2(3, 4) {
      expect.fulfill()
      XCTAssertEqual(self.calculator?.currentValue, 7)
    }
    wait(for: [expect], timeout: 2.0)
  }
}
