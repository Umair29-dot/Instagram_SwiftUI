//
//  SearchListItem.swift
//  Instagram
//
//  Created by h on 1.09.2024.
//

import SwiftUI

struct SearchListItem: View {
    
    let user: User
    
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: user.profileImageUrl ?? "")) { phase in
                if let image = phase.image {
                    image
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                }
            }
            .frame(width: 60, height: 60)
            .clipped()
            
            VStack(alignment: .leading) {
                Text(user.username)
                    .fontWeight(.semibold)
                
                Text(user.fullname ?? "")
                    .font(.footnote)
            }//: VStack
            
            Spacer()

        }//: HStack
        .padding(.horizontal)
    }
}

#Preview {
    SearchListItem(
        user: User(id: UUID().uuidString, username: "Umair", profileImageUrl: "https://picsum.photos/256", fullname: "Umair Nazim", bio: "Junior Software Engineer", email: "umair@gmail.com")
    )
}
