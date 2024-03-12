//
//  File.swift
//  
//
//  Created by Lukas Simonson on 3/11/24.
//

import Foundation

public protocol HTMLView: HTMLRenderable {
    var view: HTMLElement { get }
}

extension HTMLView {
    public func render() -> String {
        return self.view.render()
    }
}
