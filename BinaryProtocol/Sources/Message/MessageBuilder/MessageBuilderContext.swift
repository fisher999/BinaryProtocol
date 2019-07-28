//
//  MessageBuilderContext.swift
//  BinaryProtocol
//
//  Created by Victor on 28/07/2019.
//  Copyright © 2019 Victor. All rights reserved.
//

import Foundation

public class MessageBuilderContext {
    internal var message: MessageProtocol
    
    internal init(message: MessageProtocol) {
        self.message = message
    }
    
    func addSyncWord(syncWord: UInt16) -> MessageBuilderContext {
        message.syncWord = syncWord
        return self
    }
    
    func addPayload(payload: Payloadable) -> MessageBuilderContext {
        message.payload = payload
        return self
    }
}
