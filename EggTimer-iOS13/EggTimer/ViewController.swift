//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // IB Connection
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var mainText: UILabel!

    
    let hardnessTimes = ["Soft": 5, "Medium": 7, "Hard": 13]
    var timer: Timer?
    
    
    @IBAction func hardnessPressed(_ sender: UIButton) {
        let hardness = sender.currentTitle!
        
        timer?.invalidate()                                 // reset timer
        startTimer(endTime: hardnessTimes[hardness]!)       //start Timer
    }
    

    func startTimer(endTime: Int) {
        
        var currTime = 0
//        print("\n--- Count",endTime ,"---")
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
            
            self.progressBar.progress = Float(currTime)/Float(endTime)
//            print(endTime-currTime, "sec left")
            currTime += 1
            

            if currTime == endTime {
                self.progressBar.progress = 1.0
                self.mainText.text = "Done!"
//                print("End timer")
                timer.invalidate()
            }
        }
    }//[END] Timer
    
}
