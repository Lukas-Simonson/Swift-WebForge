//
//  File.swift
//  
//
//  Created by Lukas Simonson on 3/25/24.
//

import Foundation

public func img(attributes: HTMLAttribute...) -> Image {
    Image(attributes: attributes)
}

public struct Image: HTMLElement {
    public static var tag: String = "img"
    public var attributes: [HTMLAttribute]
}
