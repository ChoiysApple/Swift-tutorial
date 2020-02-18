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
    
    // question lists
    let question = [
        ["Snail have teeth", "True"],
        ["Fish can cough", "True"],
        ["Tomato is vegitable","True"],
        ["Potato is root of plant","False"],
        ["Freddie Mucury was born in London", "False"]
    ]
    
    override func viewDidLoad() {
        questionLabel.text = question[qnum][0]
        
    }
    
    @IBAction func answerPressed(_ sender: UIButton) {
        
        // Check answer
        if (sender.currentTitle == question[qnum][1]){
            print("Correct")
        }else{
            print("Wrong")
        }
        
        // safty check
        qnum += 1
        print("qnum:",qnum, " Total:", question.count)
        if (qnum >= question.count){
            print("Quiz finished")
            questionLabel.text = "Finished!"
            return
        }
        
        // display question
        questionLabel.text = question[qnum][0]
        
    }// [END] answerPressed
    
    
    
}

