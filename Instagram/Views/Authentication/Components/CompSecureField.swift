//
//  CustomSecureField.swift
//  Instagram
//
//  Created by h on 2.09.2024.
//

import SwiftUI

struct CompSecureField: View {
    
    @Binding var password: String
    
    var body: some View {
        
        SecureField("Password", text: $password)
            .padding(12)
            .background(Color(.systemGray6))
            .cornerRadius(10)
        
    }
}

#Preview {
    CompSecureField(password: .constant(""))
}
