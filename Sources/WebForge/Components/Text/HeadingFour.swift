//
//  File.swift
//  
//
//  Created by Lukas Simonson on 3/11/24.
//

import Foundation

public func h4(_ body: String) -> HeadingFour {
    return HeadingFour(body: [body])
}

public func h4(attributes: HTMLAttribute..., body: String) -> HeadingFour {
    return HeadingFour(attributes: attributes, body: [body])
}

public func h4(attributes: HTMLAttribute..., @HTMLBodyBuilder body: () -> [HTMLRenderable]) -> HeadingFour {
    return HeadingFour(attributes: attributes, body: body)
}

public struct HeadingFour: HTMLParent {
    public static var tag = "h4"
    public let attributes: [HTMLAttribute]
    public let body: [HTMLRenderable]
    
    public init(attributes: [HTMLAttribute] = [], body: [HTMLRenderable]) {
        self.attributes = attributes
        self.body = body
    }
}
