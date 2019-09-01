//
//  SettingsVCPageObject.swift
//  FreetimeUITests
//
//  Created by a.slonevskiy on 29/08/2019.
//

import XCTest

class SettingsVCPageObject: BasicPageObject {
    private(set) lazy var navigationBarTitle = LabelPageObject(element: application.navigationBars.staticTexts["Settings"])
    
    private(set) lazy var pushCell = CellPageObject(element: application.cells[AISettingsViewController.pushCell.identifier])
    private(set) lazy var pushSwitch = SwitchPageObject(element: application.switches[AISettingsViewController.pushSwitch.identifier])
    private(set) lazy var badgeCell = CellPageObject(element: application.cells[AISettingsViewController.badgeCell.identifier])
    private(set) lazy var badgeSwitch = SwitchPageObject(element: application.switches[AISettingsViewController.badgeSwitch.identifier])
    private(set) lazy var reviewAccessCell = CellPageObject(element: application.cells[AISettingsViewController.reviewAccessCell.identifier])
    private(set) lazy var githubStatusCell = CellPageObject(element: application.cells[AISettingsViewController.githubStatusCell.identifier])
    private(set) lazy var reviewOnAppStoreCell = CellPageObject(element: application.cells[AISettingsViewController.reviewOnAppStoreCell.identifier])
    private(set) lazy var tryTestFlightBetaCell = CellPageObject(element: application.cells[AISettingsViewController.tryTestFlightBetaCell.identifier])
    private(set) lazy var reportBugCell = CellPageObject(element: application.cells[AISettingsViewController.reportBugCell.identifier])
    private(set) lazy var viewSourceCell = CellPageObject(element: application.cells[AISettingsViewController.viewSourceCell.identifier])
    private(set) lazy var setDefaultReactionCell = CellPageObject(element: application.cells[AISettingsViewController.setDefaultReactionCell.identifier])
    private(set) lazy var signOutCell = CellPageObject(element: application.cells[AISettingsViewController.signOutCell.identifier])
    private(set) lazy var markReadSwitch = SwitchPageObject(element: application.switches[AISettingsViewController.markReadSwitch.identifier])
    private(set) lazy var accountsCell = CellPageObject(element: application.cells[AISettingsViewController.accountsCell.identifier])
    private(set) lazy var signatureSwitch = SwitchPageObject(element: application.switches[AISettingsViewController.signatureSwitch.identifier])
    private(set) lazy var defaultReactionLabel = LabelPageObject(element: application.staticTexts[AISettingsViewController.defaultReactionLabel.identifier])
    private(set) lazy var pushSettingsButton = ButtonPageObject(element: application.buttons[AISettingsViewController.pushSettingsButton.identifier])
    private(set) lazy var openExternalLinksSwitch = SwitchPageObject(element: application.switches[AISettingsViewController.openExternalLinksSwitch.identifier])
}
