//
//  SearchVCPageObject.swift
//  FreetimeUITests
//
//  Created by a.slonevskiy on 29/08/2019.
//

import XCTest

final class SearchVCPageObject: BasicPageObject {
    private(set) lazy var navigationBarSearchField = TextFieldPageObject(element: application.navigationBars.searchFields["Search GitHub"])
}
