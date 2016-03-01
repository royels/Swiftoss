//
//  SwiftossTests.swift
//  SwiftossTests
//
//  Created by Rohan Yelsangikar on 2/14/16.
//  Copyright © 2016 Royels. All rights reserved.
//

import XCTest
import Alamofire
@testable import Swiftoss

class SwiftossTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        Swiftoss.API_HOST = "https://api.github.com/users/royels"
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testSend() {
        XCTAssert(true)
        print(Swiftoss.send(.GET, url: Swiftoss.API_HOST, parameters: [:]))
        
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

}
