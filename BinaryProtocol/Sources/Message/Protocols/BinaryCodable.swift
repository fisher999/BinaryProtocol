//
//  BinaryCodable.swift
//  BinaryProtocol
//
//  Created by Victor on 28/07/2019.
//  Copyright © 2019 Victor. All rights reserved.
//

import Foundation

public protocol BinaryDecodable {
    init?(from binaryCoder: BinaryCoder)
}
