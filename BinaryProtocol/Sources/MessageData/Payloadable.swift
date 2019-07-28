//
//  Payload.swift
//  BinaryProtocol
//
//  Created by Victor on 28/07/2019.
//  Copyright © 2019 Victor. All rights reserved.
//

import Foundation

public protocol Payloadable {
    var id: UInt8 {get}
    var value: SerializableData {get set}
}
