//
//  WeatherDataManager.swift
//  Clima
//
//  Created by Daegeon Choi on 2020/04/15.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation

struct WeatherDataManager{
    let baseURL = "http://api.openweathermap.org/data/2.5/weather?appid=4e415e4ab2aaed09e04d8419beedee19&units=metric"
    
    func fetchWeather(_ city: String){
        let completeURL = "\(baseURL)&q=\(city)"
        print(completeURL)
    }
}
