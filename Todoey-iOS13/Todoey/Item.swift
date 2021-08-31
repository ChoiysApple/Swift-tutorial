//
//  File.swift
//  Todoey
//
//  Created by Daegeon Choi on 2021/08/13.
//  Copyright © 2021 App Brewery. All rights reserved.
//

import Foundation

class Item {
    
    
    var title: String
    var isDone: Bool
    
    
    init(title: String, isDone: Bool) {
        self.title = title
        self.isDone = isDone
    }
}
