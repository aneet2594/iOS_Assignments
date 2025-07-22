//
//  ViewController.swift
//  UI Toolbar
//
//  Created by Aneet Kaur on 21/07/25.
//

import UIKit

class PinkViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tabBarItem.badgeValue = "10"
    }
override func viewWillDisappear(_ animated: Bool) {
    super
        .viewWillDisappear(animated)
    tabBarItem.badgeValue = nil
    }

}

