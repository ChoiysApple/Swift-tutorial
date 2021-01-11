//
//  CoinManager.swift
//  ByteCoin
//
//  Created by Angela Yu on 11/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

//MARK: Delegate protocol
protocol CoinManagerDelegate {
    func updateRate(coinData: Double)
    func failedWithError(error: Error)
}

struct CoinManager {
    
    //MARK:- Properties
    let baseURL = "https://rest.coinapi.io/v1/exchangerate/BTC/"
    let apiKey = "5C69E83D-969E-454B-846A-61688B11984D"
    
    let currencyArray = ["USD", "KRW", "AUD", "BRL","CAD","CNY","EUR","GBP","HKD","IDR","ILS","INR","JPY","MXN","NOK","NZD","PLN","RON","RUB","SEK","SGD","ZAR"]
    
    var delegate: CoinManagerDelegate?

    //MARK: API methods
    func fetchCurrency(currency: String){
        let completeURL = "\(baseURL)\(currency)?apikey=\(apiKey)"
        performRequest(url: completeURL)
    }
    
    func performRequest(url: String){
        if let url = URL(string: url){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error != nil{
                    self.delegate?.failedWithError(error: error!)
                    return
                }
                if let safeData = data{
                    if let rate = self.parseJSON(coinData: safeData) {
                        print("JSON decoded: \(rate)")
                        self.delegate?.updateRate(coinData: rate)
                    }
                }
            }
            task.resume()
        }
    }   // [END] of performRequest()
    
    // decode JSON
    func parseJSON(coinData: Data) -> Double?{
        let decoder = JSONDecoder()
        do{
            let decodedData = try decoder.decode(CoinData.self, from: coinData)
            return decodedData.rate
            
        }catch {
            delegate?.failedWithError(error: error)
            return nil
        }
    }
    
}
