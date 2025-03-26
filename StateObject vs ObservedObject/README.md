# 🧠 StateObject vs ObservedObject in SwiftUI

This example demonstrates how `@StateObject` and `@ObservedObject` behave differently in SwiftUI — especially when it comes to preserving state across view updates.

---

## ⚠️ The Problem

In SwiftUI, if you're not careful about **how you initialize and store your view models**, your app may **unexpectedly lose state** during view updates or re-renders.

### ❌ Common mistake:

Using `@ObservedObject` when the view itself creates the model:

```swift
struct MyView: View {
    @ObservedObject var viewModel = MyViewModel() // ⚠️ Risk of resetting state
}