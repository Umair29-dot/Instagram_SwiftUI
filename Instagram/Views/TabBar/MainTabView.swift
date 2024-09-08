//
//  MainTabView.swift
//  Instagram
//
//  Created by h on 30.08.2024.
//

import Foundation
import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            FeedView()
                .tabItem {
                    Image(systemName: "house")
                }
            
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
            
            Text("Post")
                .tabItem {
                    Image(systemName: "plus.square")
                }
            
            Text("Notifications")
                .tabItem {
                    Image(systemName: "heart")
                }
            
            CurrentUserProfileView()
                .tabItem {
                    Image(systemName: "person")
                }
        }//: TabView
        .accentColor(.black)
    }
}

#Preview {
    MainTabView()
}
