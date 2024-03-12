//
//  File.swift
//  
//
//  Created by Lukas Simonson on 3/11/24.
//

import Foundation

public func h4(attributes: HTMLAttribute..., body: String) -> HTMLElement {
    return HeadingFour(attributes: attributes, body: body)
}

public struct HeadingFour: HTMLTextBodied {
    public static var tag = "h4"
    public var attributes: [HTMLAttribute] = []
    public var body: String
    
    public init(attributes: [HTMLAttribute] = [], body: String = "") {
        self.attributes = attributes
        self.body = body
    }
}
