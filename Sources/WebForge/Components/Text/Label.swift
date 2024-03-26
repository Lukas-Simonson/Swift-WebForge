//
//  File.swift
//  
//
//  Created by Lukas Simonson on 3/12/24.
//

import Foundation

public func label(_ body: String) -> Label {
    return Label(body: [body])
}

public func label(attributes: HTMLAttribute..., body: String) -> Label {
    return Label(attributes: attributes, body: [body])
}

public func label(attributes: HTMLAttribute..., @HTMLBodyBuilder body: () -> [HTMLRenderable]) -> Label {
    return Label(attributes: attributes, body: body)
}

public struct Label: HTMLParent {
    public static let tag: String = "label"
    public let attributes: [HTMLAttribute]
    public let body: [HTMLRenderable]
    
    public init(attributes: [HTMLAttribute] = [], body: [HTMLRenderable]) {
        self.attributes = attributes
        self.body = body
    }
}
