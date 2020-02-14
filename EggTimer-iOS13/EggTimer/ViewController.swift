//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let hardnessTimes = ["Soft": 5, "Medium": 7, "Hard": 13]
    let timer = Timer()

    
    @IBAction func hardnessPressed(_ sender: UIButton) {
        let hardness = sender.currentTitle!
        
        print(hardnessTimes[hardness]!)
        
    }
    
    
}
