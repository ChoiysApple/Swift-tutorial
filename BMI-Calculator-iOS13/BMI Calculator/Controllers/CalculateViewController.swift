//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    var dataManager = DataManager()
    
    @IBAction func heightSliderMoved(_ sender: UISlider) {
        heightLabel.text = String(format:"%.2f", sender.value)+"m"
        dataManager.setHeight(sender.value)
    }
    
    @IBAction func weightSliderMoved(_ sender: UISlider) {
        weightLabel.text = String(format:"%.1f", sender.value)+"Kg"
        dataManager.setWeight(sender.value)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calcuateBtnClicked(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToResults", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResults"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = dataManager.calculateBMI()
        }
    }
    
    
}

