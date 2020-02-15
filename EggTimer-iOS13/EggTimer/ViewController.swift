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
    var timer: Timer?
    

    
    @IBAction func hardnessPressed(_ sender: UIButton) {
        let hardness = sender.currentTitle!
        
        // reset timer
        timer?.invalidate()
        
        //start Timer
        startTimer(endTime: hardnessTimes[hardness]!)
                
    }
    

    func startTimer(endTime: Int) {
        
        var currTime = 0
        print("\n--- Count",endTime ,"---")
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
            
            print(endTime-currTime, "sec left")
            currTime += 1

            if currTime == endTime {
                print("End timer")
                timer.invalidate()
            }
        }

    }
    
}
