//
//  S_ResponsesUITests.swift
//  S ResponsesUITests
//
//  Created by Sebastian Keet on 12/8/21.
//

import XCTest

class S_ResponsesUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
	
	func testOtherViews() throws {
		let app = XCUIApplication()
		app.launch()
		
		let homeButton = app.buttons["Home"]
		
		app.buttons["Response List"].tap()
		app.swipeUp()
		app.swipeUp()
		app.swipeDown()
		app.swipeDown()
		homeButton.tap()
		
		app.buttons["Settings"].tap()
		homeButton.tap()
		
		app.buttons["Glossary"].tap()
		app.swipeUp()
		app.swipeDown()
		homeButton.tap()
	}
	
	func testKeyboardButtons() {
		let app = XCUIApplication()
		app.launch()
	}

	// This test will take an extended period of time
    func testResponseCodes() throws {
        // UI tests must launch the application that they test.
        
		let app = XCUIApplication()
		app.launch()
		
		let homeButton = app.buttons["Home"]
		
		let key0 = app.keys["0"]
		let key1 = app.keys["1"]
		let key2 = app.keys["2"]
		let key3 = app.keys["3"]
		let key4 = app.keys["4"]
		let key5 = app.keys["5"]
		let key6 = app.keys["6"]
		let key7 = app.keys["7"]
		let key8 = app.keys["8"]
		let key9 = app.keys["9"]
		
		let keyDict = ["0": key0, "1": key1, "2": key2, "3": key3, "4": key4, "5": key5, "6": key6, "7": key7, "8": key8, "9": key9]
		let responseCodes = ["100", "101", "102", "200", "201", "202", "203", "204", "205", "206", "207", "208", "226", "300", "301", "302", "303", "304", "305", "306", "307", "308", "400", "401", "402", "403", "404", "405", "406", "407", "408", "409", "410", "411", "412", "413", "414", "415", "416", "417", "418", "420", "422", "423", "424", "425", "426", "428", "429", "431", "444", "449", "450", "451", "499", "500", "501", "502", "503", "504", "505", "506", "507", "508", "509", "510", "511", "598", "599"]
		
		for code in responseCodes {
			app.textFields["Response Code"].tap()
			
			for number in code {
				keyDict[String(number)]!.tap()
			}
			
			app.buttons["Search"].tap()
			
			homeButton.tap()
		}
    }

    func testLaunchPerformance() throws {
                if #available(iOS 14.5, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
