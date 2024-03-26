//
//  File.swift
//  
//
//  Created by Lukas Simonson on 3/11/24.
//

import Foundation

public func button(attributes: HTMLAttribute..., body: String = "") -> HTMLElement {
    return Button(attributes: attributes, body: [body])
}

public func button(attributes: HTMLAttribute..., @HTMLBodyBuilder body: () -> [HTMLRenderable]) -> Button {
    return Button(attributes: attributes, body: body)
}

public struct Button: HTMLParent {
    public static let tag: String = "button"
    public let attributes: [HTMLAttribute]
    public let body: [HTMLRenderable]
    
    public init(attributes: [HTMLAttribute] = [], body: [HTMLRenderable]) {
        self.attributes = attributes
        self.body = body
    }
}
