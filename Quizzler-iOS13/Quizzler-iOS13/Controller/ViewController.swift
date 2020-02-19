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
    
    var quizManager = QuizManager()
    
    let endTime = 0.5

    
    override func viewDidLoad() {
        // initialize settings
        questionLabel.text = quizManager.questionList[0].question
        progressBar.progress = 0.0
    }
    
    @IBAction func answerPressed(_ sender: UIButton) {
        
        if (quizManager.isFinished){
            trueBtn.backgroundColor = UIColor.clear
            falseBtn.backgroundColor = UIColor.clear
            return
        }
        
        // Check answer
        if (quizManager.checkAnswer(sender.currentTitle!)){
            sender.backgroundColor = UIColor.green
        }
        else{
            sender.backgroundColor = UIColor.red
        }
        
        // safty check
        quizManager.qnum += 1
        if (quizManager.checkEnd()){
            progressBar.progress = 1.0
            questionLabel.text = "Finished!"
            quizManager.isFinished = true
            return
        }
        
        Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
    }// [END] answerPressed
    
    @objc func updateUI(){
        // display question
        questionLabel.text = quizManager.questionList[quizManager.qnum].question
        trueBtn.backgroundColor = UIColor.clear
        falseBtn.backgroundColor = UIColor.clear
        
        progressBar.progress = quizManager.currentProgress()
    }
    

    
}
