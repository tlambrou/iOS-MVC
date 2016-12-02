//
//  TableViewController.swift
//  Calculatassos
//
//  Created by Tassos Lambrou on 11/27/16.
//  Copyright © 2016 SsosSoft. All rights reserved.
//

import Foundation
import UIKit

class TableViewController: UITableViewController {
  
  var viewController: ViewController!
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return viewController.calculationArray.count
  }
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "calcExpression") as! TableViewCell
    let calculation = viewController.calculationArray[indexPath.row]
    cell.cellCalculation.text = calculation.printCalculation()
    return cell
  }
  
}
