//
//  WaitForExistenceTimeout.swift
//  FreetimeUITests
//
//  Created by a.slonevskiy on 26/08/2019.
//  Copyright © 2019 Ryan Nystrom. All rights reserved.
//

import XCTest

enum WaitForExistenceTimeout: TimeInterval {
    case long = 15
    case medium = 10
    case short = 5
}
