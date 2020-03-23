//
//  ResultViewController.swift
//  Tipsy
//
//  Created by Daegeon Choi on 24/03/2020.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var calculateOptionLabel: UILabel!
    
    var result: String?
    var optionComment: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultLabel.text = result
        calculateOptionLabel.text = optionComment
    }
    
    @IBAction func recalculateBtnClicked(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
