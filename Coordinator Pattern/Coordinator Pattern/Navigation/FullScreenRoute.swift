//
//  FullScreenRoute.swift
//  Coordinator Pattern
//
//  Created by Oleksandr Matrosov on 27/3/25.
//

import SwiftUI

enum FullScreenRoute: Identifiable, Hashable {
    case detailTask(Task)

    var id: String {
        switch self {
        case .detailTask: return "detailTask"
        }
    }
}
