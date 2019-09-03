//
//  PermissionAlert.swift
//  FreetimeUITests
//
//  Created by a.slonevskiy on 01/09/2019.
//

import XCTest

final class PermissionAlert: BasicPageObject {
    let springboard = XCUIApplication(bundleIdentifier: "com.apple.springboard")
    
    private(set) lazy var acceptButton = ButtonPageObject(element: springboard.buttons["Continue"])
    private(set) lazy var rejectButton = ButtonPageObject(element: springboard.buttons["Cancel"])
    
    func continueToGitHubAuthorization() {
        acceptButton.waitForExistence(timeout: .short)
        acceptButton.tap()
    }
}
