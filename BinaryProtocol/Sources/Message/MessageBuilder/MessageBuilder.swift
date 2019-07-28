//
//  MessageBuilder.swift
//  BinaryProtocol
//
//  Created by Victor on 28/07/2019.
//  Copyright © 2019 Victor. All rights reserved.
//

import Foundation

public class MessageBuilder {
    var messageBuilderContext: MessageBuilderContext?
    
    func newMessage() -> MessageBuilderContext {
        let context = MessageBuilderContext(message: UncompletedMessage(with: Data()))
        self.messageBuilderContext = context
        return context
    }

    func replaceMessageBy(_ message: MessageProtocol) -> MessageBuilderContext {
        let context = MessageBuilderContext(message: message)
        self.messageBuilderContext = context
        return context
    }
    
    func completeMessage() -> MessageProtocol {
        guard let context = self.messageBuilderContext else {return UncompletedMessage(with: Data())}
        if let message = context.message as? UncompletedMessage, message.syncWord != nil, message.size != nil, message.id != nil, message.payload != nil, message.checkSum != nil {
            return CompletedMessage(with: message)
        }
        else {
            return context.message
        }
    }
}
