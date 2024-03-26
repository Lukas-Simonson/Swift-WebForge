//
//  File.swift
//  
//
//  Created by Lukas Simonson on 3/11/24.
//

import Foundation

public func h1(_ body: String) -> HeadingOne {
    return HeadingOne(body: [body])
}

public func h1(attributes: HTMLAttribute..., body: String) -> HeadingOne {
    return HeadingOne(attributes: attributes, body: [body])
}

public func h1(attributes: HTMLAttribute..., @HTMLBodyBuilder body: () -> [HTMLRenderable]) -> HeadingOne {
    return HeadingOne(attributes: attributes, body: body)
}

public struct HeadingOne: HTMLParent {
    public static var tag = "h1"
    public let attributes: [HTMLAttribute]
    public let body: [HTMLRenderable]
    
    public init(attributes: [HTMLAttribute] = [], body: [HTMLRenderable]) {
        self.attributes = attributes
        self.body = body
    }
}
