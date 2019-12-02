//
//  main.swift
//  TamagotchiConsole
//
//  Created by David Cormell on 02/12/2019.
//  Copyright © 2019 David Cormell. All rights reserved.
//

import Foundation

let myTamagotchi = Tamagotchi()

print("The age of my tamagotchi is: \(myTamagotchi.age)")
myTamagotchi.age = 10
myTamagotchi.happy = 55
myTamagotchi.eatMeal()
myTamagotchi.eatSnack()
myTamagotchi.playGame()
myTamagotchi.displayStats()

