//
//  File.swift
//  
//
//  Created by Lukas Simonson on 3/25/24.
//

import Foundation

public protocol HTMLParent: HTMLElement, HTMLBodiable {
    init(attributes: [HTMLAttribute], body: [HTMLRenderable])
}

public extension HTMLParent {
    init(attributes: [HTMLAttribute] = [], @HTMLBodyBuilder body: () -> [HTMLRenderable]) {
        self.init(attributes: attributes, body: body())
    }
    
    func render() -> String {
        return "<\(Self.tag)\(self.renderAttributes())>\(self.renderBody())</\(Self.tag)>"
    }
}
