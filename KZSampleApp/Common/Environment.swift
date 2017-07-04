//
//  Environment.swift
//  KZSampleApp
//
//  Created by Kamil Ziętek on 03.07.2017.
//  Copyright © 2017 Kamil Ziętek. All rights reserved.
//

import Foundation

enum Environment {
    case debug
    case production
    
    static var current: Environment {
        #if DEBUG
            return debug
        #else
            return production
        #endif
    }
    
    static var areUnitTestsRunning:Bool {
        // Check environment variable set in shared schema for unit tests
        if let _ = ProcessInfo.processInfo.environment["UNIT_TESTS_ARE_RUNNING"] {
            return true
        }
        return false
    }
    
    static var apiBaseUrl: String {
        switch(Environment.current) {
            case .debug: return "http://dev.testcompany.com"
            case .production: return "http://testcompany.com"
        }
    }
}
