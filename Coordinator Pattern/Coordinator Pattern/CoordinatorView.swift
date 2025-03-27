//
//  CoordinatorView.swift
//  Coordinator Pattern
//
//  Created by Oleksandr Matrosov on 27/3/25.
//

import SwiftUI

struct CoordinatorView: View {
    @StateObject private var coordinator = AppCoordinator()
    @StateObject private var taskViewModel = TaskViewModel()
    
    var body: some View {
        NavigationStack(path: $coordinator.path) {
            // MARK: - Initial Screen
            TasksView().environmentObject(taskViewModel)
            
                .navigationDestination(for: NavigationRoute.self) { route in
                    switch route {
                    case .tasksList:
                        TasksView().environmentObject(taskViewModel)
                    case .addTask:
                        AddTaskView().environmentObject(taskViewModel)
                    }
                }
            
            // MARK: - Sheet
                .sheet(item: $coordinator.sheet) { sheet in
                    switch sheet {
                    case .info:
                        InfoView()
                    }
                }
            
            // MARK: - FullScreenCover
                .fullScreenCover(item: $coordinator.fullScreenCover) { cover in
                    switch cover {
                    case .detailTask(let task):
                        DetailTaskView(task: task)
                    }
                }
        }
        .environmentObject(coordinator)
    }
}
