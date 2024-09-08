//
//  FeedView.swift
//  Instagram
//
//  Created by h on 31.08.2024.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 20) {
                    ForEach(Post.MOCK_POST) { post in
                        FeedListItem(post: post)
                    }
                }//: LazyVStack
            }//: ScrollView
            .navigationTitle("Feed")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(
                    placement: .navigationBarTrailing,
                    content: {
                        Image(systemName: "paperplane")
                            .imageScale(.large)
                    }
                )
                
                ToolbarItem(
                    placement: .navigationBarLeading,
                    content: {
                        Image("insta_text")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100)
                    }
                )

            }
            
        }//: NavigationStack
    }
}

#Preview {
    FeedView()
}
