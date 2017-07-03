//
//  AppDelegate.swift
//  KZSampleApp
//
//  Created by Kamil Ziętek on 03.07.2017.
//  Copyright © 2017 Kamil Ziętek. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var initializer: AppInitializer = AppInitializer()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        if Environment.areUnitTestsRunning {
            initializer.testInit()
        } else {
            initializer.normalInit()
        }
        window = initializer.window
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        //empty
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        //empty
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        //empty
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        //empty
    }

    func applicationWillTerminate(_ application: UIApplication) {
        //empty
    }


}

