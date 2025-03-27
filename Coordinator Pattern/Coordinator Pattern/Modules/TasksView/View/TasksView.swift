//
//  TasksView.swift
//  Coordinator Pattern
//
//  Created by Oleksandr Matrosov on 27/3/25.
//

import SwiftUI

struct TasksView: View {
    @EnvironmentObject var coordinator: AppCoordinator
    @EnvironmentObject var taskViewModel: TaskViewModel

    var body: some View {
        VStack(spacing: 20) {
            Text("📋 Tasks").font(.largeTitle)

            List(taskViewModel.tasks) { task in
                HStack {
                    Text(task.title)

                    Spacer()

                    Button {
                        coordinator.presentSheet(.info)
                    } label: {
                        Image(systemName: "info.circle")
                            .imageScale(.medium)
                            .foregroundColor(.blue)
                    }
                    .buttonStyle(.plain) // чтобы не было фона
                }
                .contentShape(Rectangle()) // ⬅️ делает всю строку кликабельной
                .onTapGesture {
                    coordinator.presentFullScreen(.detailTask(task))
                }
            }

            Button("➕ Add Task") {
                coordinator.push(.addTask)
            }
        }
        .padding()
    }
}
