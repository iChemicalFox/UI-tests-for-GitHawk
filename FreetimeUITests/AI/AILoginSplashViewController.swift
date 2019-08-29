//
//  AILoginSplashViewController.swift
//  Freetime
//
//  Created by a.slonevskiy on 26/08/2019.
//  Copyright © 2019 Ryan Nystrom. All rights reserved.
//

import Foundation

final class AILoginSplashViewController: AccessibilityObject {
    private static let name = "LoginSplashViewController"
    
    static let signInButton = AccessibilityObject(prefix: AILoginSplashViewController.name, name: "SignInButton")
    static let splashView = AccessibilityObject(prefix: AILoginSplashViewController.name, name: "SplashView")
    static let welcomeTitle = AccessibilityObject(prefix: AILoginSplashViewController.name, name: "WelcomeTitle")
    static let welcomeText = AccessibilityObject(prefix: AILoginSplashViewController.name, name: "WelcomeText")
    static let tokenAuthorizationButton = AccessibilityObject(prefix: AILoginSplashViewController.name, name: "TokenAuthorizationButton")
}
