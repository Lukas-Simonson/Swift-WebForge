//
//  File.swift
//  
//
//  Created by Lukas Simonson on 3/11/24.
//

import Foundation

public func h6(_ body: String) -> HeadingSix {
    return HeadingSix(body: [body])
}

public func h6(attributes: HTMLAttribute..., body: String) -> HeadingSix {
    return HeadingSix(attributes: attributes, body: [body])
}

public func h6(attributes: HTMLAttribute..., @HTMLBodyBuilder body: () -> [HTMLRenderable]) -> HeadingSix {
    return HeadingSix(attributes: attributes, body: body)
}

public struct HeadingSix: HTMLParent {
    public static var tag = "h6"
    public let attributes: [HTMLAttribute]
    public let body: [HTMLRenderable]
    
    public init(attributes: [HTMLAttribute] = [], body: [HTMLRenderable]) {
        self.attributes = attributes
        self.body = body
    }
}
