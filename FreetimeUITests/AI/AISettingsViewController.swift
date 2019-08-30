//
//  AISettingsViewController.swift
//  FreetimeUITests
//
//  Created by a.slonevskiy on 30/08/2019.
//

import Foundation

final class AISettingsViewController:AccessibilityObject {
    private static let name = "SettingsViewController"
    
    static let pushCell = AccessibilityObject(prefix: AISettingsViewController.name, name: "PushCell")
    static let pushSwitch = AccessibilityObject(prefix: AISettingsViewController.name, name: "PushSwitch")
    static let badgeCell = AccessibilityObject(prefix: AISettingsViewController.name, name: "BadgeCell")
    static let badgeSwitch = AccessibilityObject(prefix: AISettingsViewController.name, name: "BadgeSwitch")
    static let apiStatusView = AccessibilityObject(prefix: AISettingsViewController.name, name: "ApiStatusView")
    static let reviewAccessCell = AccessibilityObject(prefix: AISettingsViewController.name, name: "ReviewAccessCell")
    static let githubStatusCell = AccessibilityObject(prefix: AISettingsViewController.name, name: "GithubStatusCell")
    static let reviewOnAppStoreCell = AccessibilityObject(prefix: AISettingsViewController.name, name: "ReviewOnAppStoreCell")
    static let tryTestFlightBetaCell = AccessibilityObject(prefix: AISettingsViewController.name, name: "TryTestFlightBetaCell")
    static let reportBugCell = AccessibilityObject(prefix: AISettingsViewController.name, name: "ReportBugCell")
    static let viewSourceCell = AccessibilityObject(prefix: AISettingsViewController.name, name: "ViewSourceCell")
    
}
