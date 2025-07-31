//
//  ViewController.swift
//  Login Practice
//
//  Created by Aneet Kaur on 30/07/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var username: UITextField!
    
    @IBOutlet weak var forgotUsername: UIButton!
    
    @IBOutlet weak var forgotPassword: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: sender) {
        guard let sender = sender as? UIButton else { return }
        if sender == forgotPassword {
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == forgotUsername {
            segue.destination.navigationItem.title = "Forgot Username"
        } else {
            segue.destination.navigationItem.title =
            username.text
        }
        
    }
    
    override func performSegue(withIdentifier: "ForgotUsernameOrPassword", sender: sender) {
        
    }


}

