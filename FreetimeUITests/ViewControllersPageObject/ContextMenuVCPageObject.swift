//
//  ContextMenuVCPageObject.swift
//  FreetimeUITests
//
//  Created by a.slonevskiy on 02/09/2019.
//

import XCTest

final class ContextMenuVCPageObject: BasicPageObject {
    private(set) lazy var unreadCell = CellPageObject(element: application.cells[AIContrastContextMenuItem.unreadCell.identifier])
    private(set) lazy var allCell = CellPageObject(element: application.cells[AIContrastContextMenuItem.allCell.identifier])
    private(set) lazy var assignedCell = CellPageObject(element: application.cells[AIContrastContextMenuItem.assignedCell.identifier])
    private(set) lazy var createdCell = CellPageObject(element: application.cells[AIContrastContextMenuItem.createdCell.identifier])
    private(set) lazy var mentionedCell = CellPageObject(element: application.cells[AIContrastContextMenuItem.mentionedCell.identifier])
    private(set) lazy var repoCell = CellPageObject(element: application.cells[AIContrastContextMenuItem.repoCell.identifier])
}
