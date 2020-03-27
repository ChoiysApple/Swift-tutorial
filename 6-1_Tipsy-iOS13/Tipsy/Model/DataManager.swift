//
//  DataManager.swift
//  Tipsy
//
//  Created by Daegeon Choi on 25/03/2020.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

var data: Data?



func getBill() -> Float{
    return data?.bill ?? 0.0
}

func getPct() -> Float{
    return data?.pct ?? 0.0
}

func getSplit() -> Float{
    return data?.split ?? 2.0
}

