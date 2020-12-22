//
//  ViewController.swift
//  Prework
//
//  Created by CHENG HAOYU on 12/22/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "Tip Calculator";
    }
    
    @IBAction func calculateTip(_ sender: Any) {
    }
    
    @IBAction func onTap(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0;
        let tipPercentage = [0.15,0.18,0.2];
        let tip = bill*tipPercentage[tipControl.selectedSegmentIndex];
        let total = bill+tip;
        tipPercentageLabel.text = String(format: "$%.2f",tip);
        totalLabel.text = String(format: "$%.2f", total);
    }
    
}

