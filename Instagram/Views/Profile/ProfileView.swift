//
//  ProfileView.swift
//  Instagram
//
//  Created by h on 3.09.2024.
//

import SwiftUI

struct ProfileView: View {
    
    let user: User
    
    let gridItems = [
        GridItem(.flexible(), spacing: 1),
        GridItem(.flexible(), spacing: 1),
        GridItem(.flexible(), spacing: 1),
    ]
    
    var posts: [Post] {
        return Post.MOCK_POST.filter({ $0.user?.username == user.username})
    }
    
    var body: some View {
        VStack {
            HStack(alignment: .center) {
                VStack(alignment: .leading) {
                    AsyncImage(url: URL(string: user.profileImageUrl ?? "")){ phase in
                        if let image = phase.image {
                            image
                                .resizable()
                                .scaledToFit()
                                .clipShape(Circle())
                            
                        } else if phase.error != nil {
                            Image(systemName: "questionmark.diamond")
                                .resizable()
                                .scaledToFit()
                                .background(Color.gray)
                                .clipShape(Circle())
                            
                        } else {
                            ProgressView()
                        }
                    }
                    .frame(width: 90, height: 90, alignment: .leading)
                    .clipped()
                    
                    VStack(alignment: .leading, spacing: 3) {
                        Text(user.username)
                            .font(.headline)
                            .fontWeight(.semibold)
                        
                        Text(user.bio ?? "")
                            .font(.footnote)
                    }//: VSTACK
                }//: VSTACK
                .frame(width: 110)
                
                HStack(spacing: 30) {
                    ProfileStatusView(number: 3, Title: "Post")
                    
                    ProfileStatusView(number: 10, Title: "Followers")
                    
                    ProfileStatusView(number: 50, Title: "Following")
                }
                .padding(.bottom, 50)
                
            }//: HSTACK
            
            Button(action: {
                
            }, label: {
                Text("Edit Profile")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity)
                    .frame(height: 32)
                    .foregroundColor(.black)
                    .overlay {
                        RoundedRectangle(cornerRadius: 6)
                            .stroke(Color.gray, lineWidth: 1)
                    }
                    .padding(15)
            })
            
            Divider()
            
            Spacer()
                .frame(height: 20)
            
            ScrollView {
                LazyVGrid(columns: gridItems, spacing: 1){
                    ForEach(posts) { post in
                        VStack {
                            AsyncImage(url: URL(string: post.imageUrl)) { phase in
                                if let image = phase.image {
                                    image
                                        .resizable()
                                        .scaledToFit()
                                        .frame(height: 130)
                                    
                                }
                                
                                Text("")
                                    .hidden()
                            }
                            
                        }
                    }
                }
            }//: ScrollView
        }//: VStack
        .navigationTitle("Profile")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    ProfileView(
        user: User.MOCK_USERS[0]
    )
}
