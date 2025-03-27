//
//  DetailTaskView.swift
//  Coordinator Pattern
//
//  Created by Oleksandr Matrosov on 27/3/25.
//

import SwiftUI

struct DetailTaskView: View {
    @EnvironmentObject var coordinator: AppCoordinator
    let task: Task

    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Text("This is \(task.title) task")
            }
            .navigationTitle("\(task.title)")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Close") {
                        coordinator.dismissFullScreen()
                    }
                }
            }
        }
    }
}
