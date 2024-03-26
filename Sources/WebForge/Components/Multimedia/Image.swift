//
//  File.swift
//  
//
//  Created by Lukas Simonson on 3/25/24.
//

import Foundation

func img(attributes: HTMLAttribute...) -> Image {
    Image(attributes: attributes)
}

struct Image: HTMLElement {
    static var tag: String = "img"
    var attributes: [HTMLAttribute]
}
