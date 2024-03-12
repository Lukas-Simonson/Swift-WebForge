//
//  File.swift
//  
//
//  Created by Lukas Simonson on 3/11/24.
//

import Foundation

public func html(attributes: HTMLAttribute..., @HTMLBodyBuilder children: () -> [HTMLElement]) -> HTMLElement {
    return HTML(attributes: attributes, children: children)
}

public struct HTML: HTMLParent {
    public static let tag: String = "html"
    public var attributes: [HTMLAttribute] = []
    public let children: [HTMLElement]
    
    public init(attributes: [HTMLAttribute] = [], @HTMLBodyBuilder children: () -> [HTMLElement]) {
        self.attributes = attributes
        self.children = children()
    }
    
    public init(@HTMLBodyBuilder _ children: () -> [HTMLElement]) {
        self.children = children()
    }
}
