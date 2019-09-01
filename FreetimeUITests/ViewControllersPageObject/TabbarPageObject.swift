//
//  TabbarPageObject.swift
//  FreetimeUITests
//
//  Created by a.slonevskiy on 29/08/2019.
//

import XCTest

final class TabbarPageObject:BasicPageObject {    
    private(set) lazy var inboxButton = ButtonPageObject(element: application.tabBars.buttons["Inbox"])
    private(set) lazy var searchButton = ButtonPageObject(element: application.tabBars.buttons["Search"])
    private(set) lazy var bookmarksButton = ButtonPageObject(element: application.tabBars.buttons["Bookmarks"])
    private(set) lazy var settingsButton = ButtonPageObject(element: application.tabBars.buttons["Settings"])
    
    @discardableResult
    func tapOnInboxButton() -> NotificationsVCPageObject {
        inboxButton.waitForExistence(timeout: .short)
        inboxButton.tap()
        return NotificationsVCPageObject(application: application)
    }
    
    @discardableResult
    func tapOnSearchButton() -> SearchVCPageObject {
        searchButton.waitForExistence(timeout: .short)
        searchButton.tap()
        return SearchVCPageObject(application: application)
    }
    
    @discardableResult
    func tapOnBookmarksButton() -> BookmarksVCPageObject {
        bookmarksButton.waitForExistence(timeout: .short)
        bookmarksButton.tap()
        return BookmarksVCPageObject(application: application)
    }
    
    @discardableResult
    func tapOnSettingsButton() -> SettingsVCPageObject {
        settingsButton.waitForExistence(timeout: .short)
        settingsButton.tap()
        return SettingsVCPageObject(application: application)
    }
}
