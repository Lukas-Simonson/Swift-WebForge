//
//  File.swift
//  
//
//  Created by Lukas Simonson on 3/11/24.
//

import Foundation

public func form(attributes: HTMLAttribute..., @HTMLBodyBuilder children: () -> [HTMLElement]) -> HTMLElement {
    return Form(attributes: attributes, children: children)
}

public struct Form: HTMLParent {
    public static let tag: String = "form"
    public var attributes: [HTMLAttribute] = []
    public let children: [HTMLElement]
    
    public init(attributes: [HTMLAttribute] = [], @HTMLBodyBuilder children: () -> [HTMLElement]) {
        self.attributes = attributes
        self.children = children()
    }
}

public extension Form {
    public enum InputType: String {
        case button
        case checkbox
        case color
        case date
        case datetimeLocal = "datetime-local"
        case email
        case file
        case hidden
        case image
        case month
        case number
        case password
        case radio
        case range
        case reset
        case search
        case submit
        case tel
        case text
        case time
        case url
        case week
    }
}
