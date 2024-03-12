//
//  File.swift
//  
//
//  Created by Lukas Simonson on 3/11/24.
//

import Foundation

public func h1(_ body: String) -> HTMLElement {
    return HeadingOne(body: body)
}

public func h1(attributes: HTMLAttribute..., body: String) -> HTMLElement {
    return HeadingOne(attributes: attributes, body: body)
}

struct HeadingOne: HTMLTextBodied {
    static var tag = "h1"
    var attributes: [HTMLAttribute] = []
    var body: String
    
    init(attributes: [HTMLAttribute] = [], body: String = "") {
        self.attributes = attributes
        self.body = body
    }
}
