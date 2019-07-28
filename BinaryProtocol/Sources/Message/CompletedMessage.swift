//
//  CompletedMessage.swift
//  BinaryProtocol
//
//  Created by Victor on 28/07/2019.
//  Copyright © 2019 Victor. All rights reserved.
//

import Foundation

public class CompletedMessage: SerializableData, MessageProtocol {
    var syncWord: UInt16?
    var payload: Payloadable?
    
    internal init(with uncompletedMessage: UncompletedMessage) {
        super.init(with: uncompletedMessage.binaryData)
        self.syncWord = uncompletedMessage.syncWord
        self.payload = uncompletedMessage.payload
    }
    
    required init(with binaryData: Data) {
        fatalError("init(with:) has not been implemented")
    }
}

//MARK: Equatable
public extension CompletedMessage {
    static func == (lhs: CompletedMessage, rhs: CompletedMessage) -> Bool {
        return lhs.syncWord == rhs.syncWord && lhs.size == rhs.size && lhs.id == rhs.id && lhs.payload?.value == rhs.payload?.value && lhs.checkSum == rhs.checkSum
    }
}

public extension CompletedMessage {
    
}
