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
            
            // 2. Create URL Session
            let session = URLSession(configuration: .default)
            
            // 3. Give the session with task
            let task = session.dataTask(with: url) { (data, response, error) in
                // if error exists
                if error != nil{
                    print(error!)
                    return
                }
                
                // Decode JSON
                if let safeData = data{
                    self.parseJSON(weatherData: safeData)       // in closure, MUST add self.
                }

            }

            // what task do: go to url -> grab data -> come back
            
            // 4. Start the task
            task.resume()
        }
    }   // [END] of performRequest()
    
    // decode JSON
    func parseJSON(weatherData: Data){
        let decoder = JSONDecoder()
        do{
            let decodedData = try decoder.decode(WeatherData.self, from: weatherData)
            print("decoded: \(decodedData.main.temp) \(decodedData.weather[0].description)")
        }catch {
            print(error)
        }
    }
    
    
}
