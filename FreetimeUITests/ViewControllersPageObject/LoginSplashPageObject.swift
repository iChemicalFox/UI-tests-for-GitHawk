//
//  LoginSplashPageObject.swift
//  FreetimeUITests
//
//  Created by a.slonevskiy on 26/08/2019.
//  Copyright © 2019 Ryan Nystrom. All rights reserved.
//

import XCTest

final class LoginSplashPageObject: BasicPageObject {
    private(set) lazy var signInButton = ButtonPageObject(element: application.buttons[AILoginSplashViewController.signInButton.identifier])
    private(set) lazy var splashView = BasicControlElementsPageObject(element: application.otherElements[AILoginSplashViewController.splashView.identifier])
    private(set) lazy var tokenAuthorizationButton = ButtonPageObject(element: application.buttons[AILoginSplashViewController.tokenAuthorizationButton.identifier])
    private(set) lazy var welcomeTitle = LabelPageObject(element: application.staticTexts[AILoginSplashViewController.welcomeTitle.identifier])
    private(set) lazy var welcomeText = LabelPageObject(element: application.staticTexts[AILoginSplashViewController.welcomeText.identifier])
    
    @discardableResult
    func waitLoadingLoginSplashView() -> LoginSplashPageObject {
        splashView.waitForExistence(timeout: .medium)
        return self
    }
    
    @discardableResult
    func tapPersonalTokenButton() -> PersonalAccessTokenAlertPageObject {
        tokenAuthorizationButton.waitForExistence(timeout: .short)
        tokenAuthorizationButton.tap()
        return PersonalAccessTokenAlertPageObject(application: application)
    }
    
    @discardableResult
    func tapSignInWithGitHubButton() -> PermissionAlert {
        signInButton.waitForExistence(timeout: .short)
        signInButton.tap()
        return PermissionAlert(application: application)
    }
}
