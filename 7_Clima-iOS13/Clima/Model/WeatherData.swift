//
//  WeatherData.swift
//  Clima
//
//  Created by Daegeon Choi on 2020/04/23.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation

struct WeatherData: Decodable{
    // Value name must follow JSON property name
    let name: String
    let main: Main
    let weather: [Weather]
}

struct Main: Decodable{
    let temp: Double
}

struct Weather: Decodable{
    let id: Int
    let description: String
}
