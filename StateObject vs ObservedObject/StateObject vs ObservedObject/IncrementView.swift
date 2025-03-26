//
//  CounterView.swift
//  StateObject vs ObservedObject
//
//  Created by Oleksandr Matrosov on 26/3/25.
//

import SwiftUI

struct IncrementView: View {
    // MARK: - Explanation @StateObject
    // Using @StateObject ensures that the viewModel is created **once**
    // and survives view reloads.
    //
    // If you change it to @ObservedObject, the viewModel will be re-initialized
    // every time the parent view (ContentView) is re-rendered,
    // which will reset the count back to 0.
    //
    // Try it yourself: replace @StateObject with @ObservedObject,
    // then press the **Get random number** button.
    // You'll see that the counter resets to 0 — this shows the difference in behavior.
    @StateObject var viewModel = IncrementViewDataModel()
    var body: some View {
        Button("Increment Counter") {
            viewModel.incrementCounter()
        }
        Text("Count is: \(viewModel.count)")
        Spacer().frame(height: 40)
        IncrementViewChild(viewModel: viewModel)
    }
}
