//
//  IncrementViewDataModel.swift
//  StateObject vs ObservedObject
//
//  Created by Oleksandr Matrosov on 26/3/25.
//

import SwiftUI

class IncrementViewDataModel: ObservableObject {
    @Published var count = 0
    func incrementCounter() {
        count += 1
    }
}
