//
//  ViewController.swift
//  BMICalculator
//
//  Created by Aneet Kaur on 14/07/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var weightTextField: UITextField!
    
    @IBOutlet weak var heightTextField: UITextField!
    
    @IBOutlet weak var calculatedBMI: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func calculateButtonPressed(_ sender: Any) {
        let weightString = weightTextField.text ?? ""
        let weight = Float(weightString) ?? 0
                            
        let heightString = heightTextField.text ?? ""
        let height = Float(heightString) ?? 0
        
        let bmi = weight / (height * height)
    
        
        calculatedBMI.text = "BMI is: " + String(format: "%.2f",bmi)
    }
    
}

