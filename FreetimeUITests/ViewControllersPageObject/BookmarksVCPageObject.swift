//
//  BookmarksVCPageObject.swift
//  FreetimeUITests
//
//  Created by a.slonevskiy on 29/08/2019.
//

import XCTest

final class BookmarksVCPageObject: BasicPageObject {
    private(set) lazy var navigationBarTitle = LabelPageObject(element: application.navigationBars.staticTexts["Bookmarks"])
}
