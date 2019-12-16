//
//  ViewController.swift
//  CarCustomize
//
//  Created by David Cormell on 16/12/2019.
//  Copyright © 2019 David Cormell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var carStats: UILabel!
    
    let currentCar: Car = Car(topSpeed: 125, acceleration: 7.7, handling: 5)

    override func viewDidLoad() {
        super.viewDidLoad()
        carStats.text = currentCar.getStats()
    }


}

