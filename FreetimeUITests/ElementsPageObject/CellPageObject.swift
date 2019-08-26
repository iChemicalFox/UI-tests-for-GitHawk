//
//  CellPageObject.swift
//  FreetimeUITests
//
//  Created by a.slonevskiy on 26/08/2019.
//  Copyright © 2019 Ryan Nystrom. All rights reserved.
//

import XCTest

class CellPageObject: BasicElementsPageObject {
    var title: String {
        return element.label
    }
    
    func tap() {
        element.tap()
    }
}
