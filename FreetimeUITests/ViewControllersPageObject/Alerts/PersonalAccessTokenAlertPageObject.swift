//
//  PersonalAccessTokenAlertPageObject.swift
//  FreetimeUITests
//
//  Created by a.slonevskiy on 28/08/2019.
//

import XCTest

final class PersonalAccessTokenAlertPageObject: BasicAlertPageObject {
    override var title: String { return "Personal Access Token" }
    override var text: String { return "Sign in with a Personal Access Token with both repo and user scopes" }
    override var acceptButtonTitle: String { return "Sign in" }
    lazy var textField = TextFieldPageObject(element: application.alerts.textFields.firstMatch)
    
    @discardableResult
    func authorizationWithToken(token: AuthorizationTokens) -> NotificationsVCPageObject {
        let alertButton = ButtonPageObject(element: application.buttons[acceptButtonTitle])
        alertButton.waitForExistence(timeout: .short)
        textField.typeText(text: token.rawValue)
        alertButton.tap()
        return NotificationsVCPageObject(application: application)
    }
}
