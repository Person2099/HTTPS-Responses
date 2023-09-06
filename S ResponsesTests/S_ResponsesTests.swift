//
//  S_ResponsesTests.swift
//  S ResponsesTests
//
//  Created by Sebastian Keet on 12/8/21.
//

import XCTest
//@testable import HTTP_S_Responses

class S_ResponsesTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        var doubleDef: Bool = false
        for response in ResponsesEnum.allCases {
            doubleDef = response.detailedDef == response.simplifiedDef
        }
        XCTAssert(!doubleDef)
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
