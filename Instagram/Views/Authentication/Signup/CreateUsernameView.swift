//
//  CreateUsernameView.swift
//  Instagram
//
//  Created by h on 2.09.2024.
//

import SwiftUI

struct CreateUsernameView: View {
    
    @State private var username: String = ""
    @State private var isNavigation: Bool = false
    
    var body: some View {
        
        CompSignup(
            value: $username,
            title: "Username",
            headline: "Create username",
            description: "Pick a username for new account. You can always change it later.",
            buttonTitle: "Next",
            onClick: {
                self.isNavigation = true
            }
        )
        .navigationDestination(isPresented: $isNavigation) {
            CreatePasswordView()
        }
        
    }
}

#Preview {
    CreateUsernameView()
}
