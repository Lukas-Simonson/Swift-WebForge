//
//  File.swift
//  
//
//  Created by Lukas Simonson on 3/11/24.
//

import Foundation

public func h5(_ body: String) -> HTMLElement {
    return HeadingFive(body: body)
}

public func h5(attributes: HTMLAttribute..., body: String) -> HTMLElement {
    return HeadingFive(attributes: attributes, body: body)
}

public struct HeadingFive: HTMLTextBodied {
    public static var tag = "h5"
    public var attributes: [HTMLAttribute] = []
    public var body: String
    
    public init(attributes: [HTMLAttribute] = [], body: String = "") {
        self.attributes = attributes
        self.body = body
    }
}
