//
//  CircularProfileImageView.swift
//  Threads
//
//  Created by Shahid Ghafoor on 27/01/2024.
//

import SwiftUI

struct CircularProfileImageView: View {
    
    var body: some View {
        Image(systemName: "circle.fill")
            .resizable()
            .scaledToFill()
            .frame(width: 40, height: 40)
            .clipShape(Circle())
    }
}

#Preview {
    CircularProfileImageView()
}
