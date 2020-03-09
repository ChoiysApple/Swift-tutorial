//
//  DataManager.swift
//  BMI Calculator
//
//  Created by Daegeon Choi on 05/03/2020.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation

struct DataManager{
    
    var height: Float?
    var weight: Float?
//    var bmiValue: String?

    mutating func setHeight(_ height: Float){
        self.height = height
    }
    
    mutating func setWeight(_ weight: Float){
        self.weight = weight
    }
    
    
    func calculateBMI() -> Float{
        return weight ?? 100.0/(pow(height ?? 1.5,2))
    }

    
    
}
