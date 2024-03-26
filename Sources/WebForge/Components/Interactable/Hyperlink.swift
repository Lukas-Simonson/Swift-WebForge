//
//  File.swift
//  
//
//  Created by Lukas Simonson on 3/25/24.
//

import Foundation

func a(attributes: HTMLAttribute..., body: String = "") -> Hyperlink {
    Hyperlink(attributes: attributes, body: [body])
}

struct Hyperlink: HTMLParent {
    static var tag: String = "a"
    var attributes: [HTMLAttribute]
    var body: [HTMLRenderable]
    
    init(attributes: [HTMLAttribute], body: [HTMLRenderable]) {
        self.attributes = attributes
        self.body = body
    }
}
