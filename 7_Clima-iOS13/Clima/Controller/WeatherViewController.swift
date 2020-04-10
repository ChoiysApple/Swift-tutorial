//
//  ViewController.swift
//  Clima
//
//  Created by Angela Yu on 01/09/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class WeatherViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var conditionImageView: UIImageView!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var searchField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchField.delegate = self
    }

    @IBAction func searchBtnClicked(_ sender: UIButton) {
        searchField.endEditing(true)    //dismiss keyboard
        print(searchField.text!)
    }
    
    // when keyboard return clicked
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        searchField.endEditing(true)    //dismiss keyboard
        print(searchField.text!)
        return true
    }
    
    // when textfield deselected
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        // by using "textField" (not "searchField") this applied to any textField in this Controller(cuz of delegate = self)
        if textField.text != "" {
            return true
        }else{
            textField.placeholder = "Type something here"
            return false
        }
    }
    
    // when textfield stop editing (keyboard dismissed)
    func textFieldDidEndEditing(_ textField: UITextField) {
        searchField.text = ""   // clear textField
    }
    

}

