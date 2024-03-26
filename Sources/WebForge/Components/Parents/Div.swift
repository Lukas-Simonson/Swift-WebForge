//
//  File.swift
//  
//
//  Created by Lukas Simonson on 3/11/24.
//

import Foundation

public func div(attributes: HTMLAttribute...) -> Div {
    return Div(attributes: attributes, body: [])
}

public func div(attributes: HTMLAttribute..., @HTMLBodyBuilder body: () -> [HTMLRenderable]) -> Div {
    return Div(attributes: attributes, body: body)
}

public struct Div: HTMLParent {
    public static let tag: String = "div"
    public let attributes: [HTMLAttribute]
    public let body: [HTMLRenderable]
    
    public init(attributes: [HTMLAttribute] = [], body: [HTMLRenderable]) {
        self.attributes = attributes
        self.body = body
    }
}
