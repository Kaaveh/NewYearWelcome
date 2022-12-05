//
//  New_year_welcomeTests.swift
//  New year welcomeTests
//
//  Created by Kaaveh Mohamedi on 12/5/22.
//

import XCTest
@testable import New_year_welcome

final class New_year_welcomeTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testEmptyMessage() throws {
        let viewModel = MainViewModel()
        XCTAssertTrue(viewModel.message.isEmpty)
    }
    
    func testAddMessage() throws {
        let viewModel = MainViewModel()
        let message = "ABC"
        viewModel.add(text: message)
        XCTAssertEqual(viewModel.message, message)
    }
    
    func testClearMessage() throws {
        let viewModel = MainViewModel()
        viewModel.add(text: "ABC")
        viewModel.clear()
        XCTAssertTrue(viewModel.message.isEmpty)
    }

}
