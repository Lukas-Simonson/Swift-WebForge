//
//  File.swift
//  
//
//  Created by Lukas Simonson on 3/11/24.
//

import Foundation

@resultBuilder
public struct HTMLBodyBuilder {
    public static func buildBlock(_ elements: [HTMLElement]...) -> [HTMLElement] {
        return Array(elements.joined())
    }
    
    public static func buildExpression(_ expression: HTMLElement) -> [HTMLElement] {
        return [expression]
    }
    
    public static func buildArray(_ components: [[HTMLElement]]) -> [HTMLElement] {
        return components.reduce([]) { $0 + $1 }
    }
    
    public static func buildOptional(_ component: [HTMLElement]?) -> [HTMLElement] {
        return component ?? []
    }
    
    public static func buildEither(first component: [HTMLElement]) -> [HTMLElement] {
        return component
    }
    
    public static func buildEither(second component: [HTMLElement]) -> [HTMLElement] {
        return component
    }
}
