//
//  DataManager.swift
//  BMI Calculator
//
//  Created by Daegeon Choi on 05/03/2020.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation

struct DataManager{
    
    var height: Float = 1.5
    var weight: Float = 100.0
//    var bmiValue: String?

    mutating func setHeight(_ height: Float){
        self.height = height
    }
    
    mutating func setWeight(_ weight: Float){
        self.weight = weight
    }
    
    
//    mutating func calculateBMI(){
//        self.bmiValue = String(format: "%.1f", weight/(pow(height,2)))
//        print(self.bmiValue)
//    }
    
    func calculateBMI() -> Float{
        return weight/(pow(height,2))
    }

    
    
}
