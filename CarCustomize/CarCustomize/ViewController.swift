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
    
    var starterCars = StarterCars()
    var currentCar: Car?

    override func viewDidLoad() {
        super.viewDidLoad()
        selectRandomCar()
    }
    
    @IBAction func randomCar(_ sender: Any) {
        selectRandomCar()
    }
    
    func selectRandomCar() {
        currentCar = starterCars.cars.randomElement()
        carStats.text = currentCar?.getStats()
    }
}

