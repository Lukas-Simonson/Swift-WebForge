//
//  File.swift
//  
//
//  Created by Lukas Simonson on 3/12/24.
//

import Foundation

public func span(_ body: String) -> Span {
    return Span(body: body)
}

public func span(attributes: HTMLAttribute..., body: String) -> Span {
    return Span(attributes: attributes, body: body)
}

public struct Span: HTMLTextBodied {
    public static let tag: String = "span"
    public var attributes: [HTMLAttribute]
    public let body: String
    
    public init(attributes: [HTMLAttribute] = [], body: String) {
        self.attributes = attributes
        self.body = body
    }
}
