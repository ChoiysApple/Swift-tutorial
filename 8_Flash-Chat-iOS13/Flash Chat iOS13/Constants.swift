//
//  Constants.swift
//  Flash Chat iOS13
//
//  Created by Daegeon Choi on 2021/01/13.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

struct ID {
    static let cellIdentifier = "ReusableCell"
    static let cellNibName = "MessageCell"
    static let registerSegue = "RegisterToChat"
    static let loginSegue = "LoginToChat"
}
    
struct BrandColors {
    static let purple = "BrandPurple"
    static let lightPurple = "BrandLightPurple"
    static let blue = "BrandBlue"
    static let lighBlue = "BrandLightBlue"
}

struct FStore {
    static let collectionName = "messages"
    static let senderField = "sender"
    static let bodyField = "body"
    static let dateField = "date"
}

