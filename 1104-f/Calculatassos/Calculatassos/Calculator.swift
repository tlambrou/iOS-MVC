
//  Calculator.swift
//  Calculatassos
//
//  Created by Tassos Lambrou on 11/21/16.
//  Copyright © 2016 SsosSoft. All rights reserved.
//

import Foundation


class Calculator {
  
  var a: Float? = 0
  var b: Float? = 0
  var sign: Operation?
  var result: Float!
  
  let capabilities = ["Addition", "Subtraction", "Multiplication", "Division"]
  let signs = ["+", "-", "x", "÷"]
  
  func name(for operation: Operation) -> String {
    return capabilities[operation.rawValue]
  }
  
  func sign(for operation: Operation) -> String {
    return signs[operation.rawValue]
  }
  
  func printSupportedOperations() {
    print("I can do the following:")
    for capability in capabilities {
      print(capability)
    }
  }
  
  func printCalculation() -> String {
    let expression: String = "\(self.a!) \(sign!) \(self.b!) = \(self.result)"
    return expression
  }
  
  func add(a: Float, b: Float) -> Float {
    self.result = a+b
    return self.result
  }
  
  func subtract(a: Float, b: Float) -> Float {
    self.result = a-b
    return self.result
  }
  
  func multiply(a: Float, b: Float) -> Float {
    self.result = a*b
    return self.result
  }
  
  func divide(a: Float, b: Float) -> Float {
    self.result = a/b
    return self.result
  }
  
}
