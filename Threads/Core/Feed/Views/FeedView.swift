//
//  FeedView.swift
//  Threads
//
//  Created by Shahid Ghafoor on 23/01/2024.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                LazyVStack {
                    ForEach(1 ... 10, id: \.self) { threads in
                        ThreadCell()
                    }
                }
            }.refreshable {
                print("refresh")
            }
            .navigationTitle("Threads")
            .navigationBarTitleDisplayMode(.inline)
            
        }.toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button {
                    print("refresh list here")
                } label: {
                    Image(systemName: "arrow.counterclockwise")
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        FeedView()
    }
}
