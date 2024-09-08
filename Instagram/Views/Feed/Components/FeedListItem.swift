//
//  FeedListItem.swift
//  Instagram
//
//  Created by h on 31.08.2024.
//

import SwiftUI

struct FeedListItem: View {
    
    let post: Post
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                AsyncImage(url: URL(string: post.user?.profileImageUrl ?? "")) { phase in
                    if let image = phase.image {
                        image
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                    }
                }
                .frame(width: 50, height: 50)
                
                Text(post.user?.username ?? "")
                    .fontWeight(.semibold)
            }//: HStack
            .padding(.all, 5)
            
            AsyncImage(url: URL(string: post.imageUrl)) { phase in
                if let image = phase.image {
                    image
                        .resizable()
                        .scaledToFill()
                }
            }
            .frame(maxWidth: .infinity)
            .frame(height: 250)
            .clipped()
            
            HStack {
                ActionButton(icon: "heart")
                
                ActionButton(icon: "bubble.right")
                
                ActionButton(icon: "paperplane")
            }//: HStack
            .foregroundColor(.black)
            .padding(.all, 5)
            
            HStack {
                Text("\(post.likes)")
                    .fontWeight(.semibold)
                
                Text("likes")
                    .fontWeight(.semibold)
            }//HStack
            .padding(.horizontal, 5)
            
            HStack {
                Text(post.user?.username ?? "")
                    .fontWeight(.semibold)
                
                Text(post.caption)
            }
            .padding(.horizontal, 5)
            
            Text("\(post.timeStamp.timeIntervalSince1970) ago")
                .foregroundStyle(.gray)
                .padding(.horizontal, 5)
            
        }//: VStack
    }
}

#Preview {
    FeedListItem(
        post: Post.MOCK_POST[0]
    )
}
