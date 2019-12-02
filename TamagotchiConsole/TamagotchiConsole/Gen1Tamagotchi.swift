//
//  Gen1Tamagotchi.swift
//  TamagotchiConsole
//
//  Created by David Cormell on 02/12/2019.
//  Copyright © 2019 David Cormell. All rights reserved.
//

import Foundation

class Gen1Tamagotchi: Tamagotchi {
    override func playGame() {
        print("Playing Gen1 Game")
        weight -= 1
    }
}
