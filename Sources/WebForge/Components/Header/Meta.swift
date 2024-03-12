//
//  File.swift
//  
//
//  Created by Lukas Simonson on 3/11/24.
//

import Foundation

public func meta(attributes: HTMLAttribute...) -> HTMLElement {
    return Meta(attributes: attributes)
}

public struct Meta: HTMLElement {
    public static let tag: String = "meta"
    public var attributes: [HTMLAttribute]
    
    public init(attributes: [HTMLAttribute] = []) {
        self.attributes = attributes
    }
    
    public func render() -> String {
        return "<\(Self.tag)\(self.renderAttributes())>"
    }
}
