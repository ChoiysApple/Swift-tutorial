//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueBtn: UIButton!
    @IBOutlet weak var falseBtn: UIButton!
    
    var qnum = 0
    
    let question = [
        ["Snail have teeth", "True"],
        ["Fish can cough", "True"],
        ["Tomato is vegitable","True"],
        ["Potato is root of plant","False"],
        ["Freddie Mucury was born in London", "False"]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }

    @IBAction func answerPressed(_ sender: UIButton) {
        
        if (qnum == question[0].count){
            questionLabel.text = "Finished!"
            return
        }
            
        
        quistionManager(questionNumber: qnum)
        qnum += 1
    }
    
    func quistionManager(questionNumber: Int){
        questionLabel.text = question[questionNumber][0]
    }
    
    
}

