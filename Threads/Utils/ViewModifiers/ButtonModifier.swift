//
//  ButtonModifiers.swift
//  Threads
//
//  Created by Shahid Ghafoor on 22/01/2024.
//

import SwiftUI

struct ButtonModifiers: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .fontWeight(.semibold)
            .foregroundStyle(.white)
            .frame(width: 352, height: 44)
            .background(.black)
            .clipShape(.capsule)
    }
    
}
