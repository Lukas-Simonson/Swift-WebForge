//
//  File.swift
//  
//
//  Created by Lukas Simonson on 3/11/24.
//

import Foundation

public func input(attributes: HTMLAttribute...) -> HTMLElement {
    return Input(attributes: attributes)
}

public struct Input: HTMLElement {
    public static let tag: String = "input"
    public var attributes: [HTMLAttribute]
    
    public init(attributes: [HTMLAttribute] = []) {
        self.attributes = attributes
    }
    
    public func render() -> String {
        return "<\(Self.tag)\(self.renderAttributes())>"
    }
}
