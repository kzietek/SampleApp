//
//  AppInitializer.swift
//  KZSampleApp
//
//  Created by Kamil Ziętek on 03.07.2017.
//  Copyright © 2017 Kamil Ziętek. All rights reserved.
//

import UIKit

class AppInitializer {
    var window: UIWindow?
    var rootNavigation: RootNavigating?
    
    // minimal init
    func testInit() {
        let emptyVC = UIViewController()
        configureWindow(withVC: emptyVC)
    }
    
    func normalInit() {
        // frameworks go here
        rootNavigation = RootNavigation()
        guard let navigation = rootNavigation else { return }
        configureWindow(withVC: navigation.createRootViewController())
    }
    
    fileprivate func configureWindow(withVC rootVC: UIViewController) {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = rootVC
        window?.makeKeyAndVisible()
    }
}
