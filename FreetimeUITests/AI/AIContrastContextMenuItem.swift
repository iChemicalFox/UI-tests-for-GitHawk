//
//  AIContrastContextMenuItem.swift
//  FreetimeUITests
//
//  Created by a.slonevskiy on 02/09/2019.
//

import Foundation

class AIContrastContextMenuItem: AccessibilityObject {
    private static let name = "ContrastContextMenuItem"

    static let unreadCell = AccessibilityObject(prefix: AIContrastContextMenuItem.name, name: "UnreadCell")
    static let allCell = AccessibilityObject(prefix: AIContrastContextMenuItem.name, name: "AllCell")
    static let assignedCell = AccessibilityObject(prefix: AIContrastContextMenuItem.name, name: "AssignedCell")
    static let createdCell = AccessibilityObject(prefix: AIContrastContextMenuItem.name, name: "CreatedCell")
    static let mentionedCell = AccessibilityObject(prefix: AIContrastContextMenuItem.name, name: "MentionedCell")
    static let repoCell = AccessibilityObject(prefix: AIContrastContextMenuItem.name, name: "RepoCell")
}
