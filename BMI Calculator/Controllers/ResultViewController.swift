//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Mac Book on 7/9/25.
//  Copyright © 2025 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    var bmiValue: String?
    var advised: String?
    var color: UIColor?
    
    @IBOutlet weak var advisedLable: UILabel!
    
    @IBOutlet weak var bmiLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue
        advisedLable.text = advised
        view.backgroundColor = color

        
    }
    
    @IBAction func recalculatedPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
   

}
