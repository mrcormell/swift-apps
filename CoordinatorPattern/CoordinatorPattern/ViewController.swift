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
    
    @IBOutlet var product: UISegmentedControl!
    @IBAction func createAccount(_ sender: Any) {
        coordinator?.createAccount()
    }
    @IBAction func buyTapped(_ sender: Any) {
        coordinator?.buySubscription(to: product.selectedSegmentIndex)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

