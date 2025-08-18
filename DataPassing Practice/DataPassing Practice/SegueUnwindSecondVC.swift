//
//  SegueUnwindSecondVC.swift
//  DataPassing Practice
//
//  Created by Student on 08/08/25.
//

import UIKit

class IBSegueActionUnwindSecondVC: UIViewController {

    @IBOutlet weak var secondDataTextView: UITextField!
    var dataFromFirstVC: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let dataFromFirstVC = dataFromFirstVC {
            navigationItem.title = dataFromFirstVC
        }
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
