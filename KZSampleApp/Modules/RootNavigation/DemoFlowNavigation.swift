//
//  DemoFlowNavigation.swift
//  KZSampleApp
//
//  Created by Kamil Ziętek on 03.07.2017.
//  Copyright © 2017 Kamil Ziętek. All rights reserved.
//

import UIKit

final class DemoFlowNavigation {
    let navigationController: UINavigationController
    
    init(with navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func startFlow() {
        let factory = SelectionScreenFactory()
        factory.onSelection = { [weak self] (result) in
            self?.goToTable(with: result)
        }
        let selectionScreen = factory.createWithoutContext()
        navigationController.setViewControllers([selectionScreen], animated: false)
    }
    
    func goToTable(with result:SelectionResult) -> () {
        NSLog("Instantinate another view controller!")
        let factory = SelectionDetailsScreenFactory()
        let selectionDetailsVC = factory.create(for: result)
        push(selectionDetailsVC)
    }
    
    fileprivate func push(_ viewController: UIViewController) {
        navigationController.pushViewController(viewController, animated: true)
    }
    
    fileprivate func createRedScreen() -> (UIViewController) {
        let emptyScreen = UIViewController()
        emptyScreen.view = UIView()
        emptyScreen.view.backgroundColor = UIColor.red
        return emptyScreen
    }
}
