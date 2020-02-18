//
//  Questions.swift
//  Quizzler-iOS13
//
//  Created by Daegeon Choi on 18/02/2020.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

// question lists
//let questionList = [
//    questionStruct(question: "Snail have teeth", answer: "True"),
//    questionStruct(question: "Fish can cough", answer: "True"),
//    questionStruct(question: "Tomato is vegitable", answer: "True"),
//    questionStruct(question: "Potato is root of plant", answer: "False"),
//    questionStruct(question: "Freddie Mucury was born in London", answer: "False"),
//]


struct questionStruct{
    let question: String
    let answer: String
    
    init(question: String, answer: String){
        self.question = question
        self.answer = answer
    }
    
    
}
