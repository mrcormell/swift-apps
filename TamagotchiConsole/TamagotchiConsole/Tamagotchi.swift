//
//  Tamagotchi.swift
//  TamagotchiConsole
//
//  Created by David Cormell on 02/12/2019.
//  Copyright © 2019 David Cormell. All rights reserved.
//

import Foundation

class Tamagotchi {
    var age: Int
    var weight: Int {
        didSet {
            if weight > 99 {
                weight = 99
            } else if weight < 0 {
                weight = 0
            }
        }
    }
    var discipline: Int
    var hungry: Int
    var happy: Int
    var needsAttention: Bool
    var isIll: Bool
    
    init() {
        age = 0
        weight = 5
        discipline = 0
        hungry = 0
        happy = 0
        needsAttention = false
        isIll = false
    }
    
    func eatSnack() {
        happy += 1
        weight += 2
        
        print("Yum! But...a moment on the lips is a lifetime on the hips...")
    }
    
    func eatMeal() {
        hungry = 4
        weight += 1
        
        print("Mmmmm...I'm full!")
    }
    
    func playGame() {
        print("Playing a fun game...")
        weight -= 1
    }
    
    func displayStats() {
        print("-----STATS------")
        print("Age: \(age)")
        print("Weight: \(weight)Lbs")
        print("Discipline: \(discipline)%")
        print("Hungry (out of 4): \(hungry)")
        print("Happy (out of 4): \(happy)")
        print("----------------")
    }

}

