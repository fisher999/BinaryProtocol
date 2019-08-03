import XCTest

import BinaryProtocolTests

var tests = [XCTestCaseEntry]()
tests += BinaryProtocolTests.allTests()
XCTMain(tests)
