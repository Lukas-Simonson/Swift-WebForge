//
//  File.swift
//
//
//  Created by Lukas Simonson on 3/11/24.
//

import Foundation

public func p(_ body: String) -> HTMLElement {
    return Paragraph(body: body)
}

public func p(attributes: HTMLAttribute..., body: String) -> HTMLElement {
    return Paragraph(attributes: attributes, body: body)
}

public struct Paragraph: HTMLTextBodied {
    public static let tag: String = "p"
    public var attributes: [HTMLAttribute] = []
    public let body: String
    
    public init(attributes: [HTMLAttribute] = [], body: String) {
        self.attributes = attributes
        self.body = body
    }
    
    public func renderBody() -> String {
        return self.body
    }
}
