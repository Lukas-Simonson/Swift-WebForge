//
//  File.swift
//  
//
//  Created by Lukas Simonson on 3/12/24.
//

import Foundation

public protocol HTMLRenderable {
    func render() -> String
}

extension String: HTMLRenderable {
    public func render() -> String {
        return self
    }
}
