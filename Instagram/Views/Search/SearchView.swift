//
//  SearchView.swift
//  Instagram
//
//  Created by h on 1.09.2024.
//

import SwiftUI

struct SearchView: View {
    
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 12) {
                    ForEach(User.MOCK_USERS) { user in
                        NavigationLink(value: user, label: {
                            SearchListItem(user: user)
                        })
                        .foregroundColor(.black)
                    }
                }
                .padding(.top, 7)
                .searchable(text: $searchText, prompt: "Search")
                
            }//: ScrollView
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
            .navigationDestination(for: User.self, destination: { user in
                ProfileView(user: user)
            })
            
        }//: NavigationStack
    }
}

#Preview {
    SearchView()
}
