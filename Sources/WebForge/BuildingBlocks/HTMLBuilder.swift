//
//  File.swift
//  
//
//  Created by Lukas Simonson on 3/11/24.
//

import Foundation

@resultBuilder
public struct HTMLBodyBuilder {
    public static func buildBlock(_ elements: [HTMLRenderable]...) -> [HTMLRenderable] {
        return Array(elements.joined())
    }
    
    public static func buildExpression(_ expression: HTMLRenderable) -> [HTMLRenderable] {
        return [expression]
    }
    
    public static func buildArray(_ components: [[HTMLRenderable]]) -> [HTMLRenderable] {
        return components.reduce([]) { $0 + $1 }
    }
    
    public static func buildOptional(_ component: [HTMLRenderable]?) -> [HTMLRenderable] {
        return component ?? []
    }
    
    public static func buildEither(first component: [HTMLRenderable]) -> [HTMLRenderable] {
        return component
    }
    
    public static func buildEither(second component: [HTMLRenderable]) -> [HTMLRenderable] {
        return component
    }
}
