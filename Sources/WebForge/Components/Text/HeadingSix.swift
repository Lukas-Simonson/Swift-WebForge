//
//  File.swift
//  
//
//  Created by Lukas Simonson on 3/11/24.
//

import Foundation

public func h6(attributes: HTMLAttribute..., body: String) -> HTMLElement {
    return HeadingSix(attributes: attributes, body: body)
}

public struct HeadingSix: HTMLTextBodied {
    public static var tag = "h6"
    public var attributes: [HTMLAttribute] = []
    public var body: String
    
    public init(attributes: [HTMLAttribute] = [], body: String = "") {
        self.attributes = attributes
        self.body = body
    }
}
