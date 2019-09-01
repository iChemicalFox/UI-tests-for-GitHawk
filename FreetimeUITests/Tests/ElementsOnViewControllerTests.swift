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
    private lazy var tabbar = TabbarPageObject(application: application)
    
    
}
