//
//  File.swift
//  
//
//  Created by Lukas Simonson on 3/11/24.
//

import Foundation

public func div(attributes: HTMLAttribute...) -> HTMLElement {
    return Div(attributes: attributes, children: [])
}

public func div(attributes: HTMLAttribute..., @HTMLBodyBuilder children: () -> [HTMLElement]) -> HTMLElement {
    return Div(attributes: attributes, children: children)
}

public struct Div: HTMLParent {
    public static let tag: String = "div"
    public var attributes: [HTMLAttribute] = []
    public let children: [HTMLElement]
    
    public init(attributes: [HTMLAttribute] = [], children: [HTMLElement]) {
        self.attributes = attributes
        self.children = children
    }
    
    public init(attributes: [HTMLAttribute] = [], @HTMLBodyBuilder children: () -> [HTMLElement]) {
        self.attributes = attributes
        self.children = children()
    }
}
