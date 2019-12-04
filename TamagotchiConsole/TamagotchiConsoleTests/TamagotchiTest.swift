//
//  TamagotchiTest.swift
//  TamagotchiConsoleTests
//
//  Created by David Cormell on 02/12/2019.
//  Copyright © 2019 David Cormell. All rights reserved.
//

import XCTest

class TamagotchiTest: XCTestCase {
    var tamagotchi: Tamagotchi!

    override func setUp() {
        tamagotchi = Tamagotchi()
    }

    override func tearDown() {
        tamagotchi = nil
    }

    func testTamagotchiIsNonNilWithDefaultValuesSet() {
        //arrange
        //act
        //assert
        XCTAssertNotNil(tamagotchi)
        XCTAssertEqual(tamagotchi.age, 0)
        XCTAssertEqual(tamagotchi.weight, 5)
        XCTAssertEqual(tamagotchi.discipline, 0)
        XCTAssertEqual(tamagotchi.hungry, 0)
        XCTAssertEqual(tamagotchi.happy, 0)
        XCTAssertFalse(tamagotchi.needsAttention)
        XCTAssertFalse(tamagotchi.isIll)
    }
    
    func testEatSnackIncreasesHappinessBy1AndIncreasesWeightBy2() {
        //arrange
        let weight = tamagotchi.weight
        let happiness = tamagotchi.happy
        
        //act
        tamagotchi.eatSnack()
        //assert
        XCTAssertEqual(tamagotchi.weight, weight + 2)
        XCTAssertEqual(tamagotchi.happy, happiness + 1)
    }
    
    func testEatMealSetsHungerTo4AndIncreasesWeightBy1() {
        //arrange
        let weight = tamagotchi.weight
        //act
        tamagotchi.eatMeal()
        //assert
        XCTAssertEqual(tamagotchi.hungry, 4)
        XCTAssertEqual(tamagotchi.weight, weight + 1)
    }
    
    func testWeightWithNegativeValueSetsTo0() {
        //arrange
        //act
        tamagotchi.weight = -5
        
        //assert
        XCTAssertEqual(tamagotchi.weight, 0)
    }
    
    func testWeightWithNumberOver99SetsValueTo99() {
        //arrange
        let weight = Int.random(in: 100...Int.max)
        //act
        tamagotchi.weight = weight
        //assert
        XCTAssertEqual(tamagotchi.weight, 99)
    }
    
    func testPlayGameWithPositiveWeightReducesWeightBy1() {
        //arrange
        tamagotchi.weight = 10
        let weight = tamagotchi.weight
        //act
        tamagotchi.playGame()
        //assert
        XCTAssertEqual(tamagotchi.weight, weight - 1)
    }

}
