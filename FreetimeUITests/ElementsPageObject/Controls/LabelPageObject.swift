//
//  LabelPageObject.swift
//  FreetimeUITests
//
//  Created by a.slonevskiy on 26/08/2019.
//  Copyright © 2019 Ryan Nystrom. All rights reserved.
//

import XCTest

final class LabelPageObject: BasicControlElementsPageObject {
    var title: String {
        return element.label
    }
}
