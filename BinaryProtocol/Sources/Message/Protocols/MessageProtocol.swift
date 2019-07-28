//
//  MessageProtocol.swift
//  BinaryProtocol
//
//  Created by Victor on 28/07/2019.
//  Copyright © 2019 Victor. All rights reserved.
//

import Foundation

protocol MessageProtocol: BinarySerializable {
    var syncWord: UInt16? {get set}
    var payload: Payloadable? {get set}
}

extension MessageProtocol {
    var size: UInt16? {
        let size = MemoryLayout.size(ofValue: syncWord) + MemoryLayout.size(ofValue: id) + MemoryLayout.size(ofValue: payload?.value) + MemoryLayout.size(ofValue: checkSum)
        
        return UInt16(exactly: size)
    }
    
    var id: UInt8? {
        return payload?.id
    }
    
    var checkSum: UInt16? {
        guard syncWord != nil, size != nil, id != nil, payload != nil else {return nil}
        var hasher = Hasher()
        hasher.combine(syncWord)
        hasher.combine(size)
        hasher.combine(id)
        hasher.combine(payload?.value)
        let hash = UInt16(clamping: hasher.finalize())
        return hash
    }
}
