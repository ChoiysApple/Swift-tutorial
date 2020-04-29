//
//  WeatherData.swift
//  Clima
//
//  Created by Daegeon Choi on 2020/04/23.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation

// Codable typealies: Protocal combined Decodable & Encodable
struct WeatherData: Codable{
    // Value name must follow JSON property name
    let name: String
    let main: Main
    let weather: [Weather]
}

struct Main: Codable{
    let temp: Double
}

struct Weather: Codable{
    let id: Int
    let description: String
}
