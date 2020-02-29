//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var bmiValue = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("bmiValue", bmiValue)
        view.backgroundColor = .red
        
        let label = UILabel()
        label.text = bmiValue
        label.frame = CGRect(x: 0, y: 0, width: 100 , height: 50)
    
        view.addSubview(label)
    }
}
