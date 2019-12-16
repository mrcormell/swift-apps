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
    @IBOutlet var engineExhaustPackage: UISwitch!
    @IBOutlet var driveTrainPackage: UISwitch!
    @IBOutlet var ecuFuelPackage: UISwitch!
    @IBOutlet var tiresPackage: UISwitch!
    
    var starterCars = StarterCars()
    var currentCar: Car?

    override func viewDidLoad() {
        super.viewDidLoad()
        selectRandomCar()
    }
    
    @IBAction func randomCar(_ sender: Any) {
        selectRandomCar()
    }
    
    @IBAction func toggleEngineExhaustPackage(_ sender: Any) {
        if engineExhaustPackage.isOn {
            currentCar?.acceleration -= 1
        } else {
            currentCar?.acceleration += 1
        }
        carStats.text = currentCar?.getStats()
    }
    
    @IBAction func toggleDriveTrainPackage(_ sender: Any) {
        if driveTrainPackage.isOn {
            currentCar?.topSpeed += 5
        } else {
            currentCar?.topSpeed -= 5
        }
        carStats.text = currentCar?.getStats()
    }
    
    @IBAction func toggleTiresPackage(_ sender: Any) {
        if tiresPackage.isOn {
            currentCar?.handling += 2
        } else {
            currentCar?.handling -= 2
        }
        carStats.text = currentCar?.getStats()
    }
    
    @IBAction func toggleEcuFuelPackage(_ sender: Any) {
        if ecuFuelPackage.isOn {
            currentCar?.topSpeed += 3
            currentCar?.acceleration -= 1.5
        } else {
            currentCar?.topSpeed -= 3
            currentCar?.acceleration += 1.5
        }
        carStats.text = currentCar?.getStats()
    }
    
    func selectRandomCar() {
        currentCar = starterCars.cars.randomElement()
        carStats.text = currentCar?.getStats()
        engineExhaustPackage.setOn(false, animated: true)
        ecuFuelPackage.setOn(false, animated: true)
        tiresPackage.setOn(false, animated: true)
        driveTrainPackage.setOn(false, animated: true)
    }
}

