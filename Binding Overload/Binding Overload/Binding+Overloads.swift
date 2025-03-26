//
//  Binding+Overloads.swift
//  Binding Overload
//
//  Created by Oleksandr Matrosov on 26/3/25.
//

import SwiftUI

// MARK: - Optional Binding Overload for ??
// In Xcode 15+, the ?? operator for Binding<Optional<T>>
// is supported out of the box. For backward compatibility, you can define it yourself:

/// Allows using `??` on `Binding<Optional<T>>` to provide a non-optional fallback.
/// Usage: `binding ?? defaultValue`
func ??<T>(lhs: Binding<Optional<T>>, rhs: T) -> Binding<T> {
    Binding(
        get: { lhs.wrappedValue ?? rhs },
        set: { lhs.wrappedValue = $0 }
    )
}
