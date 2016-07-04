//
//  ViewController.swift
//  tipper
//
//  Created by Pushpinder Jaswal on 7/1/16.
//  Copyright © 2016 Pushpinder Jaswal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var billLabel: UILabel!
    @IBOutlet weak var billField: UITextField!

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    var tipPercentages = [0.18, 0.2, 0.22]
    
    func tipPercent(percent : Double) -> [Double] {
        //var tipPercentages = [0.18, 0.2, 0.22]
        if percent != 0.0{
            tipPercentages[0] = percent
        }
      return tipPercentages
        
    }

    @IBAction func onEditingChanged(_ sender: AnyObject) {
 
        //var tipPercentages = tipPercent(percent: <#T##Double#>)
        var tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        
        var billAmount = NSString(string: billField.text!).doubleValue
        var tip = billAmount * tipPercentage
        var total = billAmount + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    
    }
  
    @IBAction func onTap( sender: AnyObject) {
        self.view.endEditing(true)
    }

}

