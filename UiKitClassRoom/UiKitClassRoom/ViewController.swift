//
//  ViewController.swift
//  UiKitClassRoom
//
//  Created by Aneet Kaur on 15/07/25.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var universityLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tapMeButton(_ sender: UIButton) {
        print("Button is Tapped")
        universityLabel.text = "iOS Department"
    }
    
    @IBAction func wifiToggle(_ sender: UISwitch) {
        if sender.isOn {
            print("Wi-Fi is On")
        }
        else {
            print("Wi-Fi is Off")
        }
    }
    
    @IBAction func volumeChanged(_ sender: UISlider) {
        print(sender.value)
    }
    
    @IBAction func editingChanged(_ sender: UITextField) {
        if let text = sender.text {
            print(text)
        }
    }
    
    @IBAction func actionTriggered(_ sender: UITextField) {
        if let text = sender.text {
            print(text)
        }
    }
    

}

