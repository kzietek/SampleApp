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
    
    // minimal init
    func testInit() {
        let emptyVC = UIViewController()
        configureWindow(withVC: emptyVC)
    }
    
    func normalInit() {
        // frameworks go here
        let defaultVC = UIViewController()
        configureWindow(withVC: defaultVC)
    }
    
    fileprivate func configureWindow(withVC rootVC: UIViewController) {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = rootVC
        window?.makeKeyAndVisible()
    }
}
