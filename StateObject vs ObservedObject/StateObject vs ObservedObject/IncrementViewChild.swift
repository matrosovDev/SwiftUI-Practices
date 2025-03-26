//
//  IncrementViewChild.swift
//  StateObject vs ObservedObject
//
//  Created by Oleksandr Matrosov on 26/3/25.
//

import SwiftUI

struct IncrementViewChild: View {
    // MARK: - Explanation @ObservedObject
    // You can pass the model down to a child view.
    // Since the model is already created and managed as a @StateObject in the parent,
    // the child only needs to observe it using @ObservedObject.
    @ObservedObject var viewModel: IncrementViewDataModel
    var body: some View {
        Button("Increment value in child") {
            viewModel.incrementCounter()
        }
    }
}
