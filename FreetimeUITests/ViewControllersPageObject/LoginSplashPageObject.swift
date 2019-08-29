//
//  LoginSplashPageObject.swift
//  FreetimeUITests
//
//  Created by a.slonevskiy on 26/08/2019.
//  Copyright © 2019 Ryan Nystrom. All rights reserved.
//

import XCTest

class LoginSplashPageObject: BasicPageObject {
    private(set) lazy var signInButton = ButtonPageObject(element: application.buttons[AILoginSplashViewController.signInButton.identifier])
    private(set) lazy var splashView = BasicControlElementsPageObject(element: application.images[AILoginSplashViewController.splashView.identifier])
    private(set) lazy var tokenAuthorizationButton = ButtonPageObject(element: application.buttons[AILoginSplashViewController.tokenAuthorizationButton.identifier])
    private(set) lazy var welcomeTitle = LabelPageObject(element: application.staticTexts[AILoginSplashViewController.welcomeTitle.identifier])
    private(set) lazy var welcomeText = LabelPageObject(element: application.staticTexts[AILoginSplashViewController.welcomeText.identifier])
    
    func tapPersonalTokenButton() -> PersonalAccessTokenAlertPageObject {
        tokenAuthorizationButton.waitForExistence(timeout: .short)
        tokenAuthorizationButton.tap()
        return PersonalAccessTokenAlertPageObject(application: application)
    }
}
