//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyManager = StoryManager()
    
    // button click
    @IBAction func choiceBtnClick(_ sender: UIButton) {
        storyManager.sendChoice(choice: sender.currentTitle!)
        print(sender.currentTitle!)
        updateUI()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    
    func updateUI(){
        storyLabel.text = storyManager.getStory().title
        choice1Button.setTitle(storyManager.getStory().choice1, for: .normal)
        choice2Button.setTitle(storyManager.getStory().choice2, for: .normal)
    }

}

