//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    

    @IBAction func heightSliderMoved(_ sender: UISlider) {
        heightLabel.text = String(format:"%.2f", sender.value)+"m"
    }
    
    @IBAction func weightSliderMoved(_ sender: UISlider) {
        weightLabel.text = String(format:"%.1f", sender.value)+"Kg"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

