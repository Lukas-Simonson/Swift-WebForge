//
//  File.swift
//  
//
//  Created by Lukas Simonson on 3/11/24.
//

import Foundation

public protocol HTMLTextBodied: HTMLCorporeal {
    var body: String { get }
}

public extension HTMLTextBodied {
    func renderBody() -> String {
        return self.body
    }
}
