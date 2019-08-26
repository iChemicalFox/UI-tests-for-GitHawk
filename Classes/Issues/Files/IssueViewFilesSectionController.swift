//
//  IssueViewFilesSectionController.swift
//  Freetime
//
//  Created by Ryan Nystrom on 8/11/17.
//  Copyright © 2017 Ryan Nystrom. All rights reserved.
//

import Foundation
import IGListKit

final class IssueViewFilesSectionController: ListGenericSectionController<IssueFileChangesModel> {

    private let issueModel: IssueDetailsModel
    private let client: GithubClient

    init(issueModel: IssueDetailsModel, client: GithubClient) {
        self.issueModel = issueModel
        self.client = client
        super.init()
    }

    override func sizeForItem(at index: Int) -> CGSize {
        return collectionContext.cellSize(
            with: Styles.Text.secondary.preferredFont.lineHeight + Styles.Sizes.rowSpacing
        )
    }

    override func cellForItem(at index: Int) -> UICollectionViewCell {
        guard let cell = collectionContext?.dequeueReusableCell(of: IssueViewFilesCell.self, for: self, at: index) as? IssueViewFilesCell,
            let object = self.object
            else { fatalError("Missing collection context") }
        cell.configure(changes: object.changes)
        return cell
    }

    override func didSelectItem(at index: Int) {
        guard let object = self.object else { return }
        collectionContext?.deselectItem(
            at: index,
            sectionController: self,
            animated: trueUnlessReduceMotionEnabled
        )
        viewController?.route_push(to: IssueFilesViewController(
            model: issueModel,
            client: client,
            fileCount: object.changes.changedFiles
        ))
    }

}