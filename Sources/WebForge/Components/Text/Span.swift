//
//  File.swift
//  
//
//  Created by Lukas Simonson on 3/12/24.
//

import Foundation

public func span(_ body: String) -> Span {
    return Span(body: [body])
}

public func span(attributes: HTMLAttribute..., body: String) -> Span {
    return Span(attributes: attributes, body: [body])
}

public func span(attributes: HTMLAttribute..., @HTMLBodyBuilder body: () -> [HTMLRenderable]) -> Span {
    return Span(attributes: attributes, body: body)
}

public struct Span: HTMLParent {
    public static let tag: String = "span"
    public let attributes: [HTMLAttribute]
    public let body: [HTMLRenderable]
    
    public init(attributes: [HTMLAttribute] = [], body: [HTMLRenderable]) {
        self.attributes = attributes
        self.body = body
    }
}
