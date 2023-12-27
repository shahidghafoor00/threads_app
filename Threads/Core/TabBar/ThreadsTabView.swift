//
//  TabView.swift
//  Threads
//
//  Created by Shahid Ghafoor on 19/12/2023.
//

import SwiftUI

struct ThreadsTabView: View {
    
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: .constant(selectedTab),
                content:  {
            
            Text("Tab Content 1").tabItem {
                Image(systemName: selectedTab == 0 ? "house.fill" : "house").environment(\.symbolVariants, selectedTab == 0 ? .fill : .none)
            }.tag(1)
            
            
            Text("Tab Content 2").tabItem {
                Image(systemName: selectedTab == 0 ? "house.fill" : "house").environment(\.symbolVariants, selectedTab == 0 ? .fill : .none)
            }.tag(2)
        })
    }
}

#Preview {
    ThreadsTabView()
}
