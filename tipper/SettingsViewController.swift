//
//  SettingsViewController.swift
//  tipper
//
//  Created by Pushpinder Jaswal on 7/2/16.
//  Copyright © 2016 Pushpinder Jaswal. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var defaultPercentageTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    @IBAction func onEdit(_ sender: AnyObject) {
//        var defaultPercantage = NSString(string : defaultPercentageTextField.text!).doubleValue
//        let vc = ViewController(defaultPercantage : Double)
//    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
        var defaultPercent = NSString(string: defaultPercentageTextField.text!).doubleValue
        var destVC : ViewController = segue.destinationViewController as! ViewController
        destVC.tipPercent(percent: defaultPercent)
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
