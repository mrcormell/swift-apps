//
//  ViewController.swift
//  CoordinatorPattern
//
//  Created by David Cormell on 04/12/2019.
//  Copyright © 2019 David Cormell. All rights reserved.
//

import UIKit

class ViewController: UIViewController, Storyboarded {

    var coordinator: MainCoordinator?
    
    @IBAction func createAccount(_ sender: Any) {
        coordinator?.createAccount()
    }
    @IBAction func buyTapped(_ sender: Any) {
        coordinator?.buySubscription()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

