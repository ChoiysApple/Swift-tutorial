//
//  DataManager.swift
//  Tipsy
//
//  Created by Daegeon Choi on 25/03/2020.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct DataManager{
    var data: Data?
    
    mutating func setData(_ bill: Float, _ pct: Float, _ split: Float){
        data = Data(bill: bill, pct: pct, split: split)
    }
    
    func calculateTip() -> String{
        return String(format: "%.1f", data!.bill*data!.pct/data!.split)
    }
    
    func createComment() -> String{
        return "Split between \(String(format: "%.0f", data!.split)) people, with \(String(format: "%.0f", (data!.pct-1)*100))% tip."
    }
}
