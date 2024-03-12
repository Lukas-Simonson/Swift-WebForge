//
//  File.swift
//  
//
//  Created by Lukas Simonson on 3/11/24.
//

import Foundation

public func title(attributes: HTMLAttribute..., body: String) -> HTMLElement {
    return Title(attributes: attributes, body: body)
}

public func title(_ body: String) -> HTMLElement {
    return Title(body: body)
}

public struct Title: HTMLTextBodied {
    public static var tag = "title"
    public var attributes: [HTMLAttribute] = []
    public var body: String
    
    public init(attributes: [HTMLAttribute] = [], body: String = "") {
        self.attributes = attributes
        self.body = body
    }
}
