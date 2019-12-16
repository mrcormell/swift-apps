//
//  Car.swift
//  CarCustomize
//
//  Created by David Cormell on 16/12/2019.
//  Copyright © 2019 David Cormell. All rights reserved.
//

import Foundation

class Car {
    var topSpeed: Int
    var acceleration: Double
    var handling: Int
    
    init(topSpeed: Int, acceleration: Double, handling: Int) {
        self.topSpeed = topSpeed
        self.acceleration = acceleration
        self.handling = handling
    }
    
    func getStats() -> String {
        return """
            Top Speed: \(topSpeed)mph
            Acceleration (0-60 in): \(acceleration)s
            Handling: \(handling)
            """
    }

}
