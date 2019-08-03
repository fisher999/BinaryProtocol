//
//  BinaryCoderContainer.swift
//  BinaryProtocol
//
//  Created by Victor on 01/08/2019.
//  Copyright © 2019 Victor. All rights reserved.
//

import Foundation

public class BinaryCoderContainer {
    private var containerDict: [String: Any] = [:]
    
    internal func add(value: Any, for key: String) {
        containerDict[key] = value
    }
    
    public func value<Type>(_ type: Type, for key: String) -> Type? {
        return containerDict[key] as? Type
    }
}
