//
//  BinarySerializable.swift
//  BinaryProtocol
//
//  Created by Victor on 28/07/2019.
//  Copyright © 2019 Victor. All rights reserved.
//

import Foundation

internal protocol BinarySerializable {
    var data: [IntConvertible] {get set}
    var binaryData: Data {get set}
    
    init(with binaryData: Data)
}
