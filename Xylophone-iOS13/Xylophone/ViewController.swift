//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    // Button Clicked
    @IBAction func keyPressed(_ sender: UIButton) {

        playSound(note: sender.currentTitle!)
    }
    
    


    
    func playSound(note: String) {
        
        // Check note validity
        if ["C", "D", "E", "F", "G", "A", "B"].contains(note) {
            print("note "+note+" confirmed")
        }
        else {
            print("Unable to find note")
            return
        }
        
        // play sound
        let url = Bundle.main.url(forResource: note, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }

}

