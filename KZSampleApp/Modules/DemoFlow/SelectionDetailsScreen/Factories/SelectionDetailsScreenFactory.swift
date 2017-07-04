//
//  SelectionDetailsScreenFactory.swift
//  KZSampleApp
//
//  Created by Kamil Ziętek on 04.07.2017.
//  Copyright © 2017 Kamil Ziętek. All rights reserved.
//

import UIKit

protocol  SelectionDetailsScreenMaking {
    func create(for selectionResult:SelectionResult) -> UIViewController
}

final class SelectionDetailsScreenFactory {
    func create(for selectionResult:SelectionResult) -> UIViewController {
        let interactor = SelectionDetailsScreenInteractor(result: selectionResult)
        let viewController = SelectionDetailsViewController(interactor: interactor)
        return viewController
    }
}
