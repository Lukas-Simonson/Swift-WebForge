//
//  File.swift
//  
//
//  Created by Lukas Simonson on 3/11/24.
//

import Foundation

public func title(attributes: HTMLAttribute..., @HTMLBodyBuilder body: () -> [HTMLRenderable]) -> Title {
    return Title(attributes: attributes, body: body)
}

public func title(attributes: HTMLAttribute..., body: String) -> HTMLElement {
    return Title(attributes: attributes, body: [body])
}

public func title(_ body: String) -> HTMLElement {
    return Title(body: [body])
}

public struct Title: HTMLParent {
    public static var tag = "title"
    public let attributes: [HTMLAttribute]
    public let body: [HTMLRenderable]
    
    public init(attributes: [HTMLAttribute] = [], body: [HTMLRenderable]) {
        self.attributes = attributes
        self.body = body
    }
}
