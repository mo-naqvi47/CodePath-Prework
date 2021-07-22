//
//  ViewController.swift
//  Prework
//
//  Created by Mo Naqvi on 7/15/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    
    
    // Split bill
    /*
    @IBOutlet weak var stepperVal: UIStepper!
    @IBOutlet weak var numPeopleTextField: UITextField!
    
    @IBOutlet weak var totalPerPersonField: UILabel!
    @IBOutlet weak var numPeople: UILabel!
    @IBOutlet weak var totalPerPersonLabel: UILabel!
    */
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        /*
        stepperVal.wraps = true
        stepperVal.autorepeat = true
        stepperVal.maximumValue = 5
        stepperVal.isContinuous = true
        */
        billAmountTextField.becomeFirstResponder()
        
        
        
    }
    /*
    override func viewDidAppear(_ animated: Bool) {
            super.viewDidAppear(animated)
            
            let bill = Double(billAmountTextField.text!) ?? 0
            if (bill == 0) {
                billAmountTextField.becomeFirstResponder()
            }
        }
    
    
    @IBAction func onTap(_ sender: AnyObject) {
            view.endEditing(true)
        }
    */
    @IBAction func calculateTip(_ sender: Any) {
        // Getting the bill amount from the text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        // Get the total tip - tip * tip percentage
        let tipPercentages = [0.15, 0.18, 0.2]
        var tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let defaults = UserDefaults.standard
        let roundTip = defaults.bool(forKey: "roundTip")
        
        if (roundTip) {
            tip = ceil(tip)
        }
        
        let total = bill + tip
        
        // Update the tip amount label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        // Update Total Amount
        totalLabel.text = String(format: "$%.2f", total)
        
        //self.stepChanged(self)
    }
    
    /*
    @IBAction func stepChanged(_ sender: Any) {
        //numPeopleTextField.text = Int(sender.value).description
        let step = stepperVal.value
        numPeopleTextField.text = String(Int(step))
        let total = totalLabel.text!
        let index1 = total.index(total.startIndex, offsetBy: 1)
        //let price = Double(total.substring(from: index1))
        let totalCost = Double(String(total[index1...]))
        let totalPerPerson = totalCost! / step
        
        totalPerPersonField.text = String(format: "$%.2f", totalPerPerson)
    }
    
    override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            
            let defaults = UserDefaults.standard
            let bill = Double(billAmountTextField.text!) ?? 0
            
            let defaultChanged = defaults.bool(forKey: "defaultChanged")
            if (defaultChanged || bill == 0) { // only update segment if the default is changed
                let intValue = defaults.integer(forKey: "tipIndex")
                tipControl.selectedSegmentIndex = intValue
                defaults.set(false, forKey: "defaultChanged") // updated
            }
            
            self.calculateTip(self)
        }
    */
    
}

