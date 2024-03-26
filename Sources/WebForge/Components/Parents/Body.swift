//
//  File.swift
//  
//
//  Created by Lukas Simonson on 3/11/24.
//

import Foundation

public func body(attributes: HTMLAttribute..., @HTMLBodyBuilder body: () -> [HTMLRenderable]) -> Body {
    return Body(attributes: attributes, body: body)
}

public struct Body: HTMLParent {
    public static let tag: String = "body"
    public let attributes: [HTMLAttribute]
    public let body: [HTMLRenderable]
    
    public init(attributes: [HTMLAttribute] = [], body: [HTMLRenderable]) {
        self.attributes = attributes
        self.body = body
    }
}
