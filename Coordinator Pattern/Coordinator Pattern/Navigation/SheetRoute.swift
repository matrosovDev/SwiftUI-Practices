//
//  SheetRoute.swift
//  Coordinator Pattern
//
//  Created by Oleksandr Matrosov on 27/3/25.
//

import SwiftUI

enum SheetRoute: Identifiable, Hashable {
    case info
    
    var id: String {
        switch self {
        case .info: return "info"
        }
    }
}
