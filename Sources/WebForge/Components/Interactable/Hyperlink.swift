//
//  File.swift
//  
//
//  Created by Lukas Simonson on 3/25/24.
//

import Foundation

public func a(attributes: HTMLAttribute..., body: String = "") -> Hyperlink {
    Hyperlink(attributes: attributes, body: [body])
}

public struct Hyperlink: HTMLParent {
    public static var tag: String = "a"
    public var attributes: [HTMLAttribute]
    public var body: [HTMLRenderable]
    
    public init(attributes: [HTMLAttribute], body: [HTMLRenderable]) {
        self.attributes = attributes
        self.body = body
    }
}
