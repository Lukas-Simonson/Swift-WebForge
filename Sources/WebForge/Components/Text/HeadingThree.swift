//
//  File.swift
//  
//
//  Created by Lukas Simonson on 3/11/24.
//

import Foundation

public func h3(_ body: String) -> HeadingThree {
    return HeadingThree(body: [body])
}

public func h3(attributes: HTMLAttribute..., body: String) -> HeadingThree {
    return HeadingThree(attributes: attributes, body: [body])
}

public func h3(attributes: HTMLAttribute..., @HTMLBodyBuilder body: () -> [HTMLRenderable]) -> HeadingThree {
    return HeadingThree(attributes: attributes, body: body)
}

public struct HeadingThree: HTMLParent {
    public static var tag = "h3"
    public let attributes: [HTMLAttribute]
    public let body: [HTMLRenderable]
    
    public init(attributes: [HTMLAttribute] = [], body: [HTMLRenderable]) {
        self.attributes = attributes
        self.body = body
    }
}
