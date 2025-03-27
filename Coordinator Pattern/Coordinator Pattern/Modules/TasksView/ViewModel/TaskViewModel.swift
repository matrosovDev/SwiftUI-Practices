//
//  TaskViewModel.swift
//  Coordinator Pattern
//
//  Created by Oleksandr Matrosov on 27/3/25.
//

import Foundation

class TaskViewModel: ObservableObject {
    @Published var tasks: [Task] = []

    func addTask(_ title: String) {
        guard !title.isEmpty else { return }
        tasks.append(Task(title: title))
    }
}
