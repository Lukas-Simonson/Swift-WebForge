//
//  File.swift
//  
//
//  Created by Lukas Simonson on 3/11/24.
//

import Foundation

public func h2(_ body: String) -> HeadingTwo {
    return HeadingTwo(body: [body])
}

public func h2(attributes: HTMLAttribute..., body: String) -> HeadingTwo {
    return HeadingTwo(attributes: attributes, body: [body])
}

public func h2(attributes: HTMLAttribute..., @HTMLBodyBuilder body: () -> [HTMLRenderable]) -> HeadingTwo {
    return HeadingTwo(attributes: attributes, body: body)
}

public struct HeadingTwo: HTMLParent {
    public static var tag = "h2"
    public let attributes: [HTMLAttribute]
    public let body: [HTMLRenderable]
    
    public init(attributes: [HTMLAttribute] = [], body: [HTMLRenderable]) {
        self.attributes = attributes
        self.body = body
    }
}
