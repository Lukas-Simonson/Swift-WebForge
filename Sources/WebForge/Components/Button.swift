//
//  File.swift
//  
//
//  Created by Lukas Simonson on 3/11/24.
//

import Foundation

public func button(attributes: HTMLAttribute..., body: String = "") -> HTMLElement {
    return Button(attributes: attributes, body: body)
}

public struct Button: HTMLTextBodied {
    public static let tag: String = "button"
    public var attributes: [HTMLAttribute] = []
    public let body: String
    
    public init(attributes: [HTMLAttribute] = [], body: String = "") {
        self.attributes = attributes
        self.body = body
    }
}
