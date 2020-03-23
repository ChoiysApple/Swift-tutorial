//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billLabel: UITextField!
    
    @IBOutlet weak var zeroPctBtn: UIButton!
    @IBOutlet weak var tenPctBtn: UIButton!
    @IBOutlet weak var twentyPctBtn: UIButton!
    
    @IBOutlet weak var splitLabel: UILabel!
    
    var selectedBtn: UIButton?
    
    var bill: Float = 0.0
    var pct: Float = 0.0
    var split: Float = 2.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // initialize pct buttons' status
        zeroPctBtn.isSelected = true
        tenPctBtn.isSelected = false
        twentyPctBtn.isSelected = false
        selectedBtn = zeroPctBtn
    }

    @IBAction func pctBtnClicked(_ sender: UIButton) {
        selectedBtn?.isSelected = false
        
        if sender == zeroPctBtn{
            pct = 1.0
        }else if sender == tenPctBtn{
            pct = 1.1
        }else{
            pct = 1.2
        }
        sender.isSelected = true
        selectedBtn = sender
    }
    
    @IBAction func stepperChanged(_ sender: UIStepper) {
        split = Float(sender.value)
        splitLabel.text = String(format: "%.0f", sender.value)
    }
    
    @IBAction func CalculateBtnClicked(_ sender: UIButton) {
        bill = Float(billLabel.text!) ?? 0.0
        
        print("bill: \(bill)")
        print("pct: \(pct)%")
        print("split: \(split)")
        print("result: \(calculateTip(bill, pct, split))")
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    func calculateTip(_ bill: Float, _ pct: Float, _ split: Float) -> Float{
        return bill*pct/split
    }
    
    // down keyboard when tapping outside of keyboard
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            self.view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.result = String(format: "%.1f", calculateTip(bill, pct, split))
            destinationVC.optionComment = "Split between \(String(format: "%.0f", split)) people, with \(String(format: "%.0f", (pct-1)*100))% tip."
        }
    }

}

