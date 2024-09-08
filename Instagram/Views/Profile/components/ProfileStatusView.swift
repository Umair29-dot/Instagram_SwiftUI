//
//  ProfileStatusView.swift
//  Instagram
//
//  Created by h on 30.08.2024.
//

import SwiftUI

struct ProfileStatusView: View {
    let number: Int
    let Title: String
    
    var body: some View {
        VStack {
            Text("\(number)")
                .font(.title2)
                .fontWeight(.semibold)
            
            Text(Title)
        }//: VSTACK
    }
}

#Preview {
    ProfileStatusView(
        number: 2,
        Title: "Post"
    )
}
