//
//  NavigationRoute.swift
//  Coordinator Pattern
//
//  Created by Oleksandr Matrosov on 27/3/25.
//

import SwiftUI

enum NavigationRoute: Hashable, Identifiable {
    case tasksList
    case addTask

    var id: String {
        switch self {
        case .tasksList: return "tasksList"
        case .addTask: return "addTask"
        }
    }
}
