//
//  ProfileView.swift
//  Instagram
//
//  Created by h on 30.08.2024.
//

import SwiftUI

struct CurrentUserProfileView: View {
    
    let photo = URL(string: "https://picsum.photos/256")
    let gridItems = [
        GridItem(.flexible(), spacing: 1),
        GridItem(.flexible(), spacing: 1),
        GridItem(.flexible(), spacing: 1),
    ]
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack(alignment: .center) {
                    VStack(alignment: .leading) {
                        AsyncImage(url: photo){ phase in
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
                            Text("Umair Nazim")
                                .font(.headline)
                                .fontWeight(.semibold)
                            
                            Text("Software Engineer")
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
                        ForEach(0 ... 15, id: \.self) { i in
                            AsyncImage(url: photo) { phase in
                                if let image = phase.image {
                                    image
                                        .resizable()
                                        .scaledToFit()
                                        .frame(height: 130)
                                    
                                }
                            }
                        }
                    }
                }//: ScrollView
            }//: VStack
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(
                    placement: .navigationBarTrailing,
                    content: {
                        Button(action: {
                            
                        }, label: {
                            Image(systemName: "line.3.horizontal")
                                .foregroundColor(.black)
                        })
                    }
                )
            }
            
        }//: Navigation
    }
}

#Preview {
    CurrentUserProfileView()
}
