//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Josh Satriano on 12/17/19.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    var bmiValue: String?
    var color: UIColor?
    var advice: String?
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        adviceLabel.text = advice
        self.view.backgroundColor = color
        bmiLabel.text = bmiValue
    }

    @IBAction func recalculatePressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
