//
//  File.swift
//  
//
//  Created by Lukas Simonson on 3/11/24.
//

import Foundation

public func body(attributes: HTMLAttribute..., @HTMLBodyBuilder children: () -> [HTMLElement]) -> HTMLElement {
    return Body(attributes: attributes, children: children)
}

public struct Body: HTMLParent {
    public static let tag: String = "body"
    public var attributes: [HTMLAttribute] = []
    public let children: [HTMLElement]
    
    public init(attributes: [HTMLAttribute] = [], @HTMLBodyBuilder children: () -> [HTMLElement]) {
        self.attributes = attributes
        self.children = children()
    }
}
