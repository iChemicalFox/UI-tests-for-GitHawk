//
//  SwitchPageObject.swift
//  FreetimeUITests
//
//  Created by a.slonevskiy on 30/08/2019.
//

import XCTest

final class SwitchPageObject: BasicControlElementsPageObject {
    func isOn() -> Bool {
        let value = element.value.debugDescription
        if value == "Optional(1)" {
            return true
        } else {
            return false
        }
    }
    
    func tap() {
        return element.tap()
    }
}

