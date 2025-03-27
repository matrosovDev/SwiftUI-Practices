//
//  AppCoordinator.swift
//  Coordinator Pattern
//
//  Created by Oleksandr Matrosov on 27/3/25.
//

import SwiftUI

final class AppCoordinator: ObservableObject {
    // Naviagation stack
    @Published var path = NavigationPath()
    
    // Modal screens
    @Published var sheet: SheetRoute?
    @Published var fullScreenCover: FullScreenRoute?

    // MARK: - Navigation

    func push(_ route: NavigationRoute) {
        path.append(route)
    }

    func pop() {
        guard !path.isEmpty else { return }
        path.removeLast()
    }

    func popToRoot() {
        path.removeLast(path.count)
    }

    // MARK: - Sheet

    func presentSheet(_ sheet: SheetRoute) {
        self.sheet = sheet
    }

    func dismissSheet() {
        self.sheet = nil
    }

    // MARK: - FullScreen

    func presentFullScreen(_ cover: FullScreenRoute) {
        self.fullScreenCover = cover
    }

    func dismissFullScreen() {
        self.fullScreenCover = nil
    }
}
