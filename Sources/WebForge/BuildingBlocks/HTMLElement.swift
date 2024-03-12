//
//  File.swift
//  
//
//  Created by Lukas Simonson on 3/11/24.
//

import Foundation

public protocol HTMLElement: HTMLRenderable {
    static var tag: String { get }
    var attributes: [HTMLAttribute] { get }
}

public extension HTMLElement {
    func render() -> String {
        return "<\(Self.tag)\(self.renderAttributes())></\(Self.tag)>"
    }
    
    func renderAttributes() -> String {
        return self.attributes.reduce("") { $0 + " \($1.attributed)" }
    }
}
