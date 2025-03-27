//
//  Task.swift
//  Coordinator Pattern
//
//  Created by Oleksandr Matrosov on 27/3/25.
//

import SwiftUI

struct Task: Identifiable, Hashable {
    let id = UUID()
    let title: String
}
