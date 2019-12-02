//
//  TamagotchiTest.swift
//  TamagotchiConsoleTests
//
//  Created by David Cormell on 02/12/2019.
//  Copyright © 2019 David Cormell. All rights reserved.
//

import XCTest

class TamagotchiTest: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testTamagotchiWithNoArgsSetsDefaultValuesAndReturnsNonNilObject() {
        //arrange
        //act
        let tamagotchi = Tamagotchi()
        //assert
        XCTAssertNotNil(tamagotchi)
        XCTAssertEqual(tamagotchi.weight, 5)
        XCTAssertEqual(tamagotchi.hungry, 0)
        XCTAssertEqual(tamagotchi.happy, 0)
    }
    
    func testEatSnackIncreasesHappinessBy1AndIncreasesWeightBy2() {
        //arrange
        let tamagotchi = Tamagotchi()
        //act
        tamagotchi.eatSnack()
        //assert
        XCTAssertEqual(tamagotchi.weight, 7)
        XCTAssertEqual(tamagotchi.happy, 1)
        
    }

}
