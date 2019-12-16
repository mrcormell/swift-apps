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
    @IBOutlet var remainingFundsDisplay: UILabel!
    @IBOutlet var remainingTimeDisplay: UILabel!
    
    var timer: Timer?
    var starterCars = StarterCars()
    var currentCar: Car?
    var remainingFunds = 1000
    var remainingTime = 30
    var currentCarIndex = 0 {
        didSet(oldIndex) {
            if oldIndex >= starterCars.cars.count - 1 {
                currentCarIndex = 0
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        currentCar = starterCars.cars[currentCarIndex]
        remainingTimeDisplay.text = "\(remainingTime)"
        updateDisplay()
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(countdown), userInfo: nil, repeats: true)
    }
    
    @IBAction func randomCar(_ sender: Any) {
        resetAndNextCar()
    }
    
    @IBAction func toggleEngineExhaustPackage(_ sender: Any) {
        if engineExhaustPackage.isOn {
            currentCar?.acceleration -= 1
            remainingFunds -= 500
        } else {
            currentCar?.acceleration += 1
            remainingFunds += 500
        }
        updateDisplay()
    }
    
    @IBAction func toggleDriveTrainPackage(_ sender: Any) {
        if driveTrainPackage.isOn {
            currentCar?.topSpeed += 5
            remainingFunds -= 500
        } else {
            currentCar?.topSpeed -= 5
            remainingFunds += 500
        }
        updateDisplay()
    }
    
    @IBAction func toggleTiresPackage(_ sender: Any) {
        if tiresPackage.isOn {
            currentCar?.handling += 2
            remainingFunds -= 500
        } else {
            currentCar?.handling -= 2
            remainingFunds += 500
        }
        updateDisplay()
    }
    
    @IBAction func toggleEcuFuelPackage(_ sender: Any) {
        if ecuFuelPackage.isOn {
            currentCar?.topSpeed += 3
            currentCar?.acceleration -= 1.5
            remainingFunds -= 1000
        } else {
            currentCar?.topSpeed -= 3
            currentCar?.acceleration += 1.5
            remainingFunds += 1000
        }
        updateDisplay()
    }
    
    func resetAndNextCar() {
        remainingFunds = 1000
        currentCarIndex += 1
        currentCar = starterCars.cars[currentCarIndex % starterCars.cars.count]
        engineExhaustPackage.setOn(false, animated: true)
        ecuFuelPackage.setOn(false, animated: true)
        tiresPackage.setOn(false, animated: true)
        driveTrainPackage.setOn(false, animated: true)
        updateDisplay()
    }
    
    func updateDisplay() {
        carStats.text = currentCar?.getStats()
        checkRemainingFunds()
        remainingFundsDisplay.text = "Remaining Funds: \(remainingFunds)"
    }
    
    func checkRemainingFunds() {
        if remainingFunds < 500 {
            if !engineExhaustPackage.isOn { engineExhaustPackage.isEnabled = false }
            if !tiresPackage.isOn { tiresPackage.isEnabled = false }
            if !driveTrainPackage.isOn { driveTrainPackage.isEnabled = false }
        } else if remainingFunds < 1000 {
            if !ecuFuelPackage.isOn { ecuFuelPackage.isEnabled = false }
        } else {
            engineExhaustPackage.isEnabled = true
            tiresPackage.isEnabled = true
            driveTrainPackage.isEnabled = true
            ecuFuelPackage.isEnabled = true
        }
    }
    
    @objc func countdown() {
        if remainingTime > 0 {
            remainingTime -= 1
            remainingTimeDisplay.text = "\(remainingTime)"
        } else {
            //do anything specific at end of timer, like move to another screen
            //destroy the timer
            timer?.invalidate()
        }
    }
}

