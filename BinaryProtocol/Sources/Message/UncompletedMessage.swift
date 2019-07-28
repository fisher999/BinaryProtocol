//
//  UncompleteMessage.swift
//  BinaryProtocol
//
//  Created by Victor on 28/07/2019.
//  Copyright © 2019 Victor. All rights reserved.
//

import Foundation

public class UncompletedMessage: SerializableData, MessageProtocol  {
    public var syncWord: UInt16?
    public var payload: Payloadable?
}
