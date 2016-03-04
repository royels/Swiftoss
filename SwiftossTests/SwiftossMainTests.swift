//
//  SwiftossTests.swift
//  SwiftossTests
//
//  Created by Rohan Yelsangikar on 2/14/16.
//  Copyright © 2016 Royels. All rights reserved.
//

import XCTest
@testable import Swiftoss

class SwiftossMainTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        Swiftoss.API_HOST = "uglabugla"
        Swiftoss.API_KEY  = "lobby"
        Swiftoss.PROTOCOL = "htap"
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testStaticVars() {
        XCTAssert(Swiftoss.API_KEY == "lobby")
        XCTAssert(Swiftoss.API_HOST == "uglabugla")
        XCTAssert(Swiftoss.PROTOCOL == "htap")
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

}
