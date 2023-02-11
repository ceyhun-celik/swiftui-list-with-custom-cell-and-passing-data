//
//  swiftui_list_with_custom_cell_and_passing_dataUITestsLaunchTests.swift
//  swiftui-list-with-custom-cell-and-passing-dataUITests
//
//  Created by Ceyhun Çelik on 11.02.2023.
//

import XCTest

final class swiftui_list_with_custom_cell_and_passing_dataUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
