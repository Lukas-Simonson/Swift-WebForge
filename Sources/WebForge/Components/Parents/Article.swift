//
//  File.swift
//  
//
//  Created by Lukas Simonson on 3/12/24.
//

import Foundation

public func article(attributes: HTMLAttribute..., @HTMLBodyBuilder children: () -> [HTMLElement]) -> HTMLElement {
    return Article(attributes: attributes, children: children)
}

struct Article: HTMLParent {
    static let tag: String = "article"
    var attributes: [HTMLAttribute] = []
    let children: [HTMLElement]
    
    init(attributes: [HTMLAttribute] = [], @HTMLBodyBuilder children: () -> [HTMLElement]) {
        self.attributes = attributes
        self.children = children()
    }
}
