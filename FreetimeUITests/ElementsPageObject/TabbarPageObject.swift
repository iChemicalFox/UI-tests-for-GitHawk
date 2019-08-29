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
}
