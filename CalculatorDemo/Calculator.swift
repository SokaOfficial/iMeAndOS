//
//  Calculator.swift
//  CalculatorDemo
//
//  Created by Soka on 8/22/20.
//  Copyright © 2020 Soka. All rights reserved.
//

import Foundation

class Calculator {
  
  var currentValue: Int?
  
  init() { }
  
  func add(_ a: Int, _ b: Int) -> Int {
    return a + b
  }
  
  func addAsync(_ a: Int, _ b: Int) {
    DispatchQueue.main.asyncAfter(
      deadline: .now() + 1.0,
      execute: {
        self.currentValue = a + b
    })
  }
  
  func addAsync2(_ a: Int, _ b: Int, completion: @escaping () -> Void) {
    DispatchQueue.main.asyncAfter(
      deadline: .now() + 1.0,
      execute: {
        self.currentValue = a + b
        completion()
    })
  }
  
  func subtract(_ a: Int, _ b: Int) -> Int {
    return a - b
  }
}
