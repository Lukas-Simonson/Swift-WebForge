//
//  File.swift
//  
//
//  Created by Lukas Simonson on 3/12/24.
//

import Foundation

public func label(_ body: String) -> Label {
    return Label(body: body)
}

public func label(attributes: HTMLAttribute..., body: String) -> Label {
    return Label(attributes: attributes, body: body)
}

public struct Label: HTMLTextBodied {
    public static let tag: String = "label"
    public var attributes: [HTMLAttribute]
    public let body: String
    
    public init(attributes: [HTMLAttribute] = [], body: String) {
        self.attributes = attributes
        self.body = body
    }
}
