//
//  ViewController.swift
//  Segue
//
//  Created by Aneet Kaur on 18/07/25.
//

import UIKit

class ViewController: UIViewController {

//    @IBOutlet weak var textfield: UITextField!
    @IBOutlet weak var toggleSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func unwindToRed(unwindSegue: UIStoryboardSegue) {
        
    }


    @IBAction func goToYellowButtonTapped(_ sender: UIButton) {
        if toggleSwitch.isOn {
            performSegue(withIdentifier: "red", sender: nil)
        }
    }
}

