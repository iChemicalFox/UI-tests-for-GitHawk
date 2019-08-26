//
//  LoginSplashPageObject.swift
//  FreetimeUITests
//
//  Created by a.slonevskiy on 26/08/2019.
//  Copyright © 2019 Ryan Nystrom. All rights reserved.
//

import XCTest

class LoginSplashPageObject: BasicPageObject {
    private(set) lazy var signInButton = ButtonPageObject(element: application.buttons[AILoginSplashViewController.signInButton.identifier])
//    private(set) lazy var splashView
}
