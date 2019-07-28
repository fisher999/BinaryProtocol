//
//  BinaryCodable.swift
//  BinaryProtocol
//
//  Created by Victor on 28/07/2019.
//  Copyright © 2019 Victor. All rights reserved.
//

import Foundation

internal protocol BinaryCodable {
    func decode() -> MessageProtocol
    func encode(message: MessageProtocol) -> SerializableData
}
