//
//  File.swift
//  
//
//  Created by Lukas Simonson on 3/11/24.
//

import Foundation

public func h3(attributes: HTMLAttribute..., body: String) -> HTMLElement {
    return HeadingThree(attributes: attributes, body: body)
}

public struct HeadingThree: HTMLTextBodied {
    public static var tag = "h3"
    public var attributes: [HTMLAttribute] = []
    public var body: String
    
    public init(attributes: [HTMLAttribute] = [], body: String = "") {
        self.attributes = attributes
        self.body = body
    }
}
