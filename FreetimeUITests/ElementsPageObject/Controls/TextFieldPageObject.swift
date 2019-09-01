//
//  TextFieldPageObject.swift
//  FreetimeUITests
//
//  Created by a.slonevskiy on 28/08/2019.
//

import XCTest

class TextFieldPageObject: BasicControlElementsPageObject {
    var title: String {
        return element.label
    }
    
    func tap() {
        element.tap()
    }
    
    func typeText(text: String) {
        element.typeText(text)
    }
}
