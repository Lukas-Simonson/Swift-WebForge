//
//  File.swift
//  
//
//  Created by Lukas Simonson on 3/11/24.
//

import Foundation

public func h5(_ body: String) -> HeadingFive {
    return HeadingFive(body: [body])
}

public func h5(attributes: HTMLAttribute..., body: String) -> HeadingFive {
    return HeadingFive(attributes: attributes, body: [body])
}

public func h5(attributes: HTMLAttribute..., @HTMLBodyBuilder body: () -> [HTMLRenderable]) -> HeadingFive {
    return HeadingFive(attributes: attributes, body: body)
}

public struct HeadingFive: HTMLParent {
    public static var tag = "h5"
    public let attributes: [HTMLAttribute]
    public let body: [HTMLRenderable]
    
    public init(attributes: [HTMLAttribute] = [], body: [HTMLRenderable]) {
        self.attributes = attributes
        self.body = body
    }
}
