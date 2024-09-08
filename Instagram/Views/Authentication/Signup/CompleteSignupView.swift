//
//  CompleteSignupView.swift
//  Instagram
//
//  Created by h on 2.09.2024.
//

import SwiftUI

struct CompleteSignupView: View {
    
    let userName: String
    
    var body: some View {
        VStack {
            
            Spacer()
            
            Text("Welcome to Instagram, \(userName)")
                .font(.title)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding(.bottom, 2)
            
            Text("Click below to complete registration and start using instagram.")
                .font(.subheadline)
                .multilineTextAlignment(.center)
                .padding(.bottom, 20)
            
            Button(action: {
                print("button clicked")
            }, label: {
                Text("Complete Sign Up")
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
    CompleteSignupView(userName: "Umair Nazim")
}
