import XCTest
@testable import BinaryProtocol

final class BinaryProtocolTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(BinaryProtocol().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
