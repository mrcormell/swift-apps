//
//  Tamagotchi.swift
//  TamagotchiConsole
//
//  Created by David Cormell on 02/12/2019.
//  Copyright © 2019 David Cormell. All rights reserved.
//

import Foundation

public class Tamagotchi {
    var hungry: Int = 0
    var happy: Int = 0
    var weight: Int = 5
    
    func eatSnack() {
        happy += 1
        weight += 2
        print("A moment on the lips; a lifetime on the hips")
    }
}
