//
//  Sotry.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct Story{
    let title: String
    let choice1: String
    let choice2: String
    
    let choice1Destination: Int
    let choice2Destination: Int

    
    init(_ title: String, _ choice1: String, _ choice1Destination: Int, _ choice2Destination: Int, _ choice2: String){
        self.title = title
        self.choice1 = choice1
        self.choice2 = choice2
        
        self.choice1Destination = choice1Destination
        self.choice2Destination = choice2Destination
    }
}

