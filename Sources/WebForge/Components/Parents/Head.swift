//
//  File.swift
//  
//
//  Created by Lukas Simonson on 3/11/24.
//

import Foundation

public func head(attributes: HTMLAttribute..., @HTMLBodyBuilder children: () -> [HTMLElement]) -> HTMLElement {
    return Head(attributes: attributes, children: children)
}

public struct Head: HTMLParent {
    public static let tag: String = "head"
    public var attributes: [HTMLAttribute] = []
    public let children: [HTMLElement]
    
    public init(attributes: [HTMLAttribute] = [], @HTMLBodyBuilder children: () -> [HTMLElement]) {
        self.attributes = attributes
        self.children = children()
    }
}
