//
//  ElementsOnViewControllerTests.swift
//  FreetimeUITests
//
//  Created by a.slonevskiy on 28/08/2019.
//

import XCTest

final class ElementsOnViewControllerTests: BasicTests {
    private lazy var loginSplashPageObject = LoginSplashPageObject(application: application)
    private lazy var alertPageObject = BasicAlertPageObject(application: application)
    private lazy var personalTokenAlert = PersonalAccessTokenAlertPageObject(application: application)
    
    
    func testAuthorizationWithToken() {
        loginSplashPageObject
            .tapPersonalTokenButton()
            .authorizationWithToken(token: .correctToken)
        TabbarPageObject(application: application).searchButton.tap()
        TabbarPageObject(application: application).bookmarksButton.tap()
        TabbarPageObject(application: application).settingsButton.tap()
    }
}
