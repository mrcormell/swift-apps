//
//  CarCustomizeUITests.swift
//  CarCustomizeUITests
//
//  Created by David Cormell on 16/12/2019.
//  Copyright © 2019 David Cormell. All rights reserved.
//

import XCTest

class CarCustomizeUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testCannotBuyMoreThanJustDrivetrainAndExhaustPackages() {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        app.switches["engineExhaustPackage"].tap()
        app.switches["driveTrainPackage"].tap()
        
        XCTAssertEqual(app.switches["tiresPackage"].isEnabled, false)
        XCTAssertEqual(app.switches["ecuFuelPackage"].isEnabled, false)
        
    }

    func testLaunchPerformance() {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
                XCUIApplication().launch()
            }
        }
    }
}
