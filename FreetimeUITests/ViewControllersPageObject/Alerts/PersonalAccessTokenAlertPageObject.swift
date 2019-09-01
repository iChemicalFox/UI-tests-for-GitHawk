//
//  PersonalAccessTokenAlertPageObject.swift
//  FreetimeUITests
//
//  Created by a.slonevskiy on 28/08/2019.
//

import XCTest

final class PersonalAccessTokenAlertPageObject: BasicPageObject {
    private(set) lazy var title = LabelPageObject(element: application.alerts.staticTexts["Personal Access Token"])
    private(set) lazy var text = LabelPageObject(element: application.alerts.staticTexts["Sign in with a Personal Access Token with both repo and user scopes."])
    private(set) lazy var acceptButton = ButtonPageObject(element: application.alerts.buttons["Sign in"])
    private(set) lazy var rejectButton = ButtonPageObject(element: application.alerts.buttons["Cancel"])
    private(set) lazy var textField = TextFieldPageObject(element: application.alerts.textFields.firstMatch)
    
    @discardableResult
    func authorizationWithToken(token: AuthorizationTokens) -> NotificationsVCPageObject {
        acceptButton.waitForExistence(timeout: .short)
        textField.typeText(text: token.rawValue)
        acceptButton.tap()
        return NotificationsVCPageObject(application: application)
    }
}
