//
//  File.swift
//  
//
//  Created by Lukas Simonson on 3/11/24.
//

import Foundation

public func script(attributes: HTMLAttribute..., body: String = "") -> HTMLElement {
    return Script(attributes: attributes, body: body)
}

public struct Script: HTMLTextBodied {
    public static let tag: String = "script"
    public var attributes: [HTMLAttribute] = []
    public var body: String
    
    public init(attributes: [HTMLAttribute] = [], body: String = "") {
        self.attributes = attributes
        self.body = body
    }
}
