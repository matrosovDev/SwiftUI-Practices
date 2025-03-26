//
//  ContentView.swift
//  StateObject vs ObservedObject
//
//  Created by Oleksandr Matrosov on 26/3/25.
//

import SwiftUI

struct ContentView: View {
    @State var randomNumber = 0
    var body: some View {
        VStack {
            Button("Get random number") {
                if let number = (0..<100).randomElement() {
                    randomNumber = number
                }
            }
            Text("Random number is: \(randomNumber)")
            Spacer().frame(height: 40)
            IncrementView()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
