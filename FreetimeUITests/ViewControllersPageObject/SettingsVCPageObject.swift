//
//  SettingsVCPageObject.swift
//  FreetimeUITests
//
//  Created by a.slonevskiy on 29/08/2019.
//

import XCTest

class SettingsVCPageObject: BasicPageObject {
    private(set) lazy var navigationBarTitle = LabelPageObject(element: application.navigationBars.staticTexts["Settings"])
}
