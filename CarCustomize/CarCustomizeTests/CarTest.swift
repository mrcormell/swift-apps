//
//  CarTest.swift
//  CarCustomizeTests
//
//  Created by David Cormell on 16/12/2019.
//  Copyright © 2019 David Cormell. All rights reserved.
//

import XCTest

class CarTest: XCTestCase {

    func testCarGetStatsAsPerPropertyValues() {
        //arrange
        let car = Car(make: "Mazda", model: "MX-5", topSpeed: 100, acceleration: 7.5, handling: 3)
        let expected = """
        Make: Mazda
        Model: MX-5
        Top Speed: 100mph
        Acceleration (0-60 in): 7.5s
        Handling: 3
        """
        //act
        let actual = car.getStats()
        //assert
        XCTAssertEqual(actual, expected)
    }

}
