//
//  NotificationsVCPageObject.swift
//  FreetimeUITests
//
//  Created by a.slonevskiy on 28/08/2019.
//

import XCTest

final class NotificationsVCPageObject: BasicPageObject {
    private(set) lazy var navigationBarButton = ButtonPageObject(element: application.navigationBars.buttons["Inbox"]) // лучше присвоить id кнопке и по мере смены label на другой обращаться к id и потом к label этого id
    
    func openContextMenu() {
        navigationBarButton.waitForExistence(timeout: .short)
        navigationBarButton.tap()
    }
}
