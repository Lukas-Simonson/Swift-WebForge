//
//  File.swift
//  
//
//  Created by Lukas Simonson on 3/11/24.
//

import Foundation

public func document(@HTMLBodyBuilder body: () -> [HTMLRenderable]) -> Document {
    return Document(body: body)
}

public struct Document: HTMLParent {
    public static let tag: String = "DOCTYPE"
    public let attributes: [HTMLAttribute]
    public let body: [HTMLRenderable]
    
    public init(attributes: [HTMLAttribute] = [], body: [HTMLRenderable]) {
        self.attributes = attributes
        self.body = body
    }
    
    public func render() -> String {
        return """
        <!DOCTYPE html>
        \(renderBody())
        """
    }
}
