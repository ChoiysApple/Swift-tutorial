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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        zeroPctBtn.isSelected = true
        tenPctBtn.isSelected = false
        twentyPctBtn.isSelected = false
        
        selectedBtn = zeroPctBtn
    }

    @IBAction func pctBtnClicked(_ sender: UIButton) {
        selectedBtn?.isSelected = false
        sender.isSelected = true
        selectedBtn = sender
    }
    
    @IBAction func CalculateBtnClicked(_ sender: UIButton) {
        
    }
    
    
}

