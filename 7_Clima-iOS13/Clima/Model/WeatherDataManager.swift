//
//  WeatherDataManager.swift
//  Clima
//
//  Created by Daegeon Choi on 2020/04/15.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation

struct WeatherDataManager{
    let baseURL = "https://api.openweathermap.org/data/2.5/weather?appid=4e415e4ab2aaed09e04d8419beedee19&units=metric"
    
    func fetchWeather(_ city: String){
        let completeURL = "\(baseURL)&q=\(city)"
        print(completeURL)
        performRequest(url: completeURL )
    }
    
    func performRequest(url: String){
        // 1. Create URL
        if let url = URL(string: url){          // URL initializer create optional URL
            
            let session = URLSession(configuration: .default)                                                    // 2. Create URL Session
            let task = session.dataTask(with: url, completionHandler: handler(data:response:error:))             // 3. Give the session a task

            // what task do: go to url -> grab data -> come back
            
            // 4. Start the task
            task.resume()
        }
    }
    
    // handle api task
    func handler(data: Data?, response: URLResponse?, error: Error?){
        // if error exists
        if error != nil{
            print(error!)
            return
        }
        
        if let safeData = data{
            let dataString = String(data: safeData, encoding: .utf8)
            print(dataString ?? "data is nil")
        }
    }
    
}
