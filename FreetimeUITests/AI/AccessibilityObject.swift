//
//  AccessibilityObject.swift
//  Freetime
//
//  Created by a.slonevskiy on 26/08/2019.
//  Copyright © 2019 Ryan Nystrom. All rights reserved.
//

import Foundation

class AccessibilityObject: NSObject {
    let identifier: String
    
    init(prefix: String? = nil, name: String) {
        if let prefix = prefix {
            self.identifier = "\(prefix).\(name)"
        } else {
            self.identifier = name
        }
        super.init()
    }
}
