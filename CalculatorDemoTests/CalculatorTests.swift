//
//  CalculatorTests.swift
//  CalculatorDemoTests
//
//  Created by Soka on 8/22/20.
//  Copyright © 2020 Soka. All rights reserved.
//

import XCTest
@testable import CalculatorDemo

class CalculatorTests: XCTestCase {

  var calculator: Calculator!

  override func setUp() {
    calculator = Calculator()
  }

  override func tearDown() {
    calculator = nil
  }
}
