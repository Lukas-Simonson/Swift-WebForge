//
//  File.swift
//  
//
//  Created by Lukas Simonson on 3/11/24.
//

import Foundation

public func h2(attributes: HTMLAttribute..., body: String) -> HTMLElement {
    return HeadingTwo(attributes: attributes, body: body)
}

struct HeadingTwo: HTMLTextBodied {
    static var tag = "h2"
    var attributes: [HTMLAttribute] = []
    var body: String
    
    init(attributes: [HTMLAttribute] = [], body: String = "") {
        self.attributes = attributes
        self.body = body
    }
}
