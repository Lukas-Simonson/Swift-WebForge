//
//  File.swift
//  
//
//  Created by Lukas Simonson on 3/11/24.
//

import Foundation

public protocol HTMLParent: HTMLCorporeal {
    var children: [HTMLElement] { get }
}

public extension HTMLParent {
    func renderBody() -> String {
        return String(children.reduce("") { $0 + $1.render() + "\n" }.dropLast())
    }
}
