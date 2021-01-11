//
//  ViewController.swift
//  ByteCoin
//
//  Created by Angela Yu on 11/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate, CoinManagerDelegate {
    
    //MARK: IBOutlet
    @IBOutlet weak var currencyPicker: UIPickerView!
    @IBOutlet weak var currencyLabel: UILabel!
    @IBOutlet weak var rateLabel: UILabel!
    
    var coinManager = CoinManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        currencyPicker.dataSource = self
        currencyPicker.delegate = self
        coinManager.delegate = self
        
        coinManager.fetchCurrency(currency: coinManager.currencyArray[0])
    }
        
    //MARK: UIPicker
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1    // return number of columns
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return coinManager.currencyArray.count  // return number of rows
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return  coinManager.currencyArray[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let currencyPicked = coinManager.currencyArray[row]
        currencyLabel.text = currencyPicked
        coinManager.fetchCurrency(currency: currencyPicked)
    }
    
    //MARK:- Delegate
    func updateRate(coinData: Double) {
        DispatchQueue.main.sync {
            rateLabel.text = String(format: "%f", coinData)
        }
    }
    
    func failedWithError(error: Error) {
        print(error)
    }
}

