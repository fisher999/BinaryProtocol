//
//  SerializableData.swift
//  BinaryProtocol
//
//  Created by Victor on 28/07/2019.
//  Copyright © 2019 Victor. All rights reserved.
//

import Foundation

public class SerializableData: BinarySerializable {
    var binaryData: Data
    
    var data: [IntConvertible] {
        get {
            return binaryData.map({ (uint8) -> IntConvertible in
                return IntConvertible(uint8: uint8)
            })
        }
        set {
            let uint8Array = newValue.map({ (intConvertible) -> UInt8 in
                return intConvertible.uint8
            })
            var newData = Data()
            newData.append(contentsOf: uint8Array)
            self.binaryData = newData
        }
    }
    
    required init(with binaryData: Data) {
        self.binaryData = binaryData
    }
}

extension SerializableData: Hashable {
    public static func == (lhs: SerializableData, rhs: SerializableData) -> Bool {
        return lhs.binaryData == rhs.binaryData
    }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(binaryData)
    }
}
