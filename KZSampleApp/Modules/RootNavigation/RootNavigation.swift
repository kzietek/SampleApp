//
//  MainNavigation.swift
//  KZSampleApp
//
//  Created by Kamil Ziętek on 03.07.2017.
//  Copyright © 2017 Kamil Ziętek. All rights reserved.
//

import UIKit

protocol RootNavigating {
    func createRootViewController() -> UIViewController
}

final class RootNavigation: RootNavigating {
    private var rootNavigationController: UINavigationController
    private let demoFlow: DemoFlowNavigation
    
    init() {
        rootNavigationController = UINavigationController()
        demoFlow = DemoFlowNavigation(with: rootNavigationController)
    }
    
    func createRootViewController() -> UIViewController {
        demoFlow.startFlow()
        return rootNavigationController
    }
}
