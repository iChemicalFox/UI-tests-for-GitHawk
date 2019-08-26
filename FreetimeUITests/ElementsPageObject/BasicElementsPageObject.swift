//
//  BasicElementsPageObject.swift
//  FreetimeUITests
//
//  Created by a.slonevskiy on 26/08/2019.
//  Copyright © 2019 Ryan Nystrom. All rights reserved.
//

import XCTest

class BasicElementsPageObject: XCTest {
    let element: XCUIElement
    
    init(element: XCUIElement) {
        self.element = element
    }
    
    var isExist: Bool {
        return element.exists
    }
    
    var isHittable: Bool {
        return element.isHittable
    }
    
    var isVisible: Bool {
        return isExist && isHittable
    }
    
    var height: Double {
        return Double(element.frame.height)
    }
    
    @discardableResult
    func waitForExistence(timeout: WaitForExistenceTimeout) -> Bool {
        return element.waitForExistence(timeout: timeout.rawValue)
    }
}
