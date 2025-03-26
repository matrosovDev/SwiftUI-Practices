//
//  ContentView.swift
//  Binding Overload
//
//  Created by Oleksandr Matrosov on 26/3/25.
//

import SwiftUI

struct ContentView: View {
    @State var text: String? = nil
    var body: some View {
        VStack {
            Text(text ?? "Unknown") // backward compatibility
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
