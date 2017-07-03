//
//  WhyNoTestsInfoTests.swift
//  KZSampleAppTests
//
//  Created by Kamil Ziętek on 04.07.2017.
//  Copyright © 2017 Kamil Ziętek. All rights reserved.
//

import XCTest

// Here some mocks...

// MARK: - Setup
class WhyNoTestsInfoTests: XCTestCase {
    // here some properties...
    
    override func setUp() {
        super.setUp()
        // Put setup code here.
    }
    
    override func tearDown() {
        // Put teardown code here.
        super.tearDown()
    }
}

// MARK: - Helper methods
extension WhyNoTestsInfoTests {
    
}

// MARK: - Tests
extension WhyNoTestsInfoTests {
    func testAnyClassInTheProject() {
        XCTFail("*THIS* time I have to resign from writting tests.")
    }
    
    func testSnapshotTests() {
        // https://github.com/facebook/ios-snapshot-test-case
        XCTFail("Insert some snapshot tests!")
    }
}
