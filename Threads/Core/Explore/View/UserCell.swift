//
//  UserCell.swift
//  Threads
//
//  Created by Shahid Ghafoor on 27/01/2024.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack {
            CircularProfileImageView()
            
            VStack(alignment: .leading) {
                Text("someusername")
                    .font(.footnote)
                    .fontWeight(.semibold)
                
                Text("Some User")
                    .font(.footnote)
                    .fontWeight(.semibold)
            }
            
            Spacer()
            
            Text("Follow")
                .font(.subheadline)
                .fontWeight(.semibold)
                .frame(width: 100, height: 32)
                .overlay(
                    RoundedRectangle(cornerRadius: 10).stroke(Color(.systemGray4), lineWidth: 1))
            
        }
        .padding(.horizontal)
        
    }
}

#Preview {
    UserCell()
}
