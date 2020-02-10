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
    
    var player: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    // Button Clicked
    @IBAction func CPressed(_ sender: UIButton) {
        playSound(code: "C")
    }
    
    @IBAction func DPressed(_ sender: UIButton) {
        playSound(code: "D")
    }
    
    @IBAction func EPressed(_ sender: UIButton) {
        playSound(code: "E")
    }
    
    @IBAction func FPressed(_ sender: UIButton) {
        playSound(code: "F")
    }
    
    @IBAction func GPressed(_ sender: UIButton) {
        playSound(code: "G")
    }
    
    @IBAction func APressed(_ sender: UIButton) {
        playSound(code: "A")
    }
    
    @IBAction func BPressed(_ sender: UIButton) {
        playSound(code: "B")
    }
    

    func playSound(code: String) {
        
        // Check code validity
        if ["C", "D", "E", "F", "G", "A", "B"].contains(code) {
            print("Code "+code+" confirmed")
        }
        else {
            print("Unable to find code")
            return
        }
        
        guard let url = Bundle.main.url(forResource: code, withExtension: "wav") else { return }

        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)

            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)

            guard let player = player else { return }

            player.play()

        } catch let error {
            print(error.localizedDescription)
        }
    }
}

