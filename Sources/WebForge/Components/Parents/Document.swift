//
//  File.swift
//  
//
//  Created by Lukas Simonson on 3/11/24.
//

import Foundation

public func document(@HTMLBodyBuilder children: () -> [HTMLElement]) -> Document {
    return Document(children)
}

public struct Document: HTMLParent {
    public static let tag: String = "DOCTYPE"
    public var attributes: [HTMLAttribute] = []
    public let children: [HTMLElement]
    
    public init(@HTMLBodyBuilder _ children: () -> [HTMLElement]) {
        self.children = children()
    }
    
    public func render() -> String {
        return """
        <!DOCTYPE html>
        \(renderBody())
        """
    }
}
