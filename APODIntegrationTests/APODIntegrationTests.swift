//
//  APODIntegrationTests.swift
//  APODIntegrationTests
//
//  Created by Chris Pflepsen on 10/30/23.
//

import XCTest
@testable import APOD

final class APODIntegrationTests: XCTestCase {

    let api = AstronomyPictureAPI()

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testPictureOfTheDayTest() async throws {
        let result = try await api.perform(request: PictureOfTheDayRequest())
        XCTAssertNotNil(result)
    }

}
