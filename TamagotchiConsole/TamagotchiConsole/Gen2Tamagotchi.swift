//
//  Gen2Tamagotchi.swift
//  TamagotchiConsole
//
//  Created by David Cormell on 02/12/2019.
//  Copyright © 2019 David Cormell. All rights reserved.
//

import Foundation

class Gen2Tamagotchi: Tamagotchi {
    let name: String
    
    init(name: String) {
        self.name = name
    }
    
    override func playGame() {
        print("\(name) is Playing Gen2 Game")
        weight -= 1
    }
}
