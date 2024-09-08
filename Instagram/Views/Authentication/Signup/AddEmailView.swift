//
//  AddEmailView.swift
//  Instagram
//
//  Created by h on 1.09.2024.
//

import SwiftUI

struct AddEmailView: View {
    
    @State private var email: String = ""
    @State private var isNavigation: Bool = false
    
    var body: some View {
        
        CompSignup(
            value: $email,
            title: "Email",
            headline: "Add your email",
            description: "You'll use this email to sign in to your account.",
            buttonTitle: "Next",
            onClick: {
                self.isNavigation = true
            }
        )
        .navigationDestination(isPresented: $isNavigation) {
            CreateUsernameView()
        }
    }
}

#Preview {
    AddEmailView()
}
