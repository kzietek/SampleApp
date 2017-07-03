//
//  SelectionScreenFactory.swift
//  KZSampleApp
//
//  Created by Kamil Ziętek on 03.07.2017.
//  Copyright © 2017 Kamil Ziętek. All rights reserved.
//

import UIKit

protocol SelectionScreenMaking {
    var onSelection: ( (SelectionResult) -> () )? { get set }
    func createWithoutContext() -> UIViewController
}

final class SelectionScreenFactory {
    var onSelection: ( (SelectionResult) -> () )?
    
    func createWithoutContext() -> UIViewController {
        let interactor = SelectionScreenInteractor()
        interactor.onSelectSomething = self.onSelection
        let viewController = SelectionScreenViewController(interactor: interactor)
        return viewController
    }
}
