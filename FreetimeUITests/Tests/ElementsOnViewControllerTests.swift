//
//  ElementsOnViewControllerTests.swift
//  FreetimeUITests
//
//  Created by a.slonevskiy on 28/08/2019.
//

import XCTest

final class ElementsOnViewControllerTests: BasicTests {
    private lazy var loginSplashView = LoginSplashPageObject(application: application)
    private lazy var wantToUseGitHubAlert = PermissionAlert(application: application)
    private lazy var personalTokenAlert = PersonalAccessTokenAlertPageObject(application: application)
    private lazy var notificationsView = NotificationsVCPageObject(application: application)
    private lazy var searchView = SearchVCPageObject(application: application)
    private lazy var bookmarksView = BookmarksVCPageObject(application: application)
    private lazy var settingsView = SettingsVCPageObject(application: application)
    private lazy var tabbar = TabbarPageObject(application: application)
    
    func testCheckElementsOnLoginSplashView() {
        loginSplashView
            .waitLoadingLoginSplashView()
        XCTAssertTrue(loginSplashView.splashView.isExist && loginSplashView.signInButton.isVisible && loginSplashView.welcomeTitle.isVisible && loginSplashView.welcomeText.isVisible && loginSplashView.tokenAuthorizationButton.isVisible)
    }
    
    func testSignInWithGitHubButton() {
        loginSplashView
            .tapSignInWithGitHubButton()
        XCTAssertTrue(wantToUseGitHubAlert.acceptButton.isVisible && wantToUseGitHubAlert.rejectButton.isVisible)
    }
    
    func testPersonalTokenButton() {
        loginSplashView
            .tapPersonalTokenButton()
        XCTAssertTrue(personalTokenAlert.title.isVisible && personalTokenAlert.text.isVisible && personalTokenAlert.textField.isVisible && personalTokenAlert.acceptButton.isVisible && personalTokenAlert.rejectButton.isVisible)
    }
    
    func testCheckElementsOnNotificationsView() {
        loginSplashView
            .tapPersonalTokenButton()
            .authorizationWithToken(token: .correctToken)
        tabbar
            .tapOnInboxButton()
        XCTAssertTrue(notificationsView.navigationBarButton.waitForExistence(timeout: .medium))
    }
    
    func testCheckElementsOnSearchView() {
        loginSplashView
            .tapPersonalTokenButton()
            .authorizationWithToken(token: .correctToken)
        tabbar
            .tapOnSearchButton()
        XCTAssertTrue(searchView.navigationBarSearchField.waitForExistence(timeout: .medium))
    }
    
    func testCheckElementsOnBookmarksView() {
        loginSplashView
            .tapPersonalTokenButton()
            .authorizationWithToken(token: .correctToken)
        tabbar
            .tapOnBookmarksButton()
        XCTAssertTrue(bookmarksView.navigationBarTitle.waitForExistence(timeout: .medium))
    }
    
    func testCheckElementsOnSettingsView() {
        loginSplashView
            .tapPersonalTokenButton()
            .authorizationWithToken(token: .correctToken)
        tabbar
            .tapOnSettingsButton()
        XCTAssertTrue(settingsView.navigationBarTitle.waitForExistence(timeout: .short))
        XCTAssertTrue(settingsView.reviewAccessCell.isVisible && settingsView.accountsCell.isVisible && settingsView.githubStatusCell.isVisible)
        XCTAssertTrue(settingsView.reportBugCell.isVisible && settingsView.viewSourceCell.isVisible && settingsView.setDefaultReactionCell.isVisible)
        settingsView
            .scrollToBottomSettingsView()
        XCTAssertTrue(settingsView.badgeSwitch.isVisible && settingsView.pushSwitch.isVisible && settingsView.markReadSwitch.isVisible && settingsView.signatureSwitch.isVisible && settingsView.openExternalLinksSwitch.isVisible)
        XCTAssertTrue(settingsView.reviewOnAppStoreCell.isVisible && settingsView.tryTestFlightBetaCell.isVisible && settingsView.signOutCell.isVisible)
    }
}
