//
//  CreatePasswordView.swift
//  Instagram
//
//  Created by h on 2.09.2024.
//

import SwiftUI

struct CreatePasswordView: View {
    
    @State private var password: String = ""
    
    var body: some View {
        VStack {
            Text("Create a password")
                .font(.title)
                .fontWeight(.bold)
            
            Text("Your password must be at least 6 characters in length.")
                .font(.subheadline)
                .multilineTextAlignment(.center)
                .foregroundColor(Color(.systemGray))
            
            SecureField("Password", text: $password)
                .padding(12)
                .background(Color(.systemGray6))
                .cornerRadius(10)
                .padding(.vertical)
            
            NavigationLink(destination: {
                CompleteSignupView(userName: "Umair Nazim")
            }, label: {
                Text("Next")
                    .foregroundColor(.white)
                    .padding(.vertical, 10)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(10)
            })
            
            Spacer()
        }//: VStack
        .padding()
    }
}

#Preview {
    CreatePasswordView()
}
