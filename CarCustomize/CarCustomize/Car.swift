//
//  Car.swift
//  CarCustomize
//
//  Created by David Cormell on 16/12/2019.
//  Copyright © 2019 David Cormell. All rights reserved.
//

import Foundation

class Car {
    var make: String
    var model: String
    var topSpeed: Int
    var acceleration: Double
    var handling: Int
    
    init(make: String, model: String, topSpeed: Int, acceleration: Double, handling: Int) {
        self.make = make
        self.model = model
        self.topSpeed = topSpeed
        self.acceleration = acceleration
        self.handling = handling
    }
    
    func getStats() -> String {
        return """
            Make: \(make)
            Model: \(model)
            Top Speed: \(topSpeed)mph
            Acceleration (0-60 in): \(acceleration)s
            Handling: \(handling)
            """
    }

}
