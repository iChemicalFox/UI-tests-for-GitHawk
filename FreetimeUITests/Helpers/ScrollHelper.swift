//
//  ScrollHelper.swift
//  FreetimeUITests
//
//  Created by a.slonevskiy on 01/09/2019.
//

import XCTest

extension XCUIApplication {
    private struct Constants {
        // Half way accross the screen and 10% from top
        static let topOffset = CGVector(dx: 0.5, dy: 0.1)
        
        // Half way accross the screen and 80% from top
        static let bottomOffset = CGVector(dx: 0.5, dy: 0.8)
    }
    
    var screenTopCoordinate: XCUICoordinate {
        return windows.firstMatch.coordinate(withNormalizedOffset: Constants.topOffset)
    }
    
    var screenBottomCoordinate: XCUICoordinate {
        return windows.firstMatch.coordinate(withNormalizedOffset: Constants.bottomOffset)
    }
    
    func scrollDownToElement(element: XCUIElement, maxScrolls: Int = 10) {
        for _ in 0..<maxScrolls {
            if element.exists && element.isHittable {
                break
            }
            scrollDown()
        }
    }
    
    func scrollUpToElement(element: XCUIElement, maxScrolls: Int = 10) {
        for _ in 0..<maxScrolls {
            if element.exists && element.isHittable {
                break
            }
            scrollUp()
        }
    }
    
    func scrollDown() {
        screenBottomCoordinate.press(forDuration: 0.1, thenDragTo: screenTopCoordinate)
    }
    
    func scrollUp() {
        screenTopCoordinate.press(forDuration: 0.1, thenDragTo: screenBottomCoordinate)
    }
}

