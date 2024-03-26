//
//  File.swift
//  
//
//  Created by Lukas Simonson on 3/25/24.
//

import Foundation

public protocol HTMLBodiable: HTMLRenderable {
    @HTMLBodyBuilder var body: [HTMLRenderable] { get }
}

extension HTMLBodiable {
    func renderBody() -> String {
        return String(body.reduce("") { $0 + $1.render() + "\n" }.dropLast())
    }
}
