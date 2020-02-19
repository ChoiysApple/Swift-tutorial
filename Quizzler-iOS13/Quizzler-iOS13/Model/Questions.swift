//
//  Questions.swift
//  Quizzler-iOS13
//
//  Created by Daegeon Choi on 18/02/2020.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct questionStruct{
    let question: String
    let answer: String
    
    init(question: String, answer: String){
        self.question = question
        self.answer = answer
    }
}
