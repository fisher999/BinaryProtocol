//
//  IntConvertible.swift
//  BinaryProtocol
//
//  Created by Victor on 28/07/2019.
//  Copyright © 2019 Victor. All rights reserved.
//

import Foundation

public struct IntConvertible {
    public var uint8: UInt8
    public var uint16: UInt16
    public var uint32: UInt32
    
    public init(uint8: UInt8) {
        self.uint8 = uint8
        self.uint16 = UInt16(uint8)
        self.uint32 = UInt32(uint8)
    }
}
