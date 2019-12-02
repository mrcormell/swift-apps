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

//polymorphism demo
let blueTamagotchi = Gen1Tamagotchi()
let redTamagotchi = Gen2Tamagotchi(name: "Amber")
let rainbowTamagotchi = Gen1Tamagotchi()

var myTamagotchis: [Tamagotchi] = [blueTamagotchi, redTamagotchi, rainbowTamagotchi]

for tamagotchi in myTamagotchis {
    tamagotchi.playGame()
}

