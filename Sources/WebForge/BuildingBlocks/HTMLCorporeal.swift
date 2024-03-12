//
//  File.swift
//  
//
//  Created by Lukas Simonson on 3/11/24.
//

import Foundation

public protocol HTMLCorporeal: HTMLElement {
    func renderBody() -> String
}

public extension HTMLCorporeal {
    func render() -> String {
        return """
        <\(Self.tag)\(self.renderAttributes())>
        \(self.renderBody())
        </\(Self.tag)>
        """
    }
}
