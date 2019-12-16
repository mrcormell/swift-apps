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
    
    var starterCars = StarterCars()
    var currentCar: Car?
    var remainingFunds = 1000

    override func viewDidLoad() {
        super.viewDidLoad()
        resetAndSelectRandomCar()
    }
    
    @IBAction func randomCar(_ sender: Any) {
        resetAndSelectRandomCar()
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
    
    func resetAndSelectRandomCar() {
        remainingFunds = 1000
        currentCar = starterCars.cars.randomElement()
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
}

