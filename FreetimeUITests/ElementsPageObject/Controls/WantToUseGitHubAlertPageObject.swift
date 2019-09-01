//
//  WantToUseGitHubAlertPageObject.swift
//  FreetimeUITests
//
//  Created by a.slonevskiy on 01/09/2019.
//

import XCTest

final class WantToUseGitHubAlertPageObject: BasicAlertPageObject {
    override var title: String { return "Freetime Wants to Use github.com to Sign In" }
    override var text: String { return "This allows the app and website to share information about you" }
    override var acceptButtonTitle: String { return "Continue" }
}
