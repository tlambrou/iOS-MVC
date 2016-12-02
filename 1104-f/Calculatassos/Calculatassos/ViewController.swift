//
//  ViewController.swift
//  Calculatassos
//
//  Created by Tassos Lambrou on 11/21/16.
//  Copyright © 2016 SsosSoft. All rights reserved.
//

import UIKit

enum Operation: Int {
  case addition
  case subtraction
  case multiplication
  case division
}

extension Float {
  var cleanValue: String {
    return self.truncatingRemainder(dividingBy: 1) == 0 ? String(format: "%.0f", self) : String(self)
  }
}

class ViewController: UIViewController {
  
  var calculationArray = [Calculator]()
  var calculation = Calculator()
  var numberClears: Bool = true
  
  @IBOutlet weak var calculationsLogButton: UIButton!
  
  @IBOutlet weak var calcWindow: UILabel!
  
  @IBOutlet weak var oneButton: UIButton!
  
  @IBOutlet weak var twoButton: UIButton!
  
  @IBOutlet weak var threeButton: UIButton!
  
  @IBOutlet weak var fourButton: UIButton!
  
  @IBOutlet weak var fiveButton: UIButton!
  
  @IBOutlet weak var sixButton: UIButton!
  
  @IBOutlet weak var sevenButton: UIButton!
  
  @IBOutlet weak var eightButton: UIButton!
  
  @IBOutlet weak var nineButton: UIButton!
  
  @IBOutlet weak var zeroButton: UIButton!
  
  @IBOutlet weak var divideButton: UIButton!
  
  @IBOutlet weak var multiplyButton: UIButton!
  
  @IBOutlet weak var subtractionButton: UIButton!
  
  @IBOutlet weak var additionButton: UIButton!
  
  @IBOutlet weak var clearButton: UIButton!
  
  @IBOutlet weak var decimalButton: UIButton!
  
  @IBOutlet weak var equalButton: UIButton!

  @IBAction func oneButtonPressed(_ sender: UIButton) {
    if calcWindow.text == "0" || numberClears == true {
      numberClears = false
    calcWindow.text = "1"
    } else {
      calcWindow.text = calcWindow.text! + "1"
    }
  }
  
  @IBAction func twoButtonPressed(_ sender: UIButton) {
    if calcWindow.text == "0" || numberClears == true {
      numberClears = false
      calcWindow.text = "2"
    } else {
      calcWindow.text = calcWindow.text! + "2"
    }
  }
  
  @IBAction func threeButtonPressed(_ sender: UIButton) {
    if calcWindow.text == "0" || numberClears == true {
      numberClears = false
      calcWindow.text = "3"
    } else {
      calcWindow.text = calcWindow.text! + "3"
    }
  }
  
  @IBAction func fourButtonPressed(_ sender: UIButton) {
    if calcWindow.text == "0" || numberClears == true {
      numberClears = false
      calcWindow.text = "4"
    } else {
      calcWindow.text = calcWindow.text! + "4"
    }
  }
  
  @IBAction func fiveButtonPressed(_ sender: UIButton) {
    if calcWindow.text == "0" || numberClears == true {
      numberClears = false
      calcWindow.text = "5"
    } else {
      calcWindow.text = calcWindow.text! + "5"
    }
  }
  
  @IBAction func sixButtonPressed(_ sender: UIButton) {
    if calcWindow.text == "0" || numberClears == true {
      numberClears = false
      calcWindow.text = "6"
    } else {
      calcWindow.text = calcWindow.text! + "6"
    }
  }
  
  @IBAction func sevenButtonPressed(_ sender: UIButton) {
    if calcWindow.text == "0" || numberClears == true {
      numberClears = false
      calcWindow.text = "7"
    } else {
      calcWindow.text = calcWindow.text! + "7"
    }
  }
  
  @IBAction func eightButtonPressed(_ sender: UIButton) {
    if calcWindow.text == "0" || numberClears == true {
      numberClears = false
      calcWindow.text = "8"
    } else {
      calcWindow.text = calcWindow.text! + "8"
    }
  }
 
  @IBAction func nineButtonPressed(_ sender: UIButton) {
    if calcWindow.text == "0" || numberClears == true {
      numberClears = false
      calcWindow.text = "9"
    } else {
      calcWindow.text = calcWindow.text! + "9"
    }
  }
  
  @IBAction func zeroButtonPressed(_ sender: UIButton) {
    if calcWindow.text == "0" || numberClears == true {
      numberClears = false
      calcWindow.text = "0"
    } else {
      calcWindow.text = calcWindow.text! + "0"
    }
  }
  
  @IBAction func divideButtonPressed(_ sender: UIButton) {
    calculation.sign = .division
    let prev = calcWindow.text
    calculation.a = Float(prev!)!
    calcWindow.text = prev! + "÷"
    numberClears = true
  }
  
  @IBAction func multiplyButtonPressed(_ sender: UIButton) {
    calculation.sign = .multiplication
    let prev = calcWindow.text
    calculation.a = Float(prev!)!
    calcWindow.text = prev! + "x"
    numberClears = true
  }
  
  @IBAction func subtractButtonPressed(_ sender: UIButton) {
    calculation.sign = .subtraction
    let prev = calcWindow.text
    calculation.a = Float(prev!)!
    calcWindow.text = prev! + "-"
    numberClears = true
  }
  
  @IBAction func additionButtonPressed(_ sender: UIButton) {
    calculation.sign = .addition
    let prev = calcWindow.text
    calculation.a = Float(prev!)!
    calcWindow.text = prev! + "+"
    numberClears = true
  }
  
  @IBAction func clearButtonPressed(_ sender: UIButton) {
    calcWindow.text = "0"
    numberClears = true
  }
  
  @IBAction func decimalButtonPressed(_ sender: UIButton) {
    if calcWindow.text == "0" || numberClears == true {
      numberClears = false
      calcWindow.text = "0."
    } else {
      calcWindow.text = calcWindow.text! + "."
    }
  }
  
  @IBAction func equalButtonPressed(_ sender: UIButton) {
    
    let prev = calcWindow.text
    
    calculation.b = Float(prev!)!
    
    switch calculation.sign! {
      
    case .addition:
      
      calcWindow.text = String(calculation.add(a: calculation.a!, b: calculation.b!).cleanValue)
      
    case .subtraction:
      
      calcWindow.text = String(calculation.subtract(a: calculation.a!, b: calculation.b!).cleanValue)
      
    case .multiplication:
      
      calcWindow.text = String(calculation.multiply(a: calculation.a!, b: calculation.b!).cleanValue)
      
    case .division:
      
      calcWindow.text = String(calculation.divide(a: calculation.a!, b: calculation.b!).cleanValue)
      
    }
    
    
    numberClears = true
    calculationArray.append(calculation)
    calculation = Calculator()
  }
  
  @IBAction func calculationsLogButtonPressed(_ sender: UIButton) {
    
      performSegue(withIdentifier: "calcLog", sender: UIButton())
  }
  
  
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    calcWindow.text = "0"
    
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    let tableViewController = segue.destination as! TableViewController
    tableViewController.viewController = self
  }
  

}

