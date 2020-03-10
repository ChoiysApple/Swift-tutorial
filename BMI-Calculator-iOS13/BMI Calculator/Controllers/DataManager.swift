//
//  DataManager.swift
//  BMI Calculator
//
//  Created by Daegeon Choi on 05/03/2020.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation

struct DataManager{
    
    var bmi: BMI?
    
    
    func calculateBMI(_ height: Float, _ weight: Float) -> Float{
        return weight/(pow(height,2))
    }
    

    
    
}
