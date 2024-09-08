//
//  CompSignup.swift
//  Instagram
//
//  Created by h on 2.09.2024.
//

import SwiftUI

struct CompSignup: View {
    
    @Binding var value: String
    let title: String
    let headline: String
    let description: String
    let buttonTitle: String
    var onClick: () -> Void = {}
 
    var body: some View {
        VStack {
            Text(headline)
                .font(.title)
                .fontWeight(.bold)
            
            Text(description)
                .font(.subheadline)
                .foregroundColor(Color(.systemGray))
            
            CompTextField(title: title, value: $value)
                .padding(.vertical)
            
            Button(action: {
                onClick()
            }, label: {
                Text(buttonTitle)
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
    CompSignup(
        value: .constant(""),
        title: "Email",
        headline: "Add your email",
        description: "You'll use this email to sign in to your account",
        buttonTitle: "Next"
    )
}
