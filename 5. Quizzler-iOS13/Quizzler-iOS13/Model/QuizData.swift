//
//  QuizData.swift
//  Quizzler-iOS13
//
//  Created by Daegeon Choi on 19/02/2020.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

// question lists
struct QuizManager{
    
    var qnum = 0
    var correct = 0
    var isFinished: Bool = false
    
    let questionList = [
        questionStruct(question: "Snail have teeth", answer: "True"),
        questionStruct(question: "Fish can cough", answer: "True"),
        questionStruct(question: "Tomato is vegitable", answer: "True"),
        questionStruct(question: "Potato is root of plant", answer: "False"),
        questionStruct(question: "Freddie Mucury was born in London", answer: "False"),
    ]
    
    // compare actural & user answer
    mutating func checkAnswer(_ answer: String) -> Bool{
        // Check answer
        if (answer == questionList[qnum].answer){
            correct += 1
            return true
        }
        else{
            return false
        }
    }
    
    // check if quiz ended
    mutating func checkEnd() -> Bool{
        self.qnum += 1
        if (qnum >= questionList.count){
            return true
        }
        else{
            return false
        }
    }
    
    func currentProgress() -> Float{
         return Float(qnum)/Float(questionList.count)
    }
    
    func getCurrentScore() -> String{
        return "Score"+String(correct)+"/"+String(questionList.count)
    }
    
    func getQuizText() -> String{
        return questionList[qnum].question
    }
    
    
}// [END] Struct

