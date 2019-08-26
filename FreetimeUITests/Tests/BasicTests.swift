//
//  BasicTests.swift
//  FreetimeUITests
//
//  Created by a.slonevskiy on 26/08/2019.
//  Copyright © 2019 Ryan Nystrom. All rights reserved.
//

import XCTest

class BasicTests: XCTestCase {
    let application = XCUIApplication()

    override func setUp() {
        super.setUp()
        application.launch()
        continueAfterFailure = false
    }

    override func tearDown() {
        application.terminate()
        super.tearDown()
    }
}
