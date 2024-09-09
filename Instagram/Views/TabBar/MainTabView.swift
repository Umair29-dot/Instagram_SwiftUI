//
//  MainTabView.swift
//  Instagram
//
//  Created by h on 30.08.2024.
//

import Foundation
import SwiftUI

struct MainTabView: View {
    
    @State private var selectedTabIndex: Int = 0
    
    var body: some View {
        TabView(selection: $selectedTabIndex) {
            FeedView()
                .onAppear {
                    self.selectedTabIndex = 0
                }
                .tabItem {
                    Image(systemName: "house")
                }
                .tag(0)
            
            SearchView()
                .onAppear {
                    self.selectedTabIndex = 1
                }
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
                .tag(1)
            
            UploadPostView(selectedTabIndex: $selectedTabIndex)
                .onAppear {
                    self.selectedTabIndex = 2
                }
                .tabItem {
                    Image(systemName: "plus.square")
                }
                .tag(2)
            
            Text("Notifications")
                .onAppear {
                    self.selectedTabIndex = 3
                }
                .tabItem {
                    Image(systemName: "heart")
                }
                .tag(3)
            
            CurrentUserProfileView()
                .onAppear {
                    self.selectedTabIndex = 4
                }
                .tabItem {
                    Image(systemName: "person")
                }
                .tag(4)
        }//: TabView
        .accentColor(.black)
    }
}

#Preview {
    MainTabView()
}
