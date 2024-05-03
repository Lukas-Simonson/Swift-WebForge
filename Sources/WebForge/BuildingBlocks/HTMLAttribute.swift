//
//  File.swift
//  
//
//  Created by Lukas Simonson on 3/11/24.
//

import Foundation

public struct HTMLAttribute: Hashable {
    private let key: String
    private let value: String?
    
    private init(key: String, value: String?) {
        self.key = key
        self.value = value
    }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(key)
    }
}

public extension HTMLAttribute {
    var attributed: String {
        return value == nil ? key : "\(key)=\"\(value!)\""
    }
    
    static func custom(key: String, value: String?) -> HTMLAttribute {
        return HTMLAttribute(key: key, value: value)
    }
    
    static func accept(_ input: String) -> HTMLAttribute {
        return HTMLAttribute(key: "accept", value: input)
    }
    
    static func acceptCharset(_ input: String) -> HTMLAttribute {
        return HTMLAttribute(key: "accept-charset", value: input)
    }
    
    static func lang(_ input: String) -> HTMLAttribute {
        return HTMLAttribute(key: "lang", value: input)
    }
    
    static func charset(_ input: String) -> HTMLAttribute {
        return HTMLAttribute(key: "charset", value: input)
    }
    
    static func name(_ input: String) -> HTMLAttribute {
        return HTMLAttribute(key: "name", value: input)
    }
    
    static func content(_ input: String) -> HTMLAttribute {
        return HTMLAttribute(key: "content", value: input)
    }
    
    static func src(_ input: String) -> HTMLAttribute {
        return HTMLAttribute(key: "src", value: input)
    }
    
    static func type(_ input: Form.InputType) -> HTMLAttribute {
        return HTMLAttribute(key: "type", value: input.rawValue)
    }
    
    static func id(_ input: String) -> HTMLAttribute {
        return HTMLAttribute(key: "id", value: input)
    }
    
    static func value(_ input: String) -> HTMLAttribute {
        return HTMLAttribute(key: "value", value: input)
    }
    
    static func classes(_ input: String) -> HTMLAttribute {
        return HTMLAttribute(key: "class", value: input)
    }
    
    static func rel(_ input: String) -> HTMLAttribute {
        return HTMLAttribute(key: "rel", value: input)
    }
    
    static func href(_ input: String) -> HTMLAttribute {
        return HTMLAttribute(key: "href", value: input)
    }
    
    static func type(_ input: String) -> HTMLAttribute {
        return HTMLAttribute(key: "type", value: input)
    }
    
    static func style(_ input: String) -> HTMLAttribute {
        return HTMLAttribute(key: "style", value: input)
    }
}
