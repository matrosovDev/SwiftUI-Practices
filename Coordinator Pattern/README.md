# 🧭 Coordinator Pattern in SwiftUI

This project demonstrates a lightweight and scalable implementation of the **Coordinator Pattern** in **SwiftUI**, managing navigation using routes (`NavigationRoute`, `SheetRoute`, and `FullScreenRoute`) and a centralized `AppCoordinator`.

## 📦 Features

- Modular navigation using enum-based routes
- Support for:
  - `NavigationStack` push/pop
  - `.sheet` presentation
  - `.fullScreenCover` presentation
- Centralized state management using `@StateObject` and `@EnvironmentObject`
- Clean separation of concerns (View, ViewModel, Coordinator)
- Easily extendable architecture for multiple screens/tabs


## 🧠 Key Concepts

### Coordinator

- Manages all navigation logic
- Holds `NavigationPath`, `sheet`, and `fullScreenCover`
- Exposes methods like `.push()`, `.pop()`, `.presentSheet()`, `.presentFullScreen()`, etc.

```swift
final class AppCoordinator: ObservableObject {
    @Published var path = NavigationPath()
    @Published var sheet: SheetRoute?
    @Published var fullScreenCover: FullScreenRoute?
    
    func push(_ route: NavigationRoute) { ... }
    func presentSheet(_ sheet: SheetRoute) { ... }
    func presentFullScreen(_ cover: FullScreenRoute) { ... }
}
Routes
NavigationRoute

Handles screen-to-screen navigation via NavigationStack.

enum NavigationRoute: Hashable, Identifiable {
    case tasksList
    case addTask
}

SheetRoute
Handles modal presentations via .sheet.

enum SheetRoute: Identifiable, Hashable {
    case info
}

FullScreenRoute
Handles full-screen modals via .fullScreenCover.

enum FullScreenRoute: Identifiable, Hashable {
    case detailTask(Task)
}

🧪 Example Flows

Tap on a task title → opens DetailTaskView as a full screen
Tap the ℹ️ icon → opens InfoView as a sheet
Tap "Add Task" → pushes AddTaskView via NavigationStack
🧼 Clean Architecture

Views are dumb — they react to state and trigger navigation
ViewModels manage state and logic (@Published, etc.)
Coordinator handles all transitions
Routes are typed, centralized, and safe
📲 Getting Started

Clone the repo
Open in Xcode (v15+ recommended)
Run on simulator or device
✅ Works out of the box. No external dependencies.

Built by Oleksandr Matrosov, 2025
Follow me on GitHub or connect for feedback and improvements!