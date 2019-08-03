//
//  BinaryProtocolTests.swift
//  BinaryProtocolTests
//
//  Created by Victor on 28/07/2019.
//  Copyright © 2019 Victor. All rights reserved.
//

import XCTest
@testable import BinaryProtocol

class BinaryProtocolTests: XCTestCase {

    var messageBuilder: MessageBuilder!
    
    override func setUp() {
        messageBuilder = MessageBuilder.init()
    }

    override func tearDown() {
        messageBuilder = nil
    }

    func test_messageBuilder_createMessage() {
        
    }
}
