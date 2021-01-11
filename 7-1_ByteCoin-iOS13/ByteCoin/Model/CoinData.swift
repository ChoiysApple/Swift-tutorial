//
//  CoinData.swift
//  ByteCoin
//
//  Created by Daegeon Choi on 2021/01/11.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

// Codable typealies: Protocal combined Decodable & Encodable
struct CoinData: Codable {
    // Value name must follow JSON property name
    let rate: Double
}
