//
//  File.swift
//  
//
//  Created by Lukas Simonson on 3/12/24.
//

import Foundation

public func link(attributes: HTMLAttribute...) -> HTMLElement {
    return Link(attributes: attributes)
}

public struct Link: HTMLElement {
    public static let tag: String = "link"
    public var attributes: [HTMLAttribute]
    
    public init(attributes: [HTMLAttribute] = []) {
        self.attributes = attributes
    }
    
    public func render() -> String {
        return "<\(Self.tag)\(self.renderAttributes())>"
    }
}
