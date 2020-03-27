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
    
    var pct: Float = 0.0
    var split: Float = 2.0
    
    var dataManager = DataManager()
    
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
        splitLabel.text = String(format: "%.0f", sender.value)
        split = Float(sender.value)
    }
    
    @IBAction func CalculateBtnClicked(_ sender: UIButton) {
        dataManager.setData(Float(billLabel.text!) ?? 0.0 , pct, split)
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
        
    // down keyboard when tapping outside of keyboard
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            self.view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.result = dataManager.calculateTip()
            destinationVC.optionComment = dataManager.createComment()
        }
    }

}
