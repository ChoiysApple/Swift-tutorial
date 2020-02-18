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
    var isFinished: Bool = false
    
    let questionList = [
        questionStruct(question: "Snail have teeth", answer: "True"),
        questionStruct(question: "Fish can cough", answer: "True"),
        questionStruct(question: "Tomato is vegitable", answer: "True"),
        questionStruct(question: "Potato is root of plant", answer: "False"),
        questionStruct(question: "Freddie Mucury was born in London", answer: "False"),
    ]
    
    
    override func viewDidLoad() {
        questionLabel.text = questionList[qnum].question
    }
    
    @IBAction func answerPressed(_ sender: UIButton) {
        if (isFinished){
            return
        }
        
        // Check answer
        if (sender.currentTitle == questionList[qnum].answer){
            sender.backgroundColor = UIColor.green
        }
        else{
            sender.backgroundColor = UIColor.red
        }
        
        // safty check
        qnum += 1
        
        updateUI()
        
    }// [END] answerPressed
    
    func updateUI(){
        if (qnum >= questionList.count){
            print("Quiz finished")
            questionLabel.text = "Finished!"
            isFinished = true
            return
        }
        
        // display question
        questionLabel.text = questionList[qnum].question
        trueBtn.backgroundColor = UIColor.clear
        falseBtn.backgroundColor = UIColor.clear
    }
    
}

