//
//  File.swift
//
//
//  Created by Lukas Simonson on 3/11/24.
//

import Foundation

public func p(_ body: String) -> Paragraph {
    return Paragraph(body: [body])
}

public func p(attributes: HTMLAttribute..., body: String) -> Paragraph {
    return Paragraph(attributes: attributes, body: [body])
}

public func p(attributes: HTMLAttribute..., @HTMLBodyBuilder body: () -> [HTMLRenderable]) -> Paragraph {
    return Paragraph(attributes: attributes, body: body)
}

public struct Paragraph: HTMLParent {
    public static let tag: String = "p"
    public let attributes: [HTMLAttribute]
    public let body: [HTMLRenderable]
    
    public init(attributes: [HTMLAttribute] = [], body: [HTMLRenderable]) {
        self.attributes = attributes
        self.body = body
    }
}
