//
//  PersonalAccessTokenAlertPageObject.swift
//  FreetimeUITests
//
//  Created by a.slonevskiy on 28/08/2019.
//

import XCTest

final class PersonalAccessTokenAlertPageObject: BasicAlertPageObject {
    override var title: String { return "" }
    override var text: String { return "" }
    override var acceptButtonTitle: String { return "Sign in" }
    override var destructiveButtonTitle: String { return "" }
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
