//
//  BinaryCoder.swift
//  BinaryProtocol
//
//  Created by Victor on 01/08/2019.
//  Copyright © 2019 Victor. All rights reserved.
//

import Foundation

public class BinaryCoder {
    
    var container: BinaryCoderContainer
    
    init(container: BinaryCoderContainer = BinaryCoderContainer()) {
        self.container = container
    }
    
    func decode<T: BinaryDecodable>(_ DecodableType: T.Type, from data: Data) -> T {
        let keys = Mirror(
    }
    
    
}
