//
//  ButtonModifiers.swift
//  Threads
//
//  Created by Shahid Ghafoor on 22/01/2024.
//

import SwiftUI

struct ButtonModifier: ViewModifier {
    @Environment(\.colorScheme) var colorScheme
    
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .fontWeight(.semibold)
            .foregroundStyle(Color(.systemBackground))
            .frame(width: 352, height: 44)
            .background(colorScheme == .dark ? .white : .black)
            .clipShape(.capsule)
    }
    
}
