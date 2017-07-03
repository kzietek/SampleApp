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
        let selectionFactory = SelectionScreenFactory()
        selectionFactory.onSelection = { [weak self] (result) in
            self?.goToTable(with: result)
        }
        let selectionScreen = selectionFactory.createWithoutContext()
        self.navigationController.setViewControllers([selectionScreen], animated: false)
    }
    
    func goToTable(with result:SelectionResult) -> () {
        NSLog("Instantinate another view controller!")
        push(createRedScreen())
    }
    
    fileprivate func push(_ viewController: UIViewController) {
        self.navigationController.pushViewController(viewController, animated: true)
    }
    
    private func createRedScreen() -> (UIViewController) {
        let emptyScreen = UIViewController()
        emptyScreen.view = UIView()
        emptyScreen.view.backgroundColor = UIColor.red
        return emptyScreen
    }
}
