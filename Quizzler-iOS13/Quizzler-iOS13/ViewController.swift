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
    let endTime = 0.5
    
    let questionList = [
        questionStruct(question: "Snail have teeth", answer: "True"),
        questionStruct(question: "Fish can cough", answer: "True"),
        questionStruct(question: "Tomato is vegitable", answer: "True"),
        questionStruct(question: "Potato is root of plant", answer: "False"),
        questionStruct(question: "Freddie Mucury was born in London", answer: "False"),
    ]
    
    
    override func viewDidLoad() {
        // initialize settings
        questionLabel.text = questionList[qnum].question
        progressBar.progress = 0.0
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
        if (qnum >= questionList.count){
            progressBar.progress = 1.0
            questionLabel.text = "Finished!"
            isFinished = true
            return
        }
        
        Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
    }// [END] answerPressed
    
    @objc func updateUI(){
        // display question
        questionLabel.text = self.questionList[self.qnum].question
        trueBtn.backgroundColor = UIColor.clear
        falseBtn.backgroundColor = UIColor.clear
        
        progressBar.progress = Float(qnum)/Float(questionList.count)
    }
    

    
}

