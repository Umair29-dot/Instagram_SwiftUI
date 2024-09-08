//
//  LoginView.swift
//  Instagram
//
//  Created by h on 1.09.2024.
//

import SwiftUI

struct LoginView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                
                Image("insta_text")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200)
                
                VStack(spacing: 10) {
                    CompTextField(title: "Enter your email", value: $email)
                        .autocapitalization(.none)
                    
                    CompSecureField(password: $password)
                                
                    Spacer()
                        .frame(height: 7)
                    
                    Text("Forgot Password?")
                        .fontWeight(.semibold)
                        .foregroundColor(.blue)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                    
                    Spacer()
                        .frame(height: 5)
                    
                    Button(action: {
                        
                    }, label: {
                        Text("Log In")
                            .foregroundColor(.white)
                            .padding(12)
                            .frame(maxWidth: .infinity)
                            .background(Color.blue)
                            .cornerRadius(10)
                    })
                }
                
                Spacer()
                    .frame(height: 7)
                
                
                HStack {
                    Rectangle()
                        .frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 0.5)
                        .foregroundColor(.gray)
                    
                    Text("OR")
                    
                    Rectangle()
                        .frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 0.5)
                        .foregroundColor(.gray)
                    
                }//HStack
                .padding(.vertical, 20)
                
                HStack {
                    Image("facebook_logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40)
                        .clipped()
                    
                    Text("Continue with Facebook")
                        .foregroundColor(.blue)
                }//: HStack
                
                Spacer()
                
                Divider()
                
                NavigationLink(destination: {
                    AddEmailView()
                }, label: {
                    HStack(spacing: 3) {
                        Text("Don't have an account?")
                        
                        Text("Sign Up")
                            .fontWeight(.bold)
                    }
                })
                .padding(.vertical, 15)
            }//: VStack
            .padding(.horizontal)
        }//: NavigationStack
    }
}

#Preview {
    LoginView()
}
