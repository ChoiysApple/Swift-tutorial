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
    
    
    
    mutating func calculateBMI(_ height: Float, _ weight: Float){
        // bmi value
        let bmiValue = weight/(pow(height,2))
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more!", color: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))
        }else if bmiValue < 24.9{
            bmi = BMI(value: bmiValue, advice: "Good so far", color: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))
        }else{
            bmi = BMI(value: bmiValue, advice: "Eat less", color: #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1))
        }
    }
    
    func getBMIvalue() -> String{
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String{
        return bmi?.advice
    }
    
    func getColor() -> UIColor{
        return bmi?.color
    }
        
    
}
