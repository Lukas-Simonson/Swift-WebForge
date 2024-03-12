//
//  File.swift
//  
//
//  Created by Lukas Simonson on 3/11/24.
//

import Foundation

public func style(attributes: HTMLAttribute..., body: String) -> HTMLElement {
    return Style(attributes: attributes, body: body)
}

public struct Style: HTMLTextBodied {
    public static var tag = "style"
    public var attributes: [HTMLAttribute] = []
    public var body: String
    
    public init(attributes: [HTMLAttribute] = [], body: String = "") {
        self.attributes = attributes
        self.body = body
    }
}
