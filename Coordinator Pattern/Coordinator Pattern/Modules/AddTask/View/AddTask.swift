//
//  AddTask.swift
//  Coordinator Pattern
//
//  Created by Oleksandr Matrosov on 27/3/25.
//

import SwiftUI

struct AddTaskView: View {
    @EnvironmentObject var coordinator: AppCoordinator
    @EnvironmentObject var taskViewModel: TaskViewModel
    @State private var title: String = ""

    var body: some View {
        VStack(spacing: 20) {
            Text("New Task").font(.title)

            TextField("Name", text: $title)
                .textFieldStyle(.roundedBorder)
                .padding()

            Button("Save") {
                taskViewModel.addTask(title)
                coordinator.pop()
            }
        }
        .padding()
    }
}
